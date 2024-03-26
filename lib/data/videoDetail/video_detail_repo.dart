import 'package:dartz/dartz.dart';
import 'package:ondemand/core/exceptions.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/data/auth/models/subscription_model.dart';
import 'package:ondemand/data/videoDetail/models/add_comments_model.dart';
import 'package:ondemand/data/videoDetail/models/comments_model.dart';
import 'package:ondemand/data/videoDetail/models/recommended_video.dart';
import 'package:ondemand/data/videoDetail/models/video_detail_model.dart';

abstract class VideoRepo {
  Future<Either<ApiException, List<VideoDetailResponse>>> getVideoDetails(
      String id);
  Future<Either<ApiException, List<RecomendedVideoResponse>>>
      getRecommendedVideo(RecomendedVideoRequest recomendedVideoRequest);
  Future<Either<ApiException, CommentsResponse>> getComments(String videoId);
  Future<Either<ApiException, AddCommentsResponse>> addComments(
      AddCommentsRequest addCommentsRequest);
}
