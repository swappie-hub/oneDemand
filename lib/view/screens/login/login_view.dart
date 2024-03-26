import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ondemand/data/auth/models/forget_password_model.dart';
import 'package:ondemand/data/auth/models/login_model.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/login/login_view_model.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> with BaseScreenView {
  late LoginViewModel _viewModel;
  TextEditingController _forgetEmailController = TextEditingController();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isChecked = false;
  final _formkey = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _viewModel = ref.read(authViewModel);
    _viewModel.attachView(this);
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(authViewModel);
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              // navigateToScreen(AppRoute.signupView);
              context.pushReplacementNamed(AppRoute.signupView.name);
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 32),
              child: Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  TextSpan(
                      text: "Sign-Up",
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
        elevation: 4,
        shadowColor: Colors.white,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Center(
            child: Image.asset(
              "assets/images/appbar_logo.png",
              height: 34.52,
              // height: 34.52.h,
            ),
          ),
        ),
      ),
      backgroundColor: kBlack,
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Text(
                "LOGIN",
                style: TextStyle(
                    fontFamily: "Good",
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                    fontSize: 24),
              ),
              gapH32,
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
                    color: Color(0xFF7D7878),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    filled: true,
                    fillColor: Colors.black,
                    hintText: "Email Address",
                    hintStyle: TextStyle(
                        color: Color(0xFF7D7878),
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
                obscureText: true,
                cursorColor: Colors.white,
                controller: _passwordController,
                validator: (value) => _passwordController.text.isEmpty
                    ? "Please enter the password"
                    : null,
                style: TextStyle(
                    color: Color(0xFF7D7878),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    filled: true,
                    fillColor: Colors.black,
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Color(0xFF7D7878),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Forget Password'.toUpperCase(),
                                    style: TextStyle(
                                        color: Color(0xFF008BC3), fontSize: 16),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        _forgetEmailController.clear();
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
                        content: Form(
                          key: _formkey2,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white),
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
                                controller: _forgetEmailController,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8),
                                    filled: true,
                                    fillColor: Colors.black,
                                    hintText:
                                        "Enter the email whose password you want to reset",
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
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text(
                              'Cancel'.toUpperCase(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            onPressed: () {
                              _forgetEmailController.clear();

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
                                  'CONFIRM',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                            onPressed: () {
                              if (_formkey2.currentState!.validate()) {
                                _viewModel.forgetPassword(
                                    ForgetPasswordRequest(
                                      email: _forgetEmailController.text,
                                    ),
                                    context);
                                _forgetEmailController.clear();
                              }
                            },
                            // Handle the submit action
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Forget Password?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12)),
                ),
              ),
              gapH32,
              InkWell(
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    _viewModel.login(
                        LoginRequest(
                            email: _emailController.text,
                            password: _passwordController.text),
                        context);
                  }
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
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
    // TODO: implement navigateToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
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
    // TODO: implement showSnackbar
  }
}
