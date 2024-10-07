import 'package:dartz/dartz.dart';
import 'package:ondemand/core/exceptions.dart';
import 'package:ondemand/data/home/models/add_playlist_model.dart';
import 'package:ondemand/data/home/models/create_playlist_model.dart';
import 'package:ondemand/data/home/models/create_playlist_request.dart';
import 'package:ondemand/data/home/models/feature_playlist_model.dart';
import 'package:ondemand/data/home/models/fetch_all_playlist_model.dart';
import 'package:ondemand/data/home/models/get_playlist_model.dart';
import 'package:ondemand/data/home/models/get_tags_model.dart';
import 'package:ondemand/data/home/models/home_model.dart';
import 'package:ondemand/data/home/models/library_list_model.dart';
import 'package:ondemand/data/home/models/save_model.dart';
import 'package:ondemand/data/home/models/saved_videos_model.dart';
import 'package:ondemand/data/home/models/search_video_models.dart';

abstract class HomeRepo {
  Future<Either<ApiException, List<HomeVideoResponse>>> getHomeView();

  Future<Either<ApiException, LibraryListResponse>> getLibraryList(
      LibraryListRequest libraryListRequest);
  Future<Either<ApiException, SaveResponse>> saveVideo(String id);
  Future<Either<ApiException, SaveResponse>> unsaveVideo(String id);
  Future<Either<ApiException, SavedVideosResponse>> fetchSavedVideos(
      SavedVideosRequest savedVideosRequest);
  Future<Either<ApiException, FeaturePlaylistResponse>> featuredPlaylist();
  Future<Either<ApiException, FeaturePlaylistResponse>> personalPlaylist(
      PersonalPlaylistRequest personalPlaylistRequest);
  Future<Either<ApiException, List<GetTagsResponse>>> getTags();
  Future<Either<ApiException, SearchListResponse>> searchVideo(String query);
  Future<Either<ApiException, List<GetAllPlaylistResponse>>> getPlaylistList();
  Future<Either<ApiException, AddPlaylistResponse>> addToPlaylist(
      AddPlaylistRequest addPlaylistRequest);
  Future<Either<ApiException, CreatePlaylistResponse>> createPlaylist(
      CreatePlaylistRequest createPlaylistRequest);
  Future<Either<ApiException, List<FetchAllPlaylistResponse>>> fetchAllVideos();
  Future<Either<ApiException, CreatePlaylistResponse>> createPlay(
      AddPlaylistVidieoRequest addPlaylistVidieoRequest);
  Future<Either<ApiException, List<String>>> getInstructors();
}
