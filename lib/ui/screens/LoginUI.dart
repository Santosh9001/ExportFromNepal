import 'package:export_nepal/provider/LoginTokenProvider.dart';
import 'package:export_nepal/ui/screens/ForgotPasswordUI.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import '../components/button.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
// Initially password is obscure
  bool _obscureText = true;
  late String _password;
  final _formKey = GlobalKey<FormState>();

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _loginProvider = Provider.of<LoginTokenProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: _loginProvider.loading
              ? Container(
                  child: CircularProgressIndicator(),
                )
              : _loginProvider.loginToken == null
                  ? Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              "assets/images/Login.svg",
                              height: 150,
                              width: MediaQuery.of(context).size.width,
                              allowDrawingOutsideViewBox: true,
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                "WELCOME BACK",
                                style: kTextStyleSmall,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                "Account Login",
                                style: kTextStyleLarge,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 16, 0, 8.0),
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                controller: _emailController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20.0),
                                  hintText: "Email Address",
                                  suffixIcon: Icon(
                                    Feather.mail,
                                    size: 20.0,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your Email';
                                  }
                                  if (!validateEmail(value)) {
                                    return 'Please enter a valid Email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0),
                              child: TextFormField(
                                controller: _passwordController,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20.0),
                                  hintText: "Password",
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 4.0),
                                    child: IconButton(
                                      onPressed: _toggle,
                                      icon: Icon(
                                        Fontisto.eye,
                                        size: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your Password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordUI()));
                              },
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  "Forgot Password?",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(color: kColorPrimary),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Button(
                              text: "Log In",
                              onPress: () {
                                if (_formKey.currentState!.validate()) {
                                  _loginProvider.fetchUserToken(
                                      context,
                                      _emailController.text,
                                      _passwordController.text)!;
                                }
                              },
                              color: kColorPrimary,
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              "or Login Using Social Media",
                              style: kTextStyleSmall,
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    final GoogleSignInAccount googleUser =
                                        (await GoogleSignIn().signIn())!;
                                    final GoogleSignInAuthentication
                                        googleAuth =
                                        await googleUser.authentication;

                                    final OAuthCredential credential =
                                        GoogleAuthProvider.credential(
                                            accessToken: googleAuth.accessToken,
                                            idToken: googleAuth.idToken);
                                    await FirebaseAuth.instance
                                        .signInWithCredential(credential)
                                        .then((value) =>
                                            print(value.user!.displayName));
                                  },
                                  child: Container(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              AntDesign.google,
                                              size: 15.0,
                                              color: kColorPrimary,
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              "Login with Google",
                                              style: kButtonDarkStyle,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    FacebookAuth.instance.login(permissions: [
                                      "public_profile",
                                      "email"
                                    ]).then((value) {
                                      FacebookAuth.instance
                                          .getUserData()
                                          .then((userData) {
                                        setState(() {
                                          print(userData);
                                        });
                                      });
                                    });
                                  },
                                  child: Container(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Entypo.facebook,
                                              size: 15.0,
                                              color: kColorPrimary,
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              "Login with Facebook",
                                              style: kButtonDarkStyle,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't Have an Account?",
                                  style: kTextStyleSmall,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/register');
                                  },
                                  child: Text(
                                    "Sign Up Here",
                                    style: kTextStyleBlueBold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      child: Text('Dashboard'),
                    ),
        ),
      ),
    );
  }
}
