// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:animated_introduction/animated_introduction.dart';
import 'package:tutorial_mobile_app/utils/shared_preference.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tutorial_mobile_app/pages/signin.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    setIntroPage();
  }

  final List<SingleIntroScreen> pages = [
    SingleIntroScreen(
      centerBallRadius: 150,
      sideDotsBgColor: Colors.black,
      headerBgColor: Colors.blue.shade900, // Dark blue color
      title: 'Welcome to NL Academy App!',
      description: 'You will follow your courses using this app.',
      imageHeightMultiple: 10,
      key: UniqueKey(),
      slidePagePadding: const EdgeInsets.all(10),
      headerWidget: SizedBox(
        child: SvgPicture.asset(
          'assets/svg/mobile1.svg',
        ),
      ),
    ),
    SingleIntroScreen(
      centerBallRadius: 150,
      sideDotsBgColor: Colors.black,
      headerBgColor: Colors.blue.shade900, // Dark blue color
      title: 'NL Academy Students',
      description: 'Students use this app to follow their courses.',
      imageHeightMultiple: 10,
      key: UniqueKey(),
      mainCircleBgColor: Colors.blue,
      slidePagePadding: const EdgeInsets.all(10),
      headerWidget: SizedBox(
        child: SvgPicture.asset(
          'assets/svg/mobile2.svg',
        ),
      ),
    ),
    SingleIntroScreen(
      centerBallRadius: 150,
      sideDotsBgColor: Colors.black,
      headerBgColor: Colors.blue.shade900, // Dark blue color
      title: 'Teachers',
      description: 'Teachers use this app to manage their courses.',
      imageHeightMultiple: 10,
      key: UniqueKey(),
      mainCircleBgColor: Colors.blue,
      slidePagePadding: const EdgeInsets.all(10),
      headerWidget: SizedBox(
        child: SvgPicture.asset(
          'assets/svg/mobile3.svg',
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedIntroduction(
        slides: pages,
        doneText: 'Done',
        footerBgColor: Colors.blue.shade900, // Dark blue color
        activeDotColor: Colors.blue.shade900, // Dark blue color
        textColor: const Color.fromARGB(184, 0, 0, 0),
        inactiveDotColor: Colors.blue.shade100,
        containerBg: Colors.white, // White background
        indicatorType: IndicatorType.circle,
        footerPadding: const EdgeInsets.all(20),
        footerGradients: [
          Colors.blue.shade900, // Dark blue gradient start
          Colors.blue.shade100, // Light blue gradient end
        ],
        isFullScreen: true,
        footerRadius: 20,
        onDone: () {
          // Debugging print statement to verify onDone is triggered
          print('Done button pressed');
          try {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (_) => const Signin(),
              ),
              (route) => false,
            );
          } catch (e) {
            // Print any navigation errors
            print('Navigation error: $e');
          }
        },
      ),
    );
  }
}
