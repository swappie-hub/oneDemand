import 'package:flutter/cupertino.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/home/home_repo.dart';
import 'package:ondemand/data/home/models/add_playlist_model.dart';
import 'package:ondemand/data/home/models/feature_playlist_model.dart';
import 'package:ondemand/data/home/models/get_playlist_model.dart';
import 'package:ondemand/data/home/models/home_model.dart' as home;
import 'package:ondemand/data/home/models/library_list_model.dart' as lib;
import 'package:ondemand/data/home/models/library_list_model.dart';
import 'package:ondemand/data/home/models/saved_videos_model.dart';
import 'package:ondemand/data/home/models/search_video_models.dart' as search;
import 'package:ondemand/data/home/models/home_model.dart' as home;
import 'package:ondemand/data/videoDetail/models/video_detail_model.dart';
import 'package:ondemand/data/videoDetail/video_detail_repo.dart';
import 'package:ondemand/domain/providers/repository_provider.dart';
import 'package:ondemand/helpers/base_view_model.dart';
import 'package:ondemand/data/home/models/add_playlist_model.dart' as add;
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/data/videoDetail/models/video_detail_model.dart'
    as details;

final bottomNavigationViewModel = ChangeNotifierProvider.autoDispose(
  (ref) => BottomNavigationViewModel(
    ref.read(homeRepositoryProvider),
    ref.read(videoDetailRepositoryProvider),
  ),
);

class BottomNavigationViewModel extends BaseViewModel<BaseScreenView> {
  // final UserDetailService _userDetailService = getIt<UserDetailService>();

  final HomeRepo _homeRepo;
  List<home.HomeVideoResponse>? _homeVideoResponse;
  List<home.HomeVideoResponse>? get homeVideoResponse => _homeVideoResponse;
  SavedVideosResponse? _savedVideosResponse;
  SavedVideosResponse? get savedVideosResponse => _savedVideosResponse;
  FeaturePlaylistResponse? _featurePlaylistResponse;
  FeaturePlaylistResponse? get featurePlaylistResponse =>
      _featurePlaylistResponse;
  lib.LibraryListResponse? _libraryListResponse;
  lib.LibraryListResponse? get libraryListResponse => _libraryListResponse;
  search.SearchListResponse? _searchListResponse;
  search.SearchListResponse? get searchListResponse => _searchListResponse;

  List<GetAllPlaylistResponse>? _getAllPlaylistResponse;
  List<GetAllPlaylistResponse>? get getAllPlaylistResponse =>
      _getAllPlaylistResponse;
  List<lib.Video> libraryList = [];
  List<String> tags = [];
  bool isPlaylistLoading = false;

  List<SavesVideosDatum> savedList = [];
  List<ExistingVideo> featuredList = [];
  List<ExistingVideo> allPlaylistList = [];
  List<ExistingVideo> personalPlaylist = [];
  List<search.Video> searchList = [];
  List<GetAllPlaylistResponse> selectedPlayList = [];
  final VideoRepo _videoRepo;
  List<String> durations = [];
  List<String> focus = [];
  List<String> strength = [];
  List<VideoDetailResponse>? _videoDetailResponse;
  List<VideoDetailResponse>? get videoDetailResponse => _videoDetailResponse;
  String? _sortby;
  String? get sortBy => _sortby;
  List<home.Video>? videos = [];
  BottomNavigationViewModel(
    this._homeRepo,
    this._videoRepo,
  );
  Future<void> getHomeView({bool isAll = false, bool isReccent = false}) async {
    toggleLoading();
    await _homeRepo.getHomeView().then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            videos?.clear();
            _homeVideoResponse = r;
            if (isAll) {
              videos?.addAll(_homeVideoResponse?[0].videos ?? []);
              videos?.addAll(_homeVideoResponse?[1].videos ?? []);
            } else if (isReccent) {
              videos?.addAll(_homeVideoResponse?[1].videos ?? []);
            } else {
              videos?.addAll(_homeVideoResponse?[0].videos ?? []);
            }
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
    toggleLoading();
  }

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

