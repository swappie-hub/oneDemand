import 'package:dartz/dartz.dart';
import 'package:ondemand/core/api_client.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/core/exceptions.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/models/forget_password_model.dart';
import 'package:ondemand/data/auth/models/get_user_details_model.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/data/auth/models/subscription_model.dart';
import 'package:ondemand/data/auth/models/update_email_model.dart';
import 'package:ondemand/data/auth/models/update_password_model.dart';
import 'package:ondemand/data/auth/models/update_username_model.dart';
import 'package:ondemand/services/shared_preference_service.dart';
import 'package:ondemand/utils/logger.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiClient _apiClient;

  AuthRepoImpl(this._apiClient);

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
      final response = await _apiClient.post(
          sendCookies: true,
          "${AppConstants.baseUrl}update-password",
          updatePasswordRequestToJson(updatePasswordRequest));

      return Right(UpdatePasswordResponse.fromJson(response.data!));
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }
}