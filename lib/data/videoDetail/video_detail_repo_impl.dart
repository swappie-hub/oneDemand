import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ondemand/core/api_client.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/core/exceptions.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/data/auth/models/subscription_model.dart';
import 'package:ondemand/data/videoDetail/models/add_comments_model.dart';
import 'package:ondemand/data/videoDetail/models/comments_model.dart';
import 'package:ondemand/data/videoDetail/models/recommended_video.dart';
import 'package:ondemand/data/videoDetail/models/video_detail_model.dart';
import 'package:ondemand/data/videoDetail/video_detail_repo.dart';
import 'package:ondemand/utils/logger.dart';

class VideoDetailRepoImpl implements VideoRepo {
  final ApiClient _apiClient;

  VideoDetailRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, List<VideoDetailResponse>>> getVideoDetails(
      String id) async {
    try {
      final response = await _apiClient.get(
        sendCookies: true,
        "${AppConstants.baseUrl}/playerpage/video?query=${id}",
      );

      return Right(videoDetailResponseFromJson(jsonEncode(response.data)));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, List<RecomendedVideoResponse>>>
      getRecommendedVideo(RecomendedVideoRequest recomendedVideoRequest) async {
    try {
      final response = await _apiClient.post(
          "${AppConstants.baseUrl}/fetch/videos/data",
          recomendedVideoRequestToJson(recomendedVideoRequest),
          sendCookies: true);

      return Right(recomendedVideoResponseFromJson(jsonEncode(response.data)));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CommentsResponse>> getComments(
      String videoId) async {
    try {
      final response = await _apiClient.get(
          "${AppConstants.baseUrl}/comments?videoID=$videoId",
          sendCookies: true);

      return Right(CommentsResponse.fromJson(response.data));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AddCommentsResponse>> addComments(
      AddCommentsRequest addCommentsRequest) async {
    try {
      final response = await _apiClient.post("${AppConstants.baseUrl}/comments",
          addCommentsRequestToJson(addCommentsRequest),
          sendCookies: true);

      return Right(AddCommentsResponse.fromJson(response.data));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }
}
