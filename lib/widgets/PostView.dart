import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_test_project/pages/profle_page.dart';
import 'package:ui_test_project/widgets/test_widgets.dart';

class PostView extends StatelessWidget {
  String? title;
  Function? onTap = () {};
  Widget? page = const ProfilePage();
  PostView({Key? key, this.title, this.onTap, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => page ?? const ProfilePage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          height: 220,
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(1.0),
                            margin:
                                const EdgeInsets.fromLTRB(1.0, 0.0, 0.0, 0.0),
                            child: Image.network(
                              'https://cdn.pixabay.com/photo/2016/11/21/11/30/horse-1844792_1280.jpg',
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.green.shade500, width: 4.0),
                                borderRadius: BorderRadius.circular(14.0)),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Food App",
                                style: TextWidgets.middleBlackText(),
                              ),
                              Text(
                                'Date Created',
                                style: TextWidgets.smallGreyText(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(Icons.more_horiz),
                      )
                    ],
                  ),
                ),
                Text(
                  'This Apps is made for testing purposes',
                  style: TextWidgets.middleBlackText(),
                ),
                Text(
                  'Small description',
                  style: TextWidgets.smallGreyText(),
                ),
                const Divider(
                  thickness: 2.0,
                ),
                SizedBox(
                  height: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              MdiIcons.emoticonKiss,
                              color: Colors.redAccent,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text('Like'),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              MdiIcons.comment,
                              color: Colors.green,
                            ),
                            Text('Comment'),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
