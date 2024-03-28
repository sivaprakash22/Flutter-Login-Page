import 'package:flut_demo_page/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreens extends StatefulWidget {
  const IntroductionScreens({Key? key}) : super(key: key);

  @override
  _IntroductionScreensState createState() => _IntroductionScreensState();
}

class _IntroductionScreensState extends State<IntroductionScreens> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction Screens'),
      ),
      body: IntroductionScreen(
        key: introKey,
        pages: [
          PageViewModel(
            title: 'About page',
            body: 'This Login Demo',
            image: buildImage('assets/images/introscreen.jpg'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'More Detail',
            body: 'This app deals with login',
            image: buildImage('assets/images/introscreen.jpg'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'End',
            body: 'This is all about us',
            image: buildImage('assets/images/introscreen.jpg'),
            decoration: getPageDecoration(),
          ),
        ],
        onDone: () {
          if (kDebugMode) {
            print('Introduction Completed');
          }
          //----------- next screen here
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context)=> LoginDemo()),
          );
        },
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        next: const Icon(Icons.arrow_forward),
        done: const Text(
          'Done',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        dotsDecorator: getDotsDecorator(),

        //------center screen-------
        scrollPhysics: const BouncingScrollPhysics(), // Add scroll physics
      ),
    );
  }

  Widget buildImage(String imagePath) {
    return Center(
      child: Image.asset(
        imagePath,
        width: 350,
        height: 200,
        fit: BoxFit.cover, // image scaling
      ),
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      imagePadding: EdgeInsets.only(top: 120),
      pageColor: Colors.white,
      bodyPadding: EdgeInsets.only(top: 8, left: 20, right: 20),
      titlePadding: EdgeInsets.only(top: 50),
      bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 15),
    );
  }

  DotsDecorator getDotsDecorator() {
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 2),
      activeColor: Colors.indigo,
      color: Colors.grey,
      activeSize: Size(12, 5),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}


















