import 'package:flutter/material.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/auth/models/update_email_model.dart';
import 'package:ondemand/data/auth/models/update_password_model.dart';
import 'package:ondemand/data/auth/models/update_username_model.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/shared_preference_service.dart';
import 'package:ondemand/services/user_detail_service.dart';
import 'package:ondemand/utils/file_picker.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/login/login_view_model.dart';

class AccountDetailsView extends ConsumerStatefulWidget {
  const AccountDetailsView({super.key});

  @override
  ConsumerState<AccountDetailsView> createState() => _AccountDetailsViewState();
}

class _AccountDetailsViewState extends ConsumerState<AccountDetailsView>
    with BaseScreenView {
  final UserDetailService _userDetailService = getIt<UserDetailService>();
  late LoginViewModel _viewModel;

  TextEditingController _fistNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _confirmEmailController = TextEditingController();
  TextEditingController _oldPasswordController = TextEditingController();
  TextEditingController _newPassController = TextEditingController();
  TextEditingController _confirmNewPassController = TextEditingController();

  final _emailformkey = GlobalKey<FormState>();
  final _passformkey = GlobalKey<FormState>();
  bool isObscuredPassword = true;
  bool isObscuredCPassword = true;
  bool isObscuredOldPassword = true;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(authViewModel);
    _viewModel.attachView(this);
    _fistNameController.text =
        _userDetailService.userDetailResponse?.firstname ?? "";
    _lastNameController.text =
        _userDetailService.userDetailResponse?.lastname ?? "";
    _emailController.text = _userDetailService.userDetailResponse?.email ?? "";
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(authViewModel);

    return Scaffold(
      backgroundColor: Color(0xFF171718),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xFF171718),
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF1AA2D9),
          ),
        ),
        title: Text(
          "ACCOUNT",
          style: TextStyle(
            fontFamily: "Good",
            color: Color(0xFF1AA2D9),
            fontSize: 15,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Color(0xFF27272A),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Color(0xFF171718),
                  )
                ],
              ),
              Column(
                children: [
                  gapH16,
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(_userDetailService
                                        .userDetailResponse?.image !=
                                    null
                                ? _userDetailService
                                        .userDetailResponse?.image ??
                                    ""
                                : "https://img.freepik.com/premium-vector/businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-4382.jpg"))),
                  ),
                  gapH10,
                  InkWell(
                    onTap: () {
                      openPickImageModalSheet(context).then((value) {
                        if (value != null) {
                          _viewModel.uploadSingleFile(value, context);
                          setState(() {
                            // uploadImageController.text = fileURL ?? "";
                          });
                        }
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/edit.png",
                          height: 26,
                        ),
                        gapW10,
                        Text(
                          "Edit Profile Picture",
                          style: TextStyle(
                              color: Color(0xFF7D7878),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFF7D7878),
                              fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          gapH10,
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, setSt) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      insetPadding: EdgeInsets.zero,
                      titlePadding: EdgeInsets.zero,
                      backgroundColor: Color(0xFF171718),
                      surfaceTintColor: Color(0xFF171718),
                      title: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Change name'.toUpperCase(),
                                  style: TextStyle(
                                      fontFamily: "Good",
                                      color: Color(0xFF008BC3),
                                      fontSize: 16),
                                ),
                                InkWell(
                                    onTap: () {
                                      context.pop();
                                    },
                                    child: Icon(Icons.close))
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                            decoration: BoxDecoration(color: Color(0xFF27272A)),
                          )
                        ],
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            cursorColor: Colors.white,
                            style: TextStyle(
                                color: Color(0xFF7D7878),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                            controller: _fistNameController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                filled: true,
                                fillColor: Colors.black,
                                hintText: "First Name",
                                hintStyle: TextStyle(
                                    color: Color(0xFF71717A),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF323234),
                                    )),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF323234),
                                    )),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF323234),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF323234),
                                    ))),
                          ),
                          gapH8,
                          TextFormField(
                            cursorColor: Colors.white,
                            style: TextStyle(
                                color: Color(0xFF7D7878),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                            controller: _lastNameController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                filled: true,
                                fillColor: Colors.black,
                                hintText: "Last Name",
                                hintStyle: TextStyle(
                                    color: Color(0xFF71717A),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF323234),
                                    )),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF323234),
                                    )),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF323234),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Color(0xFF323234),
                                    ))),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text(
                            'Cancel'.toUpperCase(),
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 16),
                              decoration: BoxDecoration(
                                  color: Color(0xFF008BC3),
                                  borderRadius: BorderRadius.circular(9)),
                              child: const Text(
                                'UPDATE',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )),
                          onPressed: () {
                            if (_fistNameController.text != "") {
                              _viewModel.uopdateUserName(
                                  UpdateUsernameRequest(
                                      firstname: _fistNameController.text,
                                      lastname: _lastNameController.text,
                                      userId: AppConstants.userId),
                                  context);
                              setSt(() {
                                _fistNameController.clear();
                                _lastNameController.clear();
                              });
                            }

                            // Handle the submit action
                          },
                        ),
                      ],
                    );
                  });
                },
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "NAME",
                        style: TextStyle(
                            color: Color(0xFF1AA2D9),
                            // fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      gapH2,
                      Text(
                        ((_userDetailService.userDetailResponse?.firstname ??
                                    "") +
                                " " +
                                (_userDetailService
                                        .userDetailResponse?.lastname ??
                                    ""))
                            .toUpperCase(),
                        style: TextStyle(
                            color: Color(0xFf9E9E9E),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xFF1AA2D9),
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, setSt) {
                    return Form(
                      key: _emailformkey,
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        insetPadding: EdgeInsets.zero,
                        titlePadding: EdgeInsets.zero,
                        backgroundColor: Color(0xFF171718),
                        surfaceTintColor: Color(0xFF171718),
                        title: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Change email'.toUpperCase(),
                                    style: TextStyle(
                                        fontFamily: "Good",
                                        color: Color(0xFF008BC3),
                                        fontSize: 16),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        context.pop();
                                      },
                                      child: Icon(Icons.close))
                                ],
                              ),
                            ),
                            Container(
                              height: 2,
                              decoration:
                                  BoxDecoration(color: Color(0xFF27272A)),
                            )
                          ],
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              controller: _emailController,
                              cursorColor: Colors.white,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Please enter an email address';
                                } else if (!RegExp(
                                        r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                                    .hasMatch(value ?? "")) {
                                  return 'Please enter a valid email address';
                                }
                                return null; // Return null if the input is valid
                              },
                              style: TextStyle(
                                  color: Color(0xFF7D7878),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(8),
                                  filled: true,
                                  fillColor: Colors.black,
                                  hintText: "Enter new Email address",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF71717A),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      ))),
                            ),
                            gapH8,
                            TextFormField(
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Please enter the confirm email address';
                                } else if (!RegExp(
                                        r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                                    .hasMatch(value ?? "")) {
                                  return 'Please enter a valid email address';
                                } else if (value != _emailController.text) {
                                  return 'Email and confirm password are not same';
                                }
                                return null; // Return null if the input is valid
                              },
                              controller: _confirmEmailController,
                              cursorColor: Colors.white,
                              style: TextStyle(
                                  color: Color(0xFF7D7878),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(8),
                                  filled: true,
                                  fillColor: Colors.black,
                                  hintText: "Re-enter Email address",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF71717A),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      ))),
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text(
                              'Cancel'.toUpperCase(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                    color: Color(0xFF008BC3),
                                    borderRadius: BorderRadius.circular(9)),
                                child: const Text(
                                  'UPDATE',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                            onPressed: () {
                              if (_emailformkey.currentState!.validate()) {
                                _viewModel.updateEmail(
                                    UpdateEmailRequest(
                                        email: _emailController.text),
                                    context);
                                setSt(() {
                                  _emailController.clear();
                                  _confirmEmailController.clear();
                                });
                              }
                              // Handle the submit action
                            },
                          ),
                        ],
                      ),
                    );
                  });
                },
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "EMAIL",
                        style: TextStyle(
                            color: Color(0xFF1AA2D9),
                            // fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      gapH2,
                      Text(
                        _userDetailService.userDetailResponse?.email ?? "",
                        style: TextStyle(
                            color: Color(0xFf9E9E9E),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xFF1AA2D9),
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, setSt) {
                    return Form(
                      key: _passformkey,
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        insetPadding: EdgeInsets.zero,
                        titlePadding: EdgeInsets.zero,
                        backgroundColor: Color(0xFF171718),
                        surfaceTintColor: Color(0xFF171718),
                        title: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Change Password'.toUpperCase(),
                                    style: TextStyle(
                                        fontFamily: "Good",
                                        color: Color(0xFF008BC3),
                                        fontSize: 16),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        context.pop();
                                      },
                                      child: Icon(Icons.close))
                                ],
                              ),
                            ),
                            Container(
                              height: 2,
                              decoration:
                                  BoxDecoration(color: Color(0xFF27272A)),
                            )
                          ],
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              obscureText: isObscuredOldPassword,
                              cursorColor: Colors.white,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Please enter the old password';
                                }
                                return null; // Return null if the input is valid
                              },
                              style: TextStyle(
                                  color: Color(0xFF7D7878),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                              controller: _oldPasswordController,
                              decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        setSt(() {
                                          isObscuredOldPassword =
                                              !isObscuredOldPassword;
                                        });
                                      },
                                      child: Icon(
                                        isObscuredOldPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Colors.white,
                                      )),
                                  contentPadding: EdgeInsets.all(8),
                                  filled: true,
                                  fillColor: Colors.black,
                                  hintText: "Enter existing password",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF71717A),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      ))),
                            ),
                            gapH8,
                            TextFormField(
                              obscureText: isObscuredPassword,
                              cursorColor: Colors.white,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Please enter the new password';
                                }
                                return null; // Return null if the input is valid
                              },
                              style: TextStyle(
                                  color: Color(0xFF7D7878),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                              controller: _newPassController,
                              decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        setSt(() {
                                          isObscuredPassword =
                                              !isObscuredPassword;
                                        });
                                      },
                                      child: Icon(
                                        isObscuredPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Colors.white,
                                      )),
                                  contentPadding: EdgeInsets.all(8),
                                  filled: true,
                                  fillColor: Colors.black,
                                  hintText: "Enter new password",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF71717A),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      ))),
                            ),
                            gapH8,
                            TextFormField(
                              obscureText: isObscuredCPassword,
                              cursorColor: Colors.white,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Please enter the confirm password';
                                } else if (value != _newPassController.text) {
                                  return "New password and confirm password are not same";
                                }
                                return null; // Return null if the input is valid
                              },
                              style: TextStyle(
                                  color: Color(0xFF7D7878),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                              controller: _confirmNewPassController,
                              decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        setSt(() {
                                          isObscuredCPassword =
                                              !isObscuredCPassword;
                                        });
                                      },
                                      child: Icon(
                                        isObscuredCPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Colors.white,
                                      )),
                                  contentPadding: EdgeInsets.all(8),
                                  filled: true,
                                  fillColor: Colors.black,
                                  hintText: "Re-enter new password",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF71717A),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xFF323234),
                                      ))),
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text(
                              'Cancel'.toUpperCase(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                    color: Color(0xFF008BC3),
                                    borderRadius: BorderRadius.circular(9)),
                                child: const Text(
                                  'UPDATE',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                            onPressed: () {
                              // Handle the submit action
                              if (_passformkey.currentState!.validate()) {
                                _viewModel.updatePassword(
                                    UpdatePasswordRequest(
                                        currentPassword:
                                            _oldPasswordController.text,
                                        confirmPassword:
                                            _confirmNewPassController.text,
                                        userId: AppConstants.userId,
                                        newPassword: _newPassController.text),
                                    context);
                                setSt(() {
                                  _newPassController.clear();
                                  _oldPasswordController.clear();
                                  _confirmNewPassController.clear();
                                });
                              }
                              // Handle the submit action
                            },
                          ),
                        ],
                      ),
                    );
                  });
                },
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "PASSWORD",
                        style: TextStyle(
                            color: Color(0xFF1AA2D9),
                            // fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      gapH2,
                      Text(
                        "********",
                        style: TextStyle(
                            color: Color(0xFf9E9E9E),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xFF1AA2D9),
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),
          InkWell(
            onTap: () {
              SharedPreferenceService.clearAll();

              AppConstants.token = "";
              AppConstants.isSubscribed = false;

              AppConstants.userId = "";
              context.pushReplacementNamed(AppRoute.onboardingView.name);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Transform.flip(
                    flipY: true,
                    flipX: true,
                    child: Icon(
                      Icons.logout,
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                  gapW8,
                  Text(
                    "Logout",
                    style: TextStyle(color: Color(0xFfC4C4C4), fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    insetPadding: EdgeInsets.zero,
                    titlePadding: EdgeInsets.zero,
                    backgroundColor: Color(0xFF171718),
                    surfaceTintColor: Color(0xFF171718),
                    title: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delete account'.toUpperCase(),
                                style: TextStyle(
                                    fontFamily: "Good",
                                    color: Color(0xFF008BC3),
                                    fontSize: 16),
                              ),
                              InkWell(
                                  onTap: () {
                                    context.pop();
                                  },
                                  child: Icon(Icons.close))
                            ],
                          ),
                        ),
                        Container(
                          height: 2,
                          decoration: BoxDecoration(color: Color(0xFF27272A)),
                        )
                      ],
                    ),
                    content: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Are you sure you want to delete your account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          gapH8,
                          Text(
                            "All account data and history will be deleted and your subscription will no longer be accessible.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          gapH8,
                          TextButton(
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                    color: Color(0xFF008BC3),
                                    borderRadius: BorderRadius.circular(9)),
                                child: Text(
                                  'NO Go Back'.toUpperCase(),
                                  style: TextStyle(
                                      fontFamily: "Good",
                                      color: Colors.white,
                                      fontSize: 15),
                                )),
                            onPressed: () {
                              Navigator.of(context).pop();
                              // navigateToScreen(AppRoute.accountDetailsView);

                              // Handle the submit action
                            },
                          ),
                          TextButton(
                            child: Text(
                              'Delete'.toUpperCase(),
                              style: TextStyle(
                                  fontFamily: "Good",
                                  color: Color(0xFFA11E1E),
                                  fontSize: 15),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    insetPadding: EdgeInsets.zero,
                                    titlePadding: EdgeInsets.zero,
                                    backgroundColor: Color(0xFF171718),
                                    surfaceTintColor: Color(0xFF171718),
                                    title: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Delete account'.toUpperCase(),
                                                style: TextStyle(
                                                    fontFamily: "Good",
                                                    color: Color(0xFF008BC3),
                                                    fontSize: 16),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    context.pop();
                                                  },
                                                  child: Icon(Icons.close))
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 2,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF27272A)),
                                        )
                                      ],
                                    ),
                                    content: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Are you sure you want to proceed with deleting your account?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          gapH8,
                                          Text(
                                            "This action is not reversible and no refunds will be provided for active subscriptions.",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          gapH8,
                                          TextButton(
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 8,
                                                    horizontal: 16),
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF008BC3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9)),
                                                child: Text(
                                                  'NO Go Back'.toUpperCase(),
                                                  style: TextStyle(
                                                      fontFamily: "Good",
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                )),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              // Handle the submit action
                                            },
                                          ),
                                          TextButton(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: Text(
                                                'YES, I AM SURE.\nDELETE MY ACCOUNT'
                                                    .toUpperCase(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: "Good",
                                                    color: Color(0xFFA11E1E),
                                                    fontSize: 15),
                                              ),
                                            ),
                                            onPressed: () {
                                              _viewModel.deleteAccount(context);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[],
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[],
                  );
                },
              );

              // navigateToScreen(AppRoute.accountDetailsView);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.delete_outline,
                    color: Color(0xFFD9D9D9),
                  ),
                  gapW8,
                  Text(
                    "Delete Account",
                    style: TextStyle(color: Color(0xFfC4C4C4), fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF71717A)),
          ),
        ],
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {}

  @override
  void showSnackbar(String message, {Color? color}) {}
}
