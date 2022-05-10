import 'package:flutter/material.dart';
import 'package:ui_test_project/pages/daily_happyness/home.dart';
import 'package:ui_test_project/pages/profle_page.dart';
import 'package:ui_test_project/widgets/PostView.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(children: [
        PostView(
          page: const ProfilePage(),
        ),
        const SizedBox(height: 20.0),
        PostView(page: const FellingsHome()),
      ]),
    );
  }
}
