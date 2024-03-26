import 'package:flutter/material.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/user_detail_service.dart';
import 'package:ondemand/utils/app_sizes.dart';
import 'package:ondemand/utils/utils.dart';

class AccountDetailsView extends StatefulWidget {
  const AccountDetailsView({super.key});

  @override
  State<AccountDetailsView> createState() => _AccountDetailsViewState();
}

class _AccountDetailsViewState extends State<AccountDetailsView> {
  final UserDetailService _userDetailService = getIt<UserDetailService>();

  @override
  Widget build(BuildContext context) {
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
          "ACCOUNT DETAILS",
          style: TextStyle(
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
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://img.freepik.com/premium-vector/businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-4382.jpg"))),
                  ),
                  gapH10,
                  Row(
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
                  )
                ],
              )
            ],
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
                                'Change name'.toUpperCase(),
                                style: TextStyle(
                                    color: Color(0xFF008BC3), fontSize: 16),
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
                        TextField(
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
                        TextField(
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                        onPressed: () {
                          // Handle the submit action
                        },
                      ),
                    ],
                  );
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
                                'Change email'.toUpperCase(),
                                style: TextStyle(
                                    color: Color(0xFF008BC3), fontSize: 16),
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
                        TextField(
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
                        TextField(
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                        onPressed: () {
                          // Handle the submit action
                        },
                      ),
                    ],
                  );
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
                                'Change Password'.toUpperCase(),
                                style: TextStyle(
                                    color: Color(0xFF008BC3), fontSize: 16),
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
                        TextField(
                          decoration: InputDecoration(
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
                        TextField(
                          decoration: InputDecoration(
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
                        TextField(
                          decoration: InputDecoration(
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                        onPressed: () {
                          // Handle the submit action
                        },
                      ),
                    ],
                  );
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
        ],
      ),
    );
  }
}
