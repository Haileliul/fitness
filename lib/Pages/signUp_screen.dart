import './login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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

  Widget _buildNameTextField() {
    return TextField(
      focusNode: _nameFocusNode,
      controller: _nameController,
      onSubmitted: (value) {
        FocusScope.of(context).requestFocus(_emailFocusNode);
      },
      decoration: InputDecoration(
        hintText: 'Full name',
        filled: true,
        fillColor: Color(0xFFFFF6F6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
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
        hintText: 'Email',
        filled: true,
        fillColor: Color(0xFFFFF6F6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      focusNode: _passwordFocusNode,
      controller: _passwordController,
      obscureText: _isObscured,
      decoration: InputDecoration(
        hintText: 'Password',
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
      ),
    );
  }

  String _selectedAge = 'Age';
  String _selectedSex = 'Sex';

  void _selectAge(BuildContext context) async {
    int startAge = 12;
    int endAge = 70;
    List<String> ageList = List.generate(
      endAge - startAge + 1,
      (index) => '${startAge + index}',
    );
    String? selected = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 100, 0, 0),
      items: ageList.map((age) {
        return PopupMenuItem(
          value: age,
          child: Text(age),
        );
      }).toList(),
      color: Colors.white,
    );
    if (selected != null) {
      setState(() {
        _selectedAge = selected;
      });
    }
  }

  void _selectSex(BuildContext context) async {
    List<String> sexList = ['Male', 'Female'];
    String? selected = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 100, 0, 0),
      items: sexList.map((sex) {
        return PopupMenuItem(
          value: sex,
          child: Text(sex),
        );
      }).toList(),
      color: Colors.white,
    );
    if (selected != null) {
      setState(() {
        _selectedSex = selected;
      });
    }
  }

  Widget _buildAgeButton() {
    return IconButton(
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.grey,
      ),
      onPressed: () {
        _selectAge(context);
      },
    );
  }

  Widget _buildSexButton() {
    return IconButton(
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.grey,
      ),
      onPressed: () {
        _selectSex(context);
      },
    );
  }

  Widget _buildAgeContainer() {
    return Container(
      height: 48,
      width: 116,
      decoration: BoxDecoration(
        color: Color(0xFFFFF6F6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            _selectedAge,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          _buildAgeButton(),
        ],
      ),
    );
  }

  Widget _buildSexContainer() {
    return Container(
      height: 48,
      width: 116,
      decoration: BoxDecoration(
        color: Color(0xFFFFF6F6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            _selectedSex,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          _buildSexButton(),
        ],
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
                          _buildAgeContainer(),
                          _buildSexContainer(),
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
                            onPressed: () {},
                            child: Text(
                              'Sign Up',
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
                            'Do you have an account? ',
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
                                'Sign in',
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
