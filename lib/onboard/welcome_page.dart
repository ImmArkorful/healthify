import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthify/onboard/login_page.dart';
import 'package:healthify/onboard/signup_page.dart';
import 'package:healthify/utils/app_resource.dart';
import 'package:healthify/widgets/gradient_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final Gradient _gradient = LinearGradient(
    colors: [
      Colors.lightGreen.withOpacity(0.3),
      Colors.green,
      Colors.green,
      Colors.black,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppResource.primaryColor,
        elevation: 0,
      ),
      body: Container(
        color: AppResource.primaryColor,
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: SvgPicture.asset('svgs/Indoor bike-bro.svg'),
            )),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * .55,
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ShaderMask(
                    blendMode: BlendMode.modulate,
                    shaderCallback: (Rect rect) => _gradient.createShader(rect),
                    child: Text(
                      AppResource.appName,
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    'Start counting the calories and get healthier with our app',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  GradientButton(
                    text: 'Login',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    colors: [
                      AppResource.primaryColor,
                      Color.fromARGB(255, 27, 112, 31),
                      Color.fromARGB(255, 27, 112, 31),
                      Color.fromARGB(255, 200, 209, 188).withOpacity(0.9)
                    ],
                    textColor: Colors.white,
                  ),
                  GradientButton(
                    text: 'SignUp',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                      // Navigator.pushNamed(context, '/onboard/login');
                    },
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                    ],
                    textColor: AppResource.primaryColor,
                    bgColor: Colors.white,
                    borderColor: AppResource.primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
