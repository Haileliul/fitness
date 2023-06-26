import './login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:easy_localization/easy_localization.dart';
import '../translations/local_keys.g.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String dropdownSexValue = LocaleKeys.Male.tr();
  String dropdownAgeValue = '0';
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscured = true;

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  //  LocaleKeys.Login.tr(),

  Widget _buildNameTextField() {
    return TextField(
      focusNode: _nameFocusNode,
      controller: _nameController,
      onSubmitted: (value) {
        FocusScope.of(context).requestFocus(_emailFocusNode);
      },
      decoration: InputDecoration(
        hintText: LocaleKeys.hint_name.tr(),
        filled: true,
        fillColor: Color(0xFFFFF6F6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      focusNode: _emailFocusNode,
      controller: _emailController,
      onSubmitted: (value) {
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      },
      decoration: InputDecoration(
        hintText: LocaleKeys.Email.tr(),
        filled: true,
        fillColor: Color(0xFFFFF6F6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      focusNode: _passwordFocusNode,
      controller: _passwordController,
      obscureText: _isObscured,
      decoration: InputDecoration(
        hintText: LocaleKeys.Password.tr(),
        filled: true,
        fillColor: Color(0xFFFFF6F6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: IconButton(
          icon: Icon(_isObscured ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
        ),
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }

  Widget _buildAgeButton() {
    return Container(
      height: 48,
      width: 116,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(
            10,
          ))),
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: DropdownButton(
          iconDisabledColor: Colors.black,
          iconEnabledColor: Colors.black,
          dropdownColor: Colors.white,
          focusColor: Colors.white,
          onChanged: (newvalu) {
            setState(() {
              dropdownAgeValue = newvalu!;
            });
          },
          items: [
            DropdownMenuItem(
              child: Text(
                LocaleKeys.Age.tr(),
                style: TextStyle(color: Colors.black),
              ),
              value: '0',
            ),
            DropdownMenuItem(
              child: Text(
                "0-10",
                style: TextStyle(color: Colors.black),
              ),
              value: '0-10',
            ),
            DropdownMenuItem(
              child: Text(
                "11-23",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: '11-23',
            ),
            DropdownMenuItem(
              child: Text(
                "23-35",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: '23-35',
            ),
            DropdownMenuItem(
              child: Text(
                "35-45",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: '35-45',
            ),
            DropdownMenuItem(
              child: Text(
                "45-80",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: '45-80',
            ),
          ],
          underline: Text(" "),
          value: dropdownAgeValue,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildSexButton() {
    return Container(
      height: 48,
      width: 116,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(
            10,
          ))),
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: DropdownButton(
          iconDisabledColor: Colors.black,
          iconEnabledColor: Colors.black,
          dropdownColor: Colors.white,
          focusColor: Colors.white,
          onChanged: (newvalu) {
            setState(() {
              dropdownSexValue = newvalu!;
            });
          },
          items: [
            DropdownMenuItem(
              child: Text(
                LocaleKeys.Male.tr(),
                style: TextStyle(color: Colors.black),
              ),
              value: LocaleKeys.Male.tr(),
            ),
            DropdownMenuItem(
              child: Text(
                LocaleKeys.Femaile.tr(),
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: LocaleKeys.Femaile.tr(),
            ),
          ],
          underline: Text(" "),
          value: dropdownSexValue,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/back.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                margin: EdgeInsets.symmetric(horizontal: 26),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      _buildNameTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildEmailTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildPasswordTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildAgeButton(),
                          _buildSexButton(),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 48,
                          width: 124,
                          margin: EdgeInsets.only(left: 0, top: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFF43800),
                                Color.fromRGBO(244, 56, 0, 0),
                                Color(0xFFF43800),
                              ],
                              stops: [0.0153, 0.9821, 0.9821],
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Main');
                            },
                            child: Text(
                              LocaleKeys.Sign_up.tr(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(56),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            LocaleKeys.have_an_account.tr(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 26,
                            width: 100,
                            margin: EdgeInsets.only(left: 0, top: 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xFFF43800),
                                  Color.fromRGBO(244, 56, 0, 0),
                                  Color(0xFFF43800),
                                ],
                                stops: [0.0153, 0.9821, 0.9821],
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => LoginScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                LocaleKeys.SignIn.tr(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(56),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
