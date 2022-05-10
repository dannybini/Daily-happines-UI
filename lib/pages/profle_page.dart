import 'package:flutter/material.dart';
import 'package:ui_test_project/widgets/test_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 260.0,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.white60.withOpacity(0.5), BlendMode.color),
                      image: const NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/11/21/11/30/horse-1844792_1280.jpg',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.favorite_border, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.shopping_bag, color: Colors.white),
                    ],
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * .2,
                  top: MediaQuery.of(context).size.width * .2,
                  child: Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          Text(
                            "Biniyam Nebr0",
                            style: TextWidgets.middleWhiteText(),
                          ),
                          Text(
                            "I do stuff on my mobile phone. currently trying to improve myself",
                            style: TextWidgets.smallWhiteText(),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 600,
              transform: Matrix4.translationValues(0.0, -70.0, 0.0),
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const ListTile(
                          leading: Icon(Icons.location_on_rounded),
                          title: Text('My Address'),
                          trailing: Icon(Icons.navigate_next, size: 35),
                        ),
                        TextWidgets.shortDividers(),
                        const ListTile(
                          leading: Icon(Icons.group),
                          title: Text('Account'),
                          trailing: Icon(Icons.navigate_next, size: 35),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const ListTile(
                          leading: Icon(Icons.doorbell),
                          title: Text('Notification'),
                          trailing: Icon(Icons.navigate_next, size: 35),
                        ),
                        TextWidgets.shortDividers(),
                        const ListTile(
                          leading: Icon(Icons.device_unknown),
                          title: Text('Devices'),
                          trailing: Icon(Icons.navigate_next, size: 35),
                        ),
                        TextWidgets.shortDividers(),
                        const ListTile(
                          leading: Icon(Icons.key),
                          title: Text('Password'),
                          trailing: Icon(Icons.navigate_next, size: 35),
                        ),
                        TextWidgets.shortDividers(),
                        const ListTile(
                          leading: Icon(Icons.mode_comment),
                          title: Text('Language'),
                          trailing: Icon(Icons.navigate_next, size: 35),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
