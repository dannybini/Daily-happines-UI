import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(161, 168, 178, 0.4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 16.0),
                  shadowColor: Colors.green,
                  borderOnForeground: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  ),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset.fromDirection(2, 3),
                              blurRadius: .5,
                              spreadRadius: .5)
                        ],
                        border: Border.all(
                            color: const Color.fromRGBO(161, 168, 178, 0.4),
                            width: 5)),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: Colors.green,
                    ),
                  ),
                ),
                const Text(
                  'Playlist',
                  style: TextStyle(fontSize: 30),
                ),
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  shadowColor: Colors.redAccent,
                  color: Colors.black,
                  child: const SizedBox(
                    height: 50,
                    child: Center(
                      child: Icon(
                        Icons.search,
                        size: 50,
                        color: Colors.green,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  shadowColor: Colors.redAccent,
                  color: Colors.black,
                  child: const SizedBox(
                    height: 100,
                    child: Center(
                      child: Icon(
                        Icons.search,
                        size: 50,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  shadowColor: Colors.redAccent,
                  color: Colors.black,
                  child: const SizedBox(
                    height: 100,
                    child: Center(
                      child: Icon(
                        Icons.search,
                        size: 50,
                        color: Colors.green,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
