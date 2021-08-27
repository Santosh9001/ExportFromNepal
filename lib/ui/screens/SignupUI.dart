import 'package:export_nepal/model/core/register.dart';
import 'package:export_nepal/network_module/api_response.dart';
import 'package:export_nepal/provider/registration_provider.dart';
import 'package:export_nepal/repositories/RegistrationRepository.dart';
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

  void register(String email, String firstName, String lastName,
      String password, BuildContext context) async {
    final _registrationProvider =
        Provider.of<RegistrationProvider>(context, listen: false);
    bool valid = await _registrationProvider.checkValid(email);
    if (valid) {
      try {
        Register? res = await _registrationProvider.registerUser(
            _emailController.text,
            _fNameController.text,
            _lNameController.text,
            _passwordController.text);
        if (res != null) {
          if (res.email != null) {
            Navigator.pop(context);
          }
        }
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Email already exisits")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
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
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
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
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
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

                      if (!validatePassword(value)) {
                        return 'A password must have minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character';
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
                      register(
                          _emailController.text,
                          _fNameController.text,
                          _lNameController.text,
                          _passwordController.text,
                          context);
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
                        final GoogleSignInAuthentication googleAuth =
                            await googleUser.authentication;

                        final OAuthCredential credential =
                            GoogleAuthProvider.credential(
                                accessToken: googleAuth.accessToken,
                                idToken: googleAuth.idToken);
                        await FirebaseAuth.instance
                            .signInWithCredential(credential)
                            .then((value) => print(value.user!.displayName));
                      },
                      child: Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                          FacebookAuth.instance.getUserData().then((userData) {
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
                              mainAxisAlignment: MainAxisAlignment.center,
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
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.fromLTRB(10,20,10,20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Want To Sell Your Products?",
                        style: kTextStyleSmallPrimary,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/sellerLogin');
                        },
                        child: Text(
                          "Sign Up As A Seller",
                          style: kTextStyleBlueBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
