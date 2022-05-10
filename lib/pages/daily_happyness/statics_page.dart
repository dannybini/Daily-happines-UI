import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StaticsPage extends StatefulWidget {
  const StaticsPage({Key? key}) : super(key: key);

  @override
  _StaticsPageState createState() => _StaticsPageState();
}

class _StaticsPageState extends State<StaticsPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: size.height * .7,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Color.fromARGB(225, 68, 68, 204),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: size.width * .6,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(225, 68, 60, 204),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: const Center(
                                child: Text(
                                  'Weekly',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text('Daily',
                                    style: TextStyle(fontSize: 18)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                  const Text(
                    'Super Awesome',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Row(
                      children: const [
                        Text(
                          'Average mood',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.arrow_drop_down_circle_sharp,
                          color: Colors.blue,
                          size: 10,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '35.6',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 220),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('M'),
                      Text('T'),
                      Text('W'),
                      Text('T'),
                      Text('F'),
                      Text('S'),
                      Text('S'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: size.width * .6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Current Status',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('Last month'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 120,
                width: size.width * .9,
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('This Week', style: TextStyle(fontSize: 25)),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('12:30 - 15:45'),
                          Row(
                            children: const [
                              Icon(Icons.arrow_back_ios),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: size.width * .4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(child: Icon(Icons.person)),
                ),
                Container(
                  height: 150,
                  width: size.width * .4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(child: Icon(Icons.person)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
