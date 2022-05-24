import 'package:animation_tests/buttons/button_tween_screen.dart';
import 'package:animation_tests/gridviews/animated_gridview1.dart';
import 'package:animation_tests/listviews/animated_listview1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const ButtonTweenScreen()));
                  },
                  child: const Text('Button Tween'),
                ),
                SizedBox(height: height * 0.04),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const AnimatedListView1()));
                  },
                  child: const Text('Animated ListView 1'),
                ),
                SizedBox(height: height * 0.04),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const AnimatedGridview1()));
                  },
                  child: const Text('Animated GridView 1'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
