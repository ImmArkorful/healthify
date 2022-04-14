import 'package:flutter/material.dart';
import 'package:healthify/home/my_home_page.dart';
import 'package:healthify/utils/app_input_decoration.dart';
import 'package:healthify/utils/app_resource.dart';
import 'package:healthify/widgets/gradient_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _startLoading = false;
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppResource.primaryColor,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/leaves.png"),
            alignment: Alignment.topRight,
            opacity: 0.3,
            fit: BoxFit.scaleDown,
          ),
          color: AppResource.primaryColor,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .8,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppResource.appName,
                        style: TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 155, 68),
                        ),
                      ),
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(
                        height: 64,
                      ),
                      TextField(
                        decoration:
                            AppInputDecoration().inputDecoration('Email'),
                        controller: _emailTextEditingController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration:
                            AppInputDecoration().inputDecoration('Password'),
                        controller: _passwordTextEditingController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: 16,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  GradientButton(
                    text: 'Login',
                    onPressed: () {},
                    colors: [
                      Color.fromARGB(255, 27, 112, 31),
                      Color.fromARGB(255, 27, 112, 31),
                      Color.fromARGB(255, 27, 112, 31),
                      Color.fromARGB(255, 200, 209, 188).withOpacity(0.9)
                    ],
                    textColor: Colors.white,
                  ),
                  // Container(
                  //   width: 300,
                  //   color: _startLoading ? Colors.grey : Colors.white,
                  //   child: TextButton(
                  //       onPressed: () {
                  //         handleLoginInput();
                  //       },
                  //       child: Text('Login')),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handleLoginInput() {
    String email = _emailTextEditingController.text.toString().trim();
    String password = _passwordTextEditingController.text.toString().trim();

    if (email.isEmpty || password.isEmpty) {
      return;
    }

    setState(() {
      _startLoading = true;
    });

    Navigator.pushAndRemoveUntil<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => MyHomePage(),
        ),
        (route) => false);
  }
}
