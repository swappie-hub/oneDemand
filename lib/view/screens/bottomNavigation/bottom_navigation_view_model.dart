import 'package:flutter/cupertino.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/data/home/home_repo.dart';
import 'package:ondemand/data/home/models/feature_playlist_model.dart';
import 'package:ondemand/data/home/models/home_model.dart';
import 'package:ondemand/data/home/models/library_list_model.dart' as lib;
import 'package:ondemand/data/home/models/library_list_model.dart';
import 'package:ondemand/data/home/models/saved_videos_model.dart';
import 'package:ondemand/domain/providers/repository_provider.dart';
import 'package:ondemand/helpers/base_screen_view.dart';
import 'package:ondemand/helpers/base_view_model.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/utils/utils.dart';

final bottomNavigationViewModel = ChangeNotifierProvider.autoDispose(
  (ref) => BottomNavigationViewModel(
    ref.read(homeRepositoryProvider),
  ),
);

class BottomNavigationViewModel extends BaseViewModel<BaseScreenView> {
  // final UserDetailService _userDetailService = getIt<UserDetailService>();

  final HomeRepo _homeRepo;
  List<HomeVideoResponse>? _homeVideoResponse;
  List<HomeVideoResponse>? get homeVideoResponse => _homeVideoResponse;
  SavedVideosResponse? _savedVideosResponse;
  SavedVideosResponse? get savedVideosResponse => _savedVideosResponse;
  FeaturePlaylistResponse? _featurePlaylistResponse;
  FeaturePlaylistResponse? get featurePlaylistResponse =>
      _featurePlaylistResponse;
  lib.LibraryListResponse? _libraryListResponse;
  lib.LibraryListResponse? get libraryListResponse => _libraryListResponse;
  List<lib.Video> libraryList = [];
  List<SavesVideosDatum> savedList = [];
  List<ExistingVideo> featuredList = [];
  List<ExistingVideo> allPlaylistList = [];
  List<ExistingVideo> personalPlaylist = [];
  List<String> durations = [];
  List<String> focus = [];
  List<String> strength = [];

  String? _sortby;
  String? get sortBy => _sortby;

  BottomNavigationViewModel(
    this._homeRepo,
  );
  Future<void> getHomeView() async {
    toggleLoading();
    await _homeRepo.getHomeView().then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            _homeVideoResponse = r;

            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

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

  Future<void> getLibraryVideos(
      lib.LibraryListRequest libraryListRequest) async {
    toggleLoading();
    await _homeRepo.getLibraryList(libraryListRequest).then(
          (value) => value.fold((l) {
            view!.showSnackbar(l.message);
          }, (r) async {
            libraryList.clear();
            _libraryListResponse = r;
            libraryList.addAll(
                _libraryListResponse?.libraryVideosData?.first.videos ?? []);
            Logger.write(r.toString());
            // view!.navigateToScreen(AppRoute.subscriptionView);

            notifyListeners();
          }),
        );
    toggleLoading();
  }

  void setVideoList(int val) async {
    switch (val) {
      case 1:
        await getLibraryVideos(LibraryListRequest(
                categoryId: AppConstants.categoryIdForLesson,
                startIndex: 0,
                sortby: sortBy,
                selectedDurations:
                    durations.isEmpty ? "" : durations.join(" ,"),
                selectedLevels: strength.isEmpty ? "" : strength.join(" ,"),
                selectedTags: focus.isEmpty ? "" : focus.join(" ,"),
                userId: "",
                endIndex: 500)
            // LibraryListRequest(categoryId:AppCons

            // )
            );

        break;
      case 2:
        print(LibraryListRequest(
                categoryId: AppConstants.categoryIdForExercise,
                startIndex: 0,
                sortby: sortBy,
                selectedDurations:
                    durations.isEmpty ? "" : durations.join(" ,"),
                selectedLevels: strength.isEmpty ? "" : strength.join(" ,"),
                selectedTags: focus.isEmpty ? "" : focus.join(" ,"),
                userId: "",
                endIndex: 500)
            .toString());
        await getLibraryVideos(
          LibraryListRequest(
              categoryId: AppConstants.categoryIdForExercise,
              startIndex: 0,
              sortby: sortBy,
              selectedDurations: durations.isEmpty ? "" : durations.join(" ,"),
              selectedLevels: strength.isEmpty ? "" : strength.join(" ,"),
              selectedTags: focus.isEmpty ? "" : focus.join(" ,"),
              userId: AppConstants.userId,
              endIndex: 500),

          // LibraryListRequest(categoryId:AppCons

          // )
        );
        print(LibraryListRequest(
                categoryId: AppConstants.categoryIdForExercise,
                startIndex: 0,
                sortby: sortBy,
                selectedDurations: durations.join(" ,"),
                selectedLevels: strength.toString(),
                selectedTags: focus.toString(),
                userId: "",
                endIndex: 500)
            .toString());

        break;
      case 3:
        await getLibraryVideos(LibraryListRequest(
                categoryId: AppConstants.categoryIdForAccross,
                startIndex: 0,
                sortby: sortBy,
                selectedDurations: durations.join(" ,"),
                selectedLevels: strength.join(" ,"),
                selectedTags: focus.join(" ,"),
                userId: "",
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
