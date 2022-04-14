import 'package:flutter/material.dart';
import 'package:healthify/home/my_home_page.dart';
import 'package:healthify/utils/app_input_decoration.dart';
import 'package:healthify/utils/app_resource.dart';
import 'package:healthify/widgets/gradient_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              padding: EdgeInsets.only(left: 32, right: 32, bottom: 64),
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
                        'Sign up',
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
                      TextField(
                        decoration: AppInputDecoration()
                            .inputDecoration('Re-enter Password'),
                        controller: _passwordTextEditingController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'By continuing, you agree to our ',
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  GestureDetector(
                                    child: Text('Terms of',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    child: Text('service',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Text(
                                    ' and ',
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  GestureDetector(
                                    child: Text('Privacy Policy',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GradientButton(
                        text: 'Signup',
                        onPressed: () {},
                        colors: [
                          Color.fromARGB(255, 27, 112, 31),
                          Color.fromARGB(255, 27, 112, 31),
                          Color.fromARGB(255, 27, 112, 31),
                          Color.fromARGB(255, 200, 209, 188).withOpacity(0.9)
                        ],
                        textColor: Colors.white,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyHomePage(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  )
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
