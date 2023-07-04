import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled1/screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // ignore: non_constant_identifier_names
  ChangeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to((context) => const HomeScreen());
    });
  }

  // ignore: non_constant_identifier_names
  ChangeScreenNormal() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChangeScreenNormal();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SlideInRight(
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    height: 80,
                    child: Image.asset('assets/images/bg.png'),
                  ),
                ),
                FadeIn(
                  duration: const Duration(milliseconds: 1200),
                  child: Container(
                    child: const Text(
                      'Tube Mania',
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            BounceInDown(
              child: Text(
                '@Monirul Islam',
                style: TextStyle(
                    fontSize: 20, color: Colors.black.withOpacity(0.3)),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
