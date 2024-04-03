import 'package:dartz/dartz.dart';
import 'package:ondemand/core/exceptions.dart';
import 'package:ondemand/data/auth/models/delete_model.dart';
import 'package:ondemand/data/auth/models/forget_password_model.dart';
import 'package:ondemand/data/auth/models/get_user_details_model.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/data/auth/models/subscription_model.dart';
import 'package:ondemand/data/auth/models/update_email_model.dart';
import 'package:ondemand/data/auth/models/update_password_model.dart';
import 'package:ondemand/data/auth/models/update_username_model.dart';

abstract class AuthRepo {
  Future<Either<ApiException, SignupResponse>> signup(
      SignupRequest signupRequest);
  Future<Either<ApiException, LoginResponse>> login(LoginRequest loginRequest);
  Future<Either<ApiException, SubscriptionResponse>> getSubscriptionList();
  Future<Either<ApiException, ForgetPasswordResponse>> forgetPassword(
      ForgetPasswordRequest forgetPasswordRequest);
  Future<Either<ApiException, GetUserDetailResponse>> getUserdetails(
      String userID);
  Future<Either<ApiException, UpdateUsernameResponse>> updateUserName(
      UpdateUsernameRequest updateUsernameRequest);
  Future<Either<ApiException, UpdateEmailResponse>> updateEmail(
      UpdateEmailRequest updateEmailRequest);
  Future<Either<ApiException, UpdatePasswordResponse>> updatePassword(
      UpdatePasswordRequest updatePasswordRequest);
  Future<Either<ApiException, DeleteAccountResponse>> deleteAccount();
}
