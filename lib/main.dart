import 'package:flutter/material.dart';
import 'Signup.dart';
import 'About.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';

//void main() => runApp(MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset('images/newshome.png'),
          ),
          Row(
            children: [
              buildButton('Sign up', context, Signup()),
              buildButton('About us', context, About()),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xff1f1f1f),
      appBar: AppBar(
        title: Text(
          'NewsNinja',
          style: TextStyle(fontFamily: 'Oswald', fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff970707),
      ),
    );
  }

  Expanded buildButton(String input, context, page) {
    return Expanded(
      flex: 1,
      child: TextButton(
        onPressed: () {
          openMyPage(context, page);
        },
        child: Text(
          input,
          style: TextStyle(fontFamily: 'Oswald', fontSize: 17),
        ),
        style: TextButton.styleFrom(
          primary: Color(0xff970707),
        ),
      ),
    );
  }

  void openMyPage(var context, var page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}
