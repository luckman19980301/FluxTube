part of 'watch_bloc.dart';

@freezed
class WatchEvent with _$WatchEvent {
  factory WatchEvent.getWatchInfo({
    required String id,
  }) = GetWatchInfo;

  factory WatchEvent.getCommentData({
    required String id,
  }) = GetCommentData;

  factory WatchEvent.getCommentRepliesData({
    required String id,
    required String nextPage,
  }) = GetCommentRepliesData;

  factory WatchEvent.getMoreCommentsData({
    required String id,
    required String? nextPage,
  }) = GetMoreCommentsData;

  factory WatchEvent.getMoreReplyCommentsData({
    required String id,
    required String? nextPage,
  }) = GetMoreReplyCommentsData;

  factory WatchEvent.getSubtitles({
    required String id,
  }) = GetSubtitles;

  factory WatchEvent.tapDescription() = TapDescription;
  
  factory WatchEvent.togglePip({required bool value}) = TogglePip;

  factory WatchEvent.assignTitle({required String title}) = AssignTitle;
}
