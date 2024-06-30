import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluxtube/domain/core/failure/main_failure.dart';
import 'package:fluxtube/domain/watch/models/comments/comments_resp.dart';
import 'package:fluxtube/domain/watch/watch_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/watch/models/video/watch_resp.dart';

part 'watch_event.dart';
part 'watch_state.dart';
part 'watch_bloc.freezed.dart';

@injectable
class WatchBloc extends Bloc<WatchEvent, WatchState> {
  WatchBloc(
    WatchService watchService,
  ) : super(WatchState.initialize()) {
    on<GetWatchInfo>(
      (event, emit) async {
        emit(state.copyWith(
            isLoading: true,
            isWatchInfoError: false,
            initialVideoPause: true,
            isTapComments: false,
            isDescriptionTapped: false));

        //get stream info data
        final result = await watchService.getVideoData(id: event.id);

        final _state = result.fold(
            (MainFailure failure) => state.copyWith(
                  isWatchInfoError: true,
                  isLoading: false,
                ),
            (WatchResp resp) => state.copyWith(
                watchResp: resp, isLoading: false, oldId: event.id));
        //update to ui
        emit(_state);
      },
    );
    //toggle comments
    on<GetCommentData>((event, emit) async {
      //initialte loading, and toggle comments
      emit(state.copyWith(
          isCommentsLoading: true, isTapComments: !state.isTapComments));

      //get comments list

      if (state.isTapComments == true) {
        final _result = await watchService.getCommentsData(id: event.id);

        final _state = _result.fold(
            (MainFailure failure) =>
                state.copyWith(isCommentError: true, isCommentsLoading: false),
            (CommentsResp resp) => state.copyWith(
                isCommentError: false,
                isCommentsLoading: false,
                comments: resp));

        //update to ui
        emit(_state);
      } else {
        emit(state.copyWith(isCommentsLoading: false));
      }
    });

    //toggle description
    on<TapDescription>((event, emit) async {
      //toggle desctiption update to ui
      emit(state.copyWith(
          isDescriptionTapped: !state.isDescriptionTapped,
          isTapComments: false));
    });

    // comment replies

    on<GetCommentRepliesData>((event, emit) async {
      //initialte loading, and toggle comments
      emit(state.copyWith(isCommentRepliesLoading: true));

      //get reply comments list

      final _result = await watchService.getCommentRepliesData(
          id: event.id, repliesPage: event.nextPage);

      final _state = _result.fold(
          (MainFailure failure) => state.copyWith(
              isCommentRepliesError: true, isCommentRepliesLoading: false),
          (CommentsResp resp) => state.copyWith(
              isCommentRepliesError: false,
              isCommentRepliesLoading: false,
              commentReplies: resp));

      //update to ui
      emit(_state);
    });
  }
}