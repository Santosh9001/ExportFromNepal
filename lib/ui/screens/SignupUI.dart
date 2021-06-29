import 'package:export_nepal/provider/EmailValidProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:export_nepal/utils/validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../components/button.dart';

class SignUpUI extends StatefulWidget {
  const SignUpUI({Key? key}) : super(key: key);

  @override
  _SignUpUIState createState() => _SignUpUIState();
}

class _SignUpUIState extends State<SignUpUI> {
// Initially password is obscure
  bool _obscureText = true;
  bool _validEmail = true;
  late String _password;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _registrationProvider = Provider.of<RegistrationProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: _registrationProvider.loading
              ? Container(
                  child: CircularProgressIndicator(),
                )
              : _registrationProvider.register == null
                  ? Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: SvgPicture.asset(
                                "assets/images/Register.svg",
                                height: 120,
                                width: MediaQuery.of(context).size.width,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                "Become A User",
                                style: kTextStyleSmall,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                "Register An Account",
                                style: kTextStyleLarge,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 16, 0, 8.0),
                              child: TextFormField(
                                controller: _fNameController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20.0),
                                  hintText: "First Name",
                                  suffixIcon: Icon(
                                    Feather.user,
                                    size: 20.0,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your Full Name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                              child: TextFormField(
                                controller: _lNameController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20.0),
                                  hintText: "Last Name",
                                  suffixIcon: Icon(
                                    Feather.user,
                                    size: 20.0,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your Full Name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                              child: TextFormField(
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
                                  if (_registrationProvider.result) {
                                    return 'This email already exists';
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
                              height: 18.0,
                            ),
                            Button(
                              text: "Sign Up",
                              onPress: () {
                                if (_formKey.currentState!.validate()) {
                                  _registrationProvider.isValid(
                                      context, _emailController.text);
                                  _registrationProvider.registerUser(
                                      context,
                                      _fNameController.text,
                                      _lNameController.text,
                                      _emailController.text,
                                      _passwordController.text);
                                  // ScaffoldMessenger.of(context).showSnackBar(
                                  //     SnackBar(content: Text('Handle Login')));
                                }
                              },
                              color: kColorPrimary,
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              "or Sign Up Using Social Media",
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
                                  "Already a User?",
                                  style: kTextStyleSmall,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "Log in Now",
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
