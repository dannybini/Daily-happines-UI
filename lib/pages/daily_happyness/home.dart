import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_test_project/pages/daily_happyness/rate_your_day_page.dart';
import 'package:ui_test_project/pages/daily_happyness/statics_page.dart';

class FellingsHome extends StatelessWidget {
  const FellingsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                  size: 70,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Good Morning ,',
                        style: TextStyle(fontSize: 30, color: Colors.grey),
                      ),
                      Text(
                        ' Cristian',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const RateYourDay());
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 30, 0, 20),
                child: Container(
                  height: 120,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(225, 127, 128, 220),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 20),
                          const CircleAvatar(
                            backgroundColor: Color.fromARGB(225, 68, 68, 204),
                            child: Icon(Icons.message_rounded),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'Daily reflection',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(225, 68, 68, 204),
                                        fontSize: 18),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.forward,
                                    color: Color.fromARGB(225, 68, 68, 204),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Self-Love ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          MdiIcons.pen,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 80,
                          child: VerticalDivider(
                            color: Colors.grey,
                            thickness: 2,
                            indent: 10,
                            endIndent: 10,
                            width: 20,
                          ),
                        ),
                        Icon(
                          MdiIcons.image,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 80,
                          child: VerticalDivider(
                            color: Colors.grey,
                            thickness: 2,
                            indent: 10,
                            endIndent: 10,
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
                          child: Card(
                            elevation: 4,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  )),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(70, 10, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Super Awesome',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(DateFormat('hh:mm a')
                                            .format(DateTime.now())),
                                        const SizedBox(width: 10),
                                        const Icon(
                                          Icons.person,
                                          size: 25,
                                          color: Colors.grey,
                                        ),
                                        const Icon(
                                          Icons.headset_mic,
                                          size: 25,
                                          color: Colors.grey,
                                        ),
                                        const Icon(
                                          MdiIcons.glasses,
                                          size: 25,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              const SizedBox(width: 20),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox(
                                  height: 100,
                                  width: 200,
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1585155248976-318ddd5260fc',
                                    height: 100,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox(
                                  height: 100,
                                  width: 200,
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1585155248976-318ddd5260fc',
                                    height: 100,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: const Color.fromARGB(225, 68, 68, 204),
            borderRadius: BorderRadius.circular(20)),
        child: const Icon(
          Icons.add,
          size: 50,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: Container(
          height: 80,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    MdiIcons.contentCopy,
                    size: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const StaticsPage());
                    },
                    child: const Icon(
                      MdiIcons.chartLineVariant,
                      size: 30,
                    ),
                  ),
                  const Icon(
                    Icons.person_outline,
                    size: 30,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
