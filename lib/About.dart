import 'package:flutter/material.dart';
import 'card.dart';

void main() => runApp(AboutApp());

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: About(),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'We are glad you are here. We have one commitment, above all. To bring to you information. Not a commentary, but information. The human mind has been created for one purpose. That purpose is to grow. Transparency and facts in the age of information is becoming harder and harder to come by. That is why we are here. Please note, this app is a starting point; a project, if you will. Nothing will be perfect, and, of course, no filter will ever block out all misinformation or bias. That simply does not happen. But I hope this project will help you get your daily dose of information unharmed. This project is still quite new. Let us know of any bugs. Below is my contact information.',
              style: TextStyle(fontFamily: 'Oswald', fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.all(60),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => card()),
                );
              },
              child: Text(
                'Contact Information',
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 17,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Color(0xff970707),
              ),
            ),
          ),
        ],
      ),
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
}
