import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/data/auth/models/subscription_model.dart';
import 'package:ondemand/data/videoDetail/models/add_comments_model.dart';
import 'package:ondemand/data/videoDetail/models/comments_model.dart';
import 'package:ondemand/data/videoDetail/models/recommended_video.dart';
import 'package:ondemand/data/videoDetail/models/video_detail_model.dart';
import 'package:ondemand/data/videoDetail/video_detail_repo.dart';
import 'package:ondemand/domain/providers/repository_provider.dart';
import 'package:ondemand/helpers/base_screen_view.dart';
import 'package:ondemand/helpers/base_view_model.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/utils/utils.dart';

final videoPageViewModel = ChangeNotifierProvider.autoDispose(
  (ref) => VideoPageViewModel(
    ref.read(videoDetailRepositoryProvider),
  ),
);

class VideoPageViewModel extends BaseViewModel<BaseScreenView> {
  // final UserDetailService _userDetailService = getIt<UserDetailService>();

  VideoPageViewModel(
    this._videoRepo,
  );
  final VideoRepo _videoRepo;
  List<String> tags = [];
  List<VideoDetailResponse>? _videoDetailResponse;
  List<VideoDetailResponse>? get videoDetailResponse => _videoDetailResponse;
  CommentsResponse? _commentsResponse;
  CommentsResponse? get commentsResponse => _commentsResponse;
  List<RecomendedVideoResponse>? _recommendedVideoResponse;
  List<RecomendedVideoResponse>? get recommendedVideoResponse =>
      _recommendedVideoResponse;
  Future<void> getVideoDetails(String id) async {
    toggleLoading();
    await _videoRepo.getVideoDetails(id).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            _videoDetailResponse = r;
            if (_videoDetailResponse!.first.tagsDetails != null) {
              for (var i = 0;
                  i < _videoDetailResponse!.first.tagsDetails!.length;
                  i++) {
                tags.add(_videoDetailResponse!.first.tagsDetails![i].id ?? "");
              }
              await getRecommendedVideo(RecomendedVideoRequest(tags: tags));
            }

            print(_videoDetailResponse);
            print(_videoDetailResponse?.first.videolink ?? "");

            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.bottomNavigationView);
            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> getRecommendedVideo(
      RecomendedVideoRequest recomendedVideoRequest) async {
    toggleLoading();
    await _videoRepo.getRecommendedVideo(recomendedVideoRequest).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            _recommendedVideoResponse = r;

            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.bottomNavigationView);
            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> getComments(String videoId) async {
    toggleLoading();
    await _videoRepo.getComments(videoId).then(
          (value) => value.fold((l) {
            // view!.showSnackbar(l.message);
          }, (r) async {
            _commentsResponse = r;

            Logger.write("these are comments" + r.toString());
            // view!.navigateToScreen(AppRoute.bottomNavigationView);
            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> addComments(
      AddCommentsRequest addCommentsRequest, BuildContext context) async {
    toggleLoading();
    await _videoRepo.addComments(addCommentsRequest).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            // _commentsResponse = r;

            if (r.success == true) {
              context.pop();
              final snackBar = SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.black,
                content: Text("Comment is now pending approval from admin"),
                action: SnackBarAction(
                  label: 'Close',
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    // Some code to undo the change.
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              // TODO: implement showSnackbar
            }

            Logger.write("these are comments" + r.toString());
            // view!.navigateToScreen(AppRoute.bottomNavigationView);
            notifyListeners();
          }),
        );
    toggleLoading();
  }
}
