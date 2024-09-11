import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ondemand/core/api_client.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/core/exceptions.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/models/delete_model.dart';
import 'package:ondemand/data/auth/models/fetch_subscription_model.dart';
import 'package:ondemand/data/auth/models/forget_password_model.dart';
import 'package:ondemand/data/auth/models/get_user_details_model.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/data/auth/models/subscription_model.dart';
import 'package:ondemand/data/auth/models/update_email_model.dart';
import 'package:ondemand/data/auth/models/update_password_model.dart';
import 'package:ondemand/data/auth/models/update_username_model.dart';
import 'package:ondemand/data/auth/models/upload_image_to_profile_model.dart';
import 'package:ondemand/data/auth/models/upload_model.dart';
import 'package:ondemand/services/shared_preference_service.dart';
import 'package:ondemand/utils/logger.dart';
import 'package:http/http.dart' as http;

class AuthRepoImpl implements AuthRepo {
  final ApiClient _apiClient;
  final MultiPartClient _apiClient2;

  AuthRepoImpl(this._apiClient, this._apiClient2);

  @override
  Future<Either<ApiException, SignupResponse>> signup(
      SignupRequest signupRequest) async {
    try {
      final response = await _apiClient.post(
          addCookies: true,
          "${AppConstants.baseUrl}/signup",
          signupRequestToJson(signupRequest));
      Logger.write("this is login response " +
          response.headers.map['set-cookie'].toString());
      AppConstants.cookies = response.headers.map['set-cookie'].toString();

      final cookiesString = response.headers.map['set-cookie'].toString();
      int start = cookiesString.indexOf("token=") + "token=".length;
      int end = cookiesString.indexOf(";", start);

      String token = cookiesString.substring(start, end);
      AppConstants.token = token;
      await SharedPreferenceService.setString(
        AppConstants.authTokenPref,
        AppConstants.token,
      );
      return Right(SignupResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, LoginResponse>> login(
      LoginRequest loginRequest) async {
    try {
      final response = await _apiClient.post(
          addCookies: true,
          "${AppConstants.baseUrl}/login",
          loginRequestToJson(loginRequest));
      Logger.write("this is login response " +
          response.headers.map['set-cookie'].toString());
      AppConstants.cookies = response.headers.map['set-cookie'].toString();

      final cookiesString = response.headers.map['set-cookie'].toString();
      int start = cookiesString.indexOf("token=") + "token=".length;
      int end = cookiesString.indexOf(";", start);

      String token = cookiesString.substring(start, end);
      AppConstants.token = token;
      await SharedPreferenceService.setString(
        AppConstants.authTokenPref,
        AppConstants.token,
      );
      print("this is token" + AppConstants.token);
      print("this is cookies" + AppConstants.cookies);

      return Right(LoginResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SubscriptionResponse>>
      getSubscriptionList() async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}/get/itemprice/list",
      );

      return Right(SubscriptionResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ForgetPasswordResponse>> forgetPassword(
      ForgetPasswordRequest forgetPasswordRequest) async {
    try {
      final response = await _apiClient.post(
          "${AppConstants.baseUrl}/forgot-password",
          forgetPasswordRequestToJson(forgetPasswordRequest));

      return Right(ForgetPasswordResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetUserDetailResponse>> getUserdetails(
      String ID) async {
    try {
      final response = await _apiClient.get(
        sendCookies: true,
        "${AppConstants.baseUrl}/personal/details?userId=$ID",
      );

      return Right(GetUserDetailResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdateUsernameResponse>> updateUserName(
      UpdateUsernameRequest updateUsernameRequest) async {
    try {
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/update/personal/details/name",
          updateUsernameRequestToJson(updateUsernameRequest));

      return Right(UpdateUsernameResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdateEmailResponse>> updateEmail(
      UpdateEmailRequest updateEmailRequest) async {
    try {
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/update/personal/details/email",
          updateEmailRequestToJson(updateEmailRequest));

      return Right(UpdateEmailResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdatePasswordResponse>> updatePassword(
      UpdatePasswordRequest updatePasswordRequest) async {
    try {
      final response = await _apiClient.put(
          sendCookies: true,
          "${AppConstants.baseUrl}update-password",
          updatePasswordRequestToJson(updatePasswordRequest));

      return Right(UpdatePasswordResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeleteAccountResponse>> deleteAccount() async {
    try {
      final response = await _apiClient.get(
        sendCookies: true,
        "${AppConstants.baseUrl}/deleteuser/:${AppConstants.userId}",
      );

      return Right(DeleteAccountResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UploadResponse>> uploadSingleFile(
    File file,
  ) async {
    // ignore: prefer_final_locals
    http.MultipartRequest request = http.MultipartRequest(
        'POST', Uri.parse('${AppConstants.baseUrl}/common/file-upload'));

    request.files.add(await http.MultipartFile.fromPath("file", file.path));
    try {
      final http.StreamedResponse streamedResponse =
          await _apiClient2.send(request);
      final http.Response response =
          await http.Response.fromStream(streamedResponse);
      print(uploadResponseFromJson(response.body));
      return Right(
        uploadResponseFromJson(response.body),
      );
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, FetchSubscriptionResponse>>
      fetchSubscription() async {
    try {
      final response = await _apiClient.get(
        sendCookies: true,
        "${AppConstants.baseUrl}/fetch/subscribtion",
      );

      return Right(FetchSubscriptionResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UploadImageProfileResponse>> uploadImageProfile(
      UploadImageProfileRequest uploadImageProfileRequest) async {
    try {
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}/uploadthing",
          addCookies: true,
          uploadImageProfileRequestToJson(uploadImageProfileRequest));

      return Right(UploadImageProfileResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }
}
