import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/data/auth/models/subscription_model.dart';
import 'package:ondemand/data/home/home_repo.dart';
import 'package:ondemand/data/home/models/add_playlist_model.dart';
import 'package:ondemand/data/home/models/get_playlist_model.dart';
import 'package:ondemand/data/videoDetail/models/add_comments_model.dart';
import 'package:ondemand/data/videoDetail/models/comments_model.dart';
import 'package:ondemand/data/videoDetail/models/recommended_video.dart';
import 'package:ondemand/data/videoDetail/models/video_detail_model.dart';
import 'package:ondemand/data/videoDetail/video_detail_repo.dart';
import 'package:ondemand/domain/providers/repository_provider.dart';
import 'package:ondemand/helpers/base_screen_view.dart';
import 'package:ondemand/data/home/models/add_playlist_model.dart' as add;

import 'package:ondemand/helpers/base_view_model.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/utils/utils.dart';

final videoPageViewModel = ChangeNotifierProvider.autoDispose(
  (ref) => VideoPageViewModel(
    ref.read(videoDetailRepositoryProvider),
    ref.read(homeRepositoryProvider),
  ),
);

class VideoPageViewModel extends BaseViewModel<BaseScreenView> {
  // final UserDetailService _userDetailService = getIt<UserDetailService>();

  VideoPageViewModel(
    this._videoRepo,
    this._homeRepo,
  );
  final VideoRepo _videoRepo;
  final HomeRepo _homeRepo;
  List<GetAllPlaylistResponse> selectedPlayList = [];
  List<GetAllPlaylistResponse>? _getAllPlaylistResponse;
  List<GetAllPlaylistResponse>? get getAllPlaylistResponse =>
      _getAllPlaylistResponse;
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

  Future<void> addVideoToPlaylistHome(
      String videoId, BuildContext context) async {
    List<MyArray> listData = [];
    for (int i = 0; i < selectedPlayList.length; i++) {
      await getVideoDetails(videoId);
      List<add.CategoryDetail> newCat = [];

      int? catLength = _videoDetailResponse?.first.categoryDetails?.length ?? 0;
      for (int j = 0; j < catLength; j++) {
        // Note the change from i to j to avoid confusion with outer loop
        newCat.add(add.CategoryDetail(
          id: _videoDetailResponse!.first.categoryDetails![j].id,
          name: _videoDetailResponse!.first.categoryDetails![j].name,
          v: _videoDetailResponse!.first.categoryDetails![j].v,
        ));
      }
      print("this is newCat" + newCat.toString());

      List<add.Tag> newTag = [];

      int? tagLength = _videoDetailResponse?.first.tags?.length ?? 0;
      for (int j = 0; j < tagLength; j++) {
        newTag.add(add.Tag(
          id: _videoDetailResponse!
              .first.tags![j].id, // This might need correcting
          referalId: _videoDetailResponse!
              .first.tags![j].referalId, // This might need correcting
        ));
      }
      print("this is newTags" + newTag.toString());

      List<add.TagsDetail> tagDetails = [];

      int? tagDetailLength =
          _videoDetailResponse?.first.tagsDetails?.length ?? 0;
      for (int j = 0; j < tagDetailLength; j++) {
        tagDetails.add(add.TagsDetail(
          id: _videoDetailResponse!.first.tagsDetails![j].id,
          name: _videoDetailResponse!.first.tagsDetails![j].name,
          color: _videoDetailResponse!.first.tagsDetails![j]
              .color, // Ensure this is what you intend to do
          priority: _videoDetailResponse!.first.tagsDetails![j].priority,
          v: _videoDetailResponse!.first.tagsDetails![j].v,
        ));
      }
      print("this is tagDetails" + tagDetails.toString());

      listData.add(MyArray(
          name: selectedPlayList[i].label,
          objectId: selectedPlayList[i].value,
          videoObject: VideoObject(
              categoryDetails: newCat,
              tagsDetails: tagDetails,
              tags: newTag,
              releaseDateTime: _videoDetailResponse?.first.releaseDateTime,
              title: _videoDetailResponse?.first.title ?? "",
              savedvideo: _videoDetailResponse?.first.savedvideo ?? false,
              vId: _videoDetailResponse?.first.vId ?? "",
              videoId: _videoDetailResponse?.first.videoId ?? "",
              thumnailLink: _videoDetailResponse?.first.thumnailLink ?? "",
              duration: _videoDetailResponse?.first.duration ?? 100,
              videolink: _videoDetailResponse?.first.videolink,
              description: _videoDetailResponse?.first.description ?? "")));
    }
    await _homeRepo.addToPlaylist(AddPlaylistRequest(myArray: listData)).then(
          (value) => value.fold((l) {}, (r) async {
            // _homeVideoResponse = r;
            // personalPlaylist.clear();
            // _featurePlaylistResponse = r;
            // allPlaylistList
            //     .addAll(_featurePlaylistResponse?.existingVideos ?? []);
            context.pop();
            Logger.write("this is personal" + r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
  }

  Future<void> getPlaylistList() async {
    toggleLoading();
    await _homeRepo.getPlaylistList().then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            _getAllPlaylistResponse = r;
            // searchList.clear();
            // _searchListResponse = r;
            // searchList.addAll(_searchListResponse?.videos ?? []);
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

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