  void setSortBy(String sort, int value, BuildContext context) async {
    _sortby = sort;
    setVideoList(value);
    context.pop();
    notifyListeners();
  }

  Future<void> saveVideo(String id) async {
    await _homeRepo.saveVideo(id).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            // _homeVideoResponse = r;

            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
  }

  Future<void> fetchSavedVideos(SavedVideosRequest savedVideosRequest) async {
    await _homeRepo.fetchSavedVideos(savedVideosRequest).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            // _homeVideoResponse = r;
            savedList.clear();
            _savedVideosResponse = r;
            savedList.addAll(_savedVideosResponse?.savesVideosData ?? []);
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
  }

  Future<void> featuredPlaylist() async {
    toggleLoading();
    await _homeRepo.featuredPlaylist().then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            // _homeVideoResponse = r;
            featuredList.clear();
            _featurePlaylistResponse = r;
            featuredList.addAll(_featurePlaylistResponse?.existingVideos ?? []);
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> allPlaylist() async {
    await addFeatureToAll();
    await addpersonalToAll();
  }

  Future<void> addFeatureToAll() async {
    await _homeRepo.featuredPlaylist().then(
          (value) => value.fold((l) {}, (r) async {
            // _homeVideoResponse = r;
            allPlaylistList.clear();
            _featurePlaylistResponse = r;
            allPlaylistList
                .addAll(_featurePlaylistResponse?.existingVideos ?? []);
            Logger.write("this is featured" + r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
  }

  Future<void> addpersonalToAll() async {
    await _homeRepo
        .personalPlaylist(PersonalPlaylistRequest(userId: AppConstants.userId))
        .then(
          (value) => value.fold((l) {}, (r) async {
            // _homeVideoResponse = r;
            // personalPlaylist.clear();
            _featurePlaylistResponse = r;
            allPlaylistList
                .addAll(_featurePlaylistResponse?.existingVideos ?? []);
            Logger.write("this is personal" + r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
  }

  Future<void> addVideoToPlaylist(
      lib.Video? video, BuildContext context) async {
    List<MyArray> listData = [];
    for (int i = 0; i < selectedPlayList.length; i++) {
      await getVideoDetails(video?.id ?? "");
      List<add.CategoryDetail> newCat = [];
      if (_videoDetailResponse?.first.categoryDetails?.length != 0) {
        int? length = _videoDetailResponse?.first.categoryDetails!.length;
        for (int i = 0; i <= length!; i++) {
          newCat.add(add.CategoryDetail(
              id: _videoDetailResponse?.first.categoryDetails?[i].id,
              name: _videoDetailResponse?.first.categoryDetails?[i].name,
              v: _videoDetailResponse?.first.categoryDetails?[i].v));
        }
      }
      List<add.Tag> newTag = [];
      if (_videoDetailResponse?.first.tags?.length != 0) {
        int? length = _videoDetailResponse?.first.tags!.length;
        for (int i = 0; i <= length!; i++) {
          newTag.add(add.Tag(
            id: _videoDetailResponse?.first.categoryDetails?[i].id,
            referalId: _videoDetailResponse?.first.categoryDetails?[i].name,
          ));
        }
      }
      List<add.TagsDetail> tagDetails = [];
      if (_videoDetailResponse?.first.tagsDetails?.length != 0) {
        int? length = _videoDetailResponse?.first.tagsDetails!.length;
        for (int i = 0; i <= length!; i++) {
          tagDetails.add(add.TagsDetail(
            id: _videoDetailResponse?.first.tagsDetails?[i].id,
            name: _videoDetailResponse?.first.tagsDetails?[i].name,
            color: _videoDetailResponse?.first.tagsDetails?[i].name,
            priority: _videoDetailResponse?.first.tagsDetails?[i].priority,
            v: _videoDetailResponse?.first.tagsDetails?[i].v,
          ));
        }
      }

      listData.add(MyArray(
          name: selectedPlayList[i].label,
          objectId: selectedPlayList[i].value,
          videoObject: VideoObject().copyWith(
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

  Future<void> addVideoToPlaylistHome(
      home.Video? video, BuildContext context) async {
    List<MyArray> listData = [];
    try {
      for (int i = 0; i < selectedPlayList.length; i++) {
        await getVideoDetails(video?.id ?? "");
        List<add.CategoryDetail> newCat = [];
        if (_videoDetailResponse?.first.categoryDetails?.length != 0) {
          int? length = _videoDetailResponse?.first.categoryDetails!.length;
          for (int i = 0; i <= length!; i++) {
            newCat.insert(
                i,
                add.CategoryDetail(
                    id: _videoDetailResponse?.first.categoryDetails?[i].id,
                    name: _videoDetailResponse?.first.categoryDetails?[i].name,
                    v: _videoDetailResponse?.first.categoryDetails?[i].v));
          }
        }
        List<add.Tag> newTag = [];
        if (_videoDetailResponse?.first.tags?.length != 0) {
          int? length = _videoDetailResponse?.first.tags!.length;
          for (int i = 0; i <= length!; i++) {
            newTag.insert(
                i,
                add.Tag(
                  id: _videoDetailResponse?.first.categoryDetails?[i].id,
                  referalId:
                      _videoDetailResponse?.first.categoryDetails?[i].name,
                ));
          }
        }
        List<add.TagsDetail> tagDetails = [];
        if (_videoDetailResponse?.first.tagsDetails?.length != 0) {
          int? length = _videoDetailResponse?.first.tagsDetails!.length;
          for (int i = 0; i <= length!; i++) {
            tagDetails.insert(
                i,
                add.TagsDetail(
                  id: _videoDetailResponse?.first.tagsDetails?[i].id,
                  name: _videoDetailResponse?.first.tagsDetails?[i].name,
                  color: _videoDetailResponse?.first.tagsDetails?[i].name,
                  priority:
                      _videoDetailResponse?.first.tagsDetails?[i].priority,
                  v: _videoDetailResponse?.first.tagsDetails?[i].v,
                ));
          }
        }

        listData.add(MyArray(
            name: selectedPlayList[i].label,
            objectId: selectedPlayList[i].value,
            videoObject: VideoObject().copyWith(
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
    } catch (e) {
      print("this is error" + e.toString());
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

  Future<void> getpersonalPlaylist() async {
    toggleLoading();

    await _homeRepo
        .personalPlaylist(PersonalPlaylistRequest(userId: AppConstants.userId))
        .then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            // _homeVideoResponse = r;
            personalPlaylist.clear();
            _featurePlaylistResponse = r;
            personalPlaylist
                .addAll(_featurePlaylistResponse?.existingVideos ?? []);
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> unSaveVideo(String id) async {
    await _homeRepo.unsaveVideo(id).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            // _homeVideoResponse = r;

            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
  }

  Future<void> getTags() async {
    await _homeRepo.getTags().then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            // AppConstants.categoryIdForAccross = r
            //         .firstWhere((element) => element.name == "across the floor")
            //         .id ??
            //     "";
            // AppConstants.categoryIdForExercise =
            //     r.firstWhere((element) => element.name == "exercises").id ?? "";
            // AppConstants.categoryIdForLesson =
            //     r.firstWhere((element) => element.name == "lessons").id ?? "";
            // // _homeVideoResponse = r;
            // print(AppConstants.categoryIdForLesson);
            // print(AppConstants.categoryIdForAccross);
            // print(AppConstants.categoryIdForExercise);

            // Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
  }

  Future<void> getLibraryVideos(lib.LibraryListRequest libraryListRequest,
      {bool isAll = false}) async {
    toggleLoading();
    await _homeRepo.getLibraryList(libraryListRequest).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            // _libraryListResponse = null;
            if (!isAll) {
              libraryList.clear();
            }

            _libraryListResponse = r;
            libraryList.addAll(
                _libraryListResponse?.libraryVideosData?.first.videos ?? []);
            Logger.write("this is library response  " + r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> getAllVideos() async {
    toggleLoading();
    libraryList.clear();
    await getLibraryVideos(
        LibraryListRequest(
            categoryId: null,
            startIndex: 0,
            sortby: sortBy,
            selectedDurations: durations.isEmpty ? "" : durations.join(" ,"),
            selectedLevels: strength.isEmpty ? "" : strength.join(" ,"),
            selectedTags: focus.isEmpty ? "" : focus.join(","),
            userId: AppConstants.userId,
            endIndex: 10000),
        isAll: true
        // LibraryListRequest(categoryId:AppCons

        // )
        );

    toggleLoading();
  }

  Future<void> getsearchVideos(String query) async {
    toggleLoading();
    await _homeRepo.searchVideo(query).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            searchList.clear();
            _searchListResponse = r;
            searchList.addAll(_searchListResponse?.videos ?? []);
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  Future<void> getPlaylistList() async {
    isPlaylistLoading = true;
    notifyListeners();
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
    isPlaylistLoading = false;
    notifyListeners();
  }

  void setVideoList(int val) async {
    switch (val) {
      case 0:
        await getAllVideos();

      case 1:
        await getLibraryVideos(LibraryListRequest(
                categoryId: AppConstants.categoryIdForLesson,
                startIndex: 0,
                sortby: sortBy,
                selectedDurations:
                    durations.isEmpty ? "" : durations.join(" ,"),
                selectedLevels: strength.isEmpty ? "" : strength.join(" ,"),
                selectedTags: focus.isEmpty ? "" : focus.join(","),
                userId: AppConstants.userId,
                endIndex: 500)
            // LibraryListRequest(categoryId:AppCons

            // )
            );
        notifyListeners();
        break;
      case 2:
        print(LibraryListRequest(
                categoryId: AppConstants.categoryIdForExercise,
                startIndex: 0,
                sortby: sortBy,
                selectedDurations:
                    durations.isEmpty ? "" : durations.join(" ,"),
                selectedLevels: strength.isEmpty ? "" : strength.join(" ,"),
                selectedTags: focus.isEmpty ? "" : focus.join(","),
                userId: AppConstants.userId,
                endIndex: 500)
            .toString());
        await getLibraryVideos(
          LibraryListRequest(
              categoryId: AppConstants.categoryIdForExercise,
              startIndex: 0,
              sortby: sortBy,
              selectedDurations: durations.isEmpty ? "" : durations.join(" ,"),
              selectedLevels: strength.isEmpty ? "" : strength.join(" ,"),
              selectedTags: focus.isEmpty ? "" : focus.join(","),
              userId: AppConstants.userId,
              endIndex: 500),

          // LibraryListRequest(categoryId:AppCons

          // )
        );
        print(LibraryListRequest(
                categoryId: AppConstants.categoryIdForExercise,
                startIndex: 0,
                sortby: sortBy,
                selectedDurations:
                    durations.isEmpty ? "" : durations.join(" ,"),
                selectedLevels: strength.isEmpty ? "" : strength.join(" ,"),
                selectedTags: focus.isEmpty ? "" : focus.join(","),
                userId: AppConstants.userId,
                endIndex: 500)
            .toString());
        notifyListeners();
        break;
      case 3:
        await getLibraryVideos(LibraryListRequest(
                categoryId: AppConstants.categoryIdForAccross,
                startIndex: 0,
                sortby: sortBy,
                selectedDurations: durations.join(" ,"),
                selectedLevels: strength.join(" ,"),
                selectedTags: focus.join(","),
                userId: AppConstants.userId,
                endIndex: 500)
            // LibraryListRequest(categoryId:AppCons

            // )
            );
        notifyListeners();

        break;
      default:
    }
  }
}
