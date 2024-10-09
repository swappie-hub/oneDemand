import 'package:flutter/material.dart';
import 'package:ondemand/core/core.dart';
import 'package:ondemand/data/auth/models/signup_model.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/signup/signup_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class SignupView extends ConsumerStatefulWidget {
  const SignupView({super.key});

  @override
  ConsumerState<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends ConsumerState<SignupView> with BaseScreenView {
  late SignupViewModel _viewModel;
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _cPasswordController = TextEditingController();
  bool isChecked = false;
  bool isObscuredPassword = true;
  bool isObscuredCPassword = true;
  List<String> roles = ['Dancer/Parent', 'Dance Instructor', 'Other'];
  int selectedRole = -1;
  final _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();

    _viewModel = ref.read(signupViewModel);
    _viewModel.attachView(this);
  }

  // TextEditingController _
  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(signupViewModel);
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              context.pushReplacementNamed(AppRoute.loginView.name);
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 32),
              child: Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  TextSpan(
                      text: "Login",
                      style: TextStyle(
                          // decoration: TextDecoration.underline,
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12))
                ])),
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: kBlack,
        title: Center(
          child: Image.asset(
            "assets/images/appbar_logo.png",
            height: 34.52,
            // height: 34.52.h,
          ),
        ),
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 11,
                ),
                Text(
                  "SIGN-UP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      fontSize: 24),
                ),
                gapH32,
                TextFormField(
                  cursorColor: Colors.white,
                  controller: _firstNameController,
                  validator: (value) => _firstNameController.text.isEmpty
                      ? "Please enter the first name"
                      : null,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      fillColor: Colors.black,
                      hintText: "First name",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
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
                gapH10,
                TextFormField(
                  cursorColor: Colors.white,
                  controller: _lastNameController,
                  validator: (value) => _lastNameController.text.isEmpty
                      ? "Please enter the last name"
                      : null,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      fillColor: Colors.black,
                      hintText: "Last name",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
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
                gapH10,
                TextFormField(
                  cursorColor: Colors.white,
                  controller: _emailController,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter an email address';
                    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                        .hasMatch(value ?? "")) {
                      return 'Please enter a valid email address';
                    }
                    return null; // Return null if the input is valid
                  },
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      fillColor: Colors.black,
                      hintText: "Email Address",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
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
                gapH10,
                TextFormField(
                  cursorColor: Colors.white,
                  validator: (value) => _passwordController.text.isEmpty
                      ? "Please enter the password"
                      : null,
                  obscureText: isObscuredPassword,
                  controller: _passwordController,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isObscuredPassword = !isObscuredPassword;
                            });
                          },
                          child: Icon(
                            isObscuredPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                          )),
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      fillColor: Colors.black,
                      hintText: "Create Password",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
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
                gapH10,
                TextFormField(
                  cursorColor: Colors.white,
                  validator: (value) => _cPasswordController.text.isEmpty
                      ? "Please enter the confirm password"
                      : (_passwordController.text != _cPasswordController.text)
                          ? "Password dosen't match"
                          : null,
                  obscureText: isObscuredCPassword,
                  controller: _cPasswordController,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isObscuredCPassword = !isObscuredCPassword;
                            });
                          },
                          child: Icon(
                            isObscuredCPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                          )),
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      fillColor: Colors.black,
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
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
                Wrap(
                  alignment: WrapAlignment.start,
                  runSpacing: 16,
                  children: [
                    ...List.generate(
                        roles.length,
                        (index) => Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {
                                    selectedRole = index;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 17,
                                    width: 17,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: selectedRole == index
                                            ? Colors.white
                                            : Colors.transparent,
                                        border: Border.all(
                                            color: Color(0xFFC4C4C4))),
                                    child: Center(
                                      child: Icon(
                                        Icons.check,
                                        size: 16,
                                        color: selectedRole == index
                                            ? Colors.black
                                            : Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ),
                                gapW12,
                                Text(roles[index]),
                                gapW16,
                              ],
                            ))
                  ],
                ),
                gapH16,
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        isChecked = !isChecked;
                        setState(() {});
                      },
                      child: Container(
                        height: 17,
                        width: 17,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color:
                                isChecked ? Colors.white : Colors.transparent,
                            border: Border.all(color: Color(0xFFC4C4C4))),
                        child: Center(
                          child: Icon(
                            Icons.check,
                            size: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    gapW8,
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(
                              "https://thegodfreymethod.com/pages/terms-conditions"));
                        },
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "I agree with the ",
                            style: TextStyle(
                                color: Color(0xFF71717A),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                          TextSpan(
                              text: "Terms & Conditions",
                              style: TextStyle(
                                  // decoration: TextDecoration.underline,
                                  color: Color(0xFF0B6386),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12)),
                          TextSpan(
                            text: " of the Godfrey Method",
                            style: TextStyle(
                                color: Color(0xFF71717A),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ])),
                      ),
                    )
                  ],
                ),
                gapH32,
                InkWell(
                  onTap: () {
                    if (!isChecked) {
                      showSnackbar("Please accept the terms and conditions");
                    } else if (selectedRole == -1) {
                      showSnackbar("Please select a role");
                    } else {
                      if (_formkey.currentState!.validate()) {
                        _viewModel.signup(
                            SignupRequest(
                                devicetoken: AppConstants.fcmToken,
                                email: _emailController.text,
                                firstname: _firstNameController.text,
                                lastname: _lastNameController.text,
                                roleType: roles[selectedRole],
                                password: _passwordController.text),
                            context);
                      }
                    }
                    // navigateToScreen(AppRoute.loginView);
                  },
                  child: Container(
                    width: double.infinity,
                    // margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 39.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          colors: [Color(0xFF033245), Color(0xFF51CBFC)]),
                    ),
                    child: Center(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                gapH20
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {}

  @override
  void showSnackbar(String message, {Color? color}) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(message.toString()),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(context).clearSnackBars();
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
