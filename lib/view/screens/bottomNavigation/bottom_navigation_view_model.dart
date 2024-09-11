import 'package:flutter/cupertino.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/home/home_repo.dart';
import 'package:ondemand/data/home/models/add_playlist_model.dart';
import 'package:ondemand/data/home/models/create_playlist_request.dart';
import 'package:ondemand/data/home/models/feature_playlist_model.dart';
import 'package:ondemand/data/home/models/fetch_all_playlist_model.dart';
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
import 'package:ondemand/data/home/models/create_playlist_request.dart'
    as addVid;
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
  List<FetchAllPlaylistResponse> fetchList = [];
  List<GetAllPlaylistResponse>? _getAllPlaylistResponse;
  List<GetAllPlaylistResponse>? get getAllPlaylistResponse =>
      _getAllPlaylistResponse;
  List<lib.Video> libraryList = [];
  List<String> addedVideos = [];

  List<String> tags = [];
  bool isPlaylistLoading = false;
  List<FetchAllPlaylistResponse>? _fetchAllPlaylistResponse;
  List<FetchAllPlaylistResponse>? get fetchAllPlaylistResponse =>
      _fetchAllPlaylistResponse;
  bool _isSearching = false;
  bool get isSearching => _isSearching;
  List<SavesVideosDatum> savedList = [];
  List<String> titlesForPlaylist = [];

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
  Future<void> getHomeView({bool isReccent = false}) async {
    toggleLoading();
    await _homeRepo.getHomeView().then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            videos?.clear();
            _homeVideoResponse = r;
            if (isReccent) {
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

  Future<void> createPlay(
      BuildContext context, String title, String subtitle) async {
    List<addVid.Video> listData = [];
    for (int i = 0; i < fetchList.length; i++) {
      await getVideoDetails(fetchList[i].id ?? "");
      List<addVid.CategoryDetail> newCat = [];

      int? catLength = _videoDetailResponse?.first.categoryDetails?.length ?? 0;
      for (int j = 0; j < catLength; j++) {
        // Note the change from i to j to avoid confusion with outer loop
        newCat.add(addVid.CategoryDetail(
          id: _videoDetailResponse!.first.categoryDetails![j].id,
          name: _videoDetailResponse!.first.categoryDetails![j].name,
          v: _videoDetailResponse!.first.categoryDetails![j].v,
        ));
      }
      print("this is newCat" + newCat.toString());

      List<addVid.TagsDatum> newTag = [];

      int? tagLength = _videoDetailResponse?.first.tags?.length ?? 0;
      for (int j = 0; j < tagLength; j++) {
        newTag.add(addVid.TagsDatum(
          id: _videoDetailResponse!
              .first.tags![j].id, // This might need correcting
          name: _videoDetailResponse!.first.tags![j].referalId,
          // This might need correcting
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

      listData.add(addVid.Video(
          id: _videoDetailResponse?.first.id,
          categoryDetails: newCat,
          // tagsData: tagDetails,
          // tags: newTag,
          releaseDateTime: _videoDetailResponse?.first.releaseDateTime,
          title: _videoDetailResponse?.first.title ?? "",
          vId: _videoDetailResponse?.first.vId ?? "",
          videoId: _videoDetailResponse?.first.videoId ?? "",
          thumnailLink: _videoDetailResponse?.first.thumnailLink ?? "",
          duration: _videoDetailResponse?.first.duration ?? 100,
          videolink: _videoDetailResponse?.first.videolink,
          description: _videoDetailResponse?.first.description ?? ""));
    }
    await _homeRepo
        .createPlay(AddPlaylistVidieoRequest(
            description: subtitle,
            name: title,
            userId: AppConstants.userId,
            videos: listData))
        .then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            // _homeVideoResponse = r;
            fetchList.clear();
            addedVideos.clear();
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
    context.pop();
    getpersonalPlaylist();
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
    toggleLoading();
    await addFeatureToAll();
    await addpersonalToAll();
    toggleLoading();
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
             id: _videoDetailResponse?.first.id,
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

    print(listData);

    await _homeRepo.addToPlaylist(AddPlaylistRequest(myArray: listData)).then(
          (value) => value.fold((l) {}, (r) async {
            selectedPlayList.clear();

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
    for (int i = 0; i < selectedPlayList.length; i++) {
      await getVideoDetails(video?.id ?? "");
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
              id: _videoDetailResponse?.first.id,
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
    _isSearching = true;
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
    _isSearching = false;
    toggleLoading();
  }

  Future<void> getPlaylistList() async {
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
  }

  Future<void> getAllVid() async {
    await _homeRepo.fetchAllVideos().then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            _fetchAllPlaylistResponse = r;
            int length = _fetchAllPlaylistResponse?.length ?? 0;
            for (int i = 0; i < length; i++) {
              titlesForPlaylist.add(_fetchAllPlaylistResponse?[i].title ?? "");
            }
            // fetchList.addAll(_fetchAllPlaylistResponse ?? []);
            // searchList.clear();
            // _searchListResponse = r;
            // searchList.addAll(_searchListResponse?.videos ?? []);
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
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
