
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fluxtube/domain/core/failure/main_failure.dart';
import 'package:fluxtube/domain/home/home_services.dart';
import 'package:fluxtube/domain/subscribes/models/subscribe.dart';
import 'package:fluxtube/domain/trending/models/trending_resp.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_end_points.dart';

@LazySingleton(as: HomeServices)
class HomeImpliment extends HomeServices {
  @override
  Future<Either<MainFailure, List<TrendingResp>>> getHomeFeedData(
      {required List<Subscribe> channels}) async {
    try {
      final subscribedChannelIds =
          channels.map((channel) => channel.id.toString()).toList();
      final String idsAsString = subscribedChannelIds.join(",");
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.feed + idsAsString);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<TrendingResp> result = (response.data as List)
            .map((e) => TrendingResp.fromJson(e))
            .toList();

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}