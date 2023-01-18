import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image(image: AssetImage('images/fuel_icon.png')),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Privacy Policies",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Euclid", fontSize: 28),
              ),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Privacy",textAlign: TextAlign.center,),
          ),
        ),
      ),
    );
  }
}
