import 'package:flutter/material.dart';

import 'package:dsc_login_view/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.themeLight,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    TextTheme appTextTheme = Theme.of(context).textTheme;
    String imageLink =
        'https://images.squarespace-cdn.com/content/v1/5d1ca1f00ce2d100019dfe1a/1598976572612-NBX4J4VMMO2BHJZ8LJSV/Dynamic+Waves.jpg?format=750w';
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          color: Colors.red,
          height: appSize.height,
        ),
        buildWaveBackground(imageLink),
        buildStackColumn(appTextTheme),
        buildBottomContainer(appSize, appTextTheme)
      ],
    ));
  }

  Positioned buildStackColumn(TextTheme appTextTheme) {
    return Positioned(
      top: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 40.0, top: 80),
        child: Container(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/login_icon.png',
                  width: 60,
                  height: 60,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'DSC Flutter Summit Login Ekrani',
                style: appTextTheme.headline3,
              )
            ],
          ),
        ),
      ),
    );
  }

  Positioned buildWaveBackground(String imageLink) {
    return Positioned(
      top: 0,
      child: Image.network(imageLink),
    );
  }

  Container buildBottomContainer(Size appSize, TextTheme appTheme) {
    return Container(
      height: appSize.height * 0.7,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildContainerHeader(appTheme),
            SizedBox(height: 40),
            buildTextField(appTheme),
            SizedBox(height: 20),
            buildForgotPasswordButton(appTheme),
            SizedBox(height: 40),
            buildElevatedLoginButton(appTheme),
            SizedBox(height: 40),
            buildSocialButtonsRow()
            // Text('or sign in with'),
            // Row()
          ],
        ),
      ),
    );
  }

  Padding buildSocialButtonsRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LoginAssetImage(
            imagePath: 'assets/google.png',
          ),
          LoginAssetImage(
            imagePath: 'assets/facebook.png',
          ),
          LoginAssetImage(
            imagePath: 'assets/twitter.png',
          ),
        ],
      ),
    );
  }

  ElevatedButton buildElevatedLoginButton(TextTheme appTheme) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: Color(0xffFF7F55), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
        child: Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              'Sign in',
              style: appTheme.subtitle1,
            )));
  }

  GestureDetector buildForgotPasswordButton(TextTheme appTheme) {
    return GestureDetector(
      onTap: () {
        print('hello');
      },
      child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Forgot Password?',
            style: appTheme.bodyText1!.copyWith(color: Colors.orange),
          )),
    );
  }

  TextField buildTextField(TextTheme appTheme) {
    return TextField(
      style: appTheme.bodyText1!.copyWith(fontSize: 16, color: Colors.black),
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(
            Icons.vpn_key_outlined,
            color: Colors.black,
          ),
          label: Text(
            'Password',
            style: appTheme.bodyText1!.copyWith(fontSize: 18),
          )),
    );
  }

  Row buildContainerHeader(TextTheme appTheme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Back', style: appTheme.headline4),
            SizedBox(height: 10),
            Text('Alice', style: appTheme.headline4),
          ],
        ),
        CircleAvatar(
          radius: 30,
          child: Text('AL', style: appTheme.headline3),
        )
      ],
    );
  }
}

class LoginAssetImage extends StatelessWidget {
  String imagePath;
  LoginAssetImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: 30,
      height: 30,
    );
  }
}
