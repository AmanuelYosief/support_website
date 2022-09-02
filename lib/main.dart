// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('/saifu_transparent.png'),
                  ),
                ),
                child: SizedBox(height: 75, width: 200)),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 100,
                ),
              ]),
              padding: const EdgeInsets.all(8.0),
              child: Text("SAIFU", style: TextStyle(fontSize: 24, color: Colors.black)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 2, blurRadius: 100),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Offline secure app that simplifies security and blockchain-use without relying on online serivices (with their vunerabilities) or purchase any expensive devices.\n ", textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),
                  Text("For best security and confidence: ensure your device is 100% offline and isn't/wasn't previously exposed to exploits or vulnerabilities", textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SelectableText("For support and feedback, email us at: tools@kiracore.com", textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium),
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Download SAIFU at: ", style: Theme.of(context).textTheme.titleMedium),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 75,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('/google_store.png'),
                            ),
                          ),
                          child: TextButton(
                              onPressed: () async {
                                if (await canLaunch("https://play.google.com/store/apps/details?id=com.saifu.app")) {
                                  await launch("https://play.google.com/store/apps/details?id=com.saifu.app");
                                } else {
                                  throw 'Could not launch null';
                                }
                              },
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
                              ),
                              child: Container()),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 75,
                          width: 200,
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('/app_store.png'), fit: BoxFit.contain),
                          ),
                          child: TextButton(
                              onPressed: () async {
                                if (await canLaunch("https://play.google.com/store")) {
                                  await launch("https://play.google.com/store");
                                } else {
                                  throw 'Could not launch null';
                                }
                              },
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
                              ),
                              child: Container()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
