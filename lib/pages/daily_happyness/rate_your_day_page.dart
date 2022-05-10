import 'package:flutter/material.dart';

class RateYourDay extends StatefulWidget {
  const RateYourDay({Key? key}) : super(key: key);

  @override
  _RateYourDayState createState() => _RateYourDayState();
}

class _RateYourDayState extends State<RateYourDay> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(225, 127, 128, 220),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Icon(
                  Icons.emoji_emotions,
                  size: 70,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Hey cristina. how are you doing this fine morning? ',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 25),
              ),
              const SizedBox(height: 80),
              const Center(
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  size: 100,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Super Awesome',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 25),
              ),
              const SizedBox(height: 40),
              Slider(
                value: _currentSliderValue,
                max: 100,
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              const SizedBox(height: 40),
              MaterialButton(
                  onPressed: () {},
                  child: Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(225, 105, 101, 188),
                      ),
                      child: const Center(
                          child: Text(
                        'Continue',
                        style: TextStyle(fontSize: 20),
                      ))))
            ],
          ),
        ),
      ),
    );
  }
}
