import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ondemand/core/api_client.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/core/exceptions.dart';
import 'package:ondemand/data/home/home_repo.dart';
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
import 'package:ondemand/utils/utils.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiClient _apiClient;

  HomeRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, List<HomeVideoResponse>>> getHomeView() async {
    try {
      final response = await _apiClient.get(
          sendCookies: true, "${AppConstants.baseUrl}/home/user/video");
      print("this is response" + response.data.toString());
      return Right(homeVideoResponseFromJson(jsonEncode(response.data)));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, LibraryListResponse>> getLibraryList(
      LibraryListRequest libraryListRequest) async {
    try {
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/library/single/page/video",
          libraryListRequestToJson(libraryListRequest));
      print("this is response for library" + response.data.toString());
      return Right(LibraryListResponse.fromJson(response.data));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SaveResponse>> saveVideo(String id) async {
    try {
      var body = {"id": id};
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/save/Wishlist/video",
          jsonEncode(body));
      print("this is response" + response.data.toString());
      return Right(SaveResponse.fromJson(response.data));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SaveResponse>> unsaveVideo(String id) async {
    try {
      var body = {"id": id};
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/unsave/Wishlist/video",
          jsonEncode(body));
      print("this is response" + response.data.toString());
      return Right(SaveResponse.fromJson(response.data));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SavedVideosResponse>> fetchSavedVideos(
      SavedVideosRequest savedVideosRequest) async {
    try {
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/save/all/video",
          savedVideosRequestToJson(savedVideosRequest));
      print("this is response" + response.data.toString());
      return Right(SavedVideosResponse.fromJson(response.data));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, FeaturePlaylistResponse>>
      featuredPlaylist() async {
    try {
      final response = await _apiClient.get(
        sendCookies: true,
        "${AppConstants.baseUrl}/featurevideo",
      );
      print("this is response" + response.data.toString());
      return Right(FeaturePlaylistResponse.fromJson(response.data));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, FeaturePlaylistResponse>> personalPlaylist(
      PersonalPlaylistRequest personalPlaylistRequest) async {
    try {
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/personalvideo",
          personalPlaylistRequestToJson(personalPlaylistRequest));
      print("this is response" + response.data.toString());
      return Right(FeaturePlaylistResponse.fromJson(response.data));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, List<GetTagsResponse>>> getTags() async {
    try {
      final response = await _apiClient.get(
          sendCookies: true, "${AppConstants.baseUrl}/get/tags");
      print("this is response" + response.data.toString());
      return Right(getTagsResponseFromJson(jsonEncode(response.data)));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SearchListResponse>> searchVideo(
      String query) async {
    try {
      final response = await _apiClient.get(
          sendCookies: true,
          "${AppConstants.baseUrl}/search/video?query=${query}&sort_by=&endIndex=500&startIndex=0&userId=${AppConstants.userId}");
      print("this is response" + response.data.toString());
      return Right(SearchListResponse.fromJson(response.data));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, List<GetAllPlaylistResponse>>>
      getPlaylistList() async {
    try {
      final response = await _apiClient.get(
          sendCookies: true,
          "${AppConstants.baseUrl}/personalvideo/fetch/all/${AppConstants.userId}");
      print("this is response" + response.data.toString());
      return Right(getAllPlaylistResponseFromJson(jsonEncode(response.data)));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AddPlaylistResponse>> addToPlaylist(
      AddPlaylistRequest addPlaylistRequest) async {
    try {
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/personalvideo/playlist/add",
          addPlaylistRequestToJson(addPlaylistRequest));
      print("this is response" + response.data.toString());
      return Right(AddPlaylistResponse.fromJson(response.data));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CreatePlaylistResponse>> createPlaylist(
      CreatePlaylistRequest createPlaylistRequest) async {
    try {
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/personalvideo/save",
          createPlaylistRequestToJson(createPlaylistRequest));
      print("this is response" + response.data.toString());
      return Right(CreatePlaylistResponse.fromJson(response.data));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, List<FetchAllPlaylistResponse>>>
      fetchAllVideos() async {
    try {
      final response = await _apiClient.get(
        sendCookies: true,
        "${AppConstants.baseUrl}/video/fetch",
      );
      print("this is response" + response.data.toString());
      return Right(fetchAllPlaylistResponseFromJson(jsonEncode(response.data)));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CreatePlaylistResponse>> createPlay(
      AddPlaylistVidieoRequest addPlaylistVidieoRequest) async {
    try {
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/personalvideo/save",
          addPlaylistVidieoRequestToJson(addPlaylistVidieoRequest));
      print("this is response" + response.data.toString());
      return Right(CreatePlaylistResponse.fromJson(response.data));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
