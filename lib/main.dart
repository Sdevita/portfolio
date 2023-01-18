import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:rifonify/privacy_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rifornify',
      theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.redAccent.shade200,
          fontFamily: 'Euclid'),
      home: const MyHomePage(title: 'Rifornify'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.white, fontFamily: "Euclid", fontSize: 28),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return const PrivacyPage();
                    })
                  );
                },
                child: const Text(
                  "Privacy policies",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    const Text(
                      'Rifornify',
                      style: TextStyle(fontSize: 50),
                    ),
                    const Text(
                      'Trova il distributore più economico',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        html.window.open(
                            'https://play.google.com/store/apps/details?id=com.salvatore.devita.earthquakesafe',
                            'new tab');
                      },
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Image(
                          image: AssetImage('images/google_play_badge.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 180,
                            child: Image(
                              image: AssetImage('images/shot1.png'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 180,
                            child: Image(
                              image: AssetImage('images/shot3.png'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
