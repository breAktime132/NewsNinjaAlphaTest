import 'package:flutter/material.dart';
import 'card.dart';

void main() {
  runApp(card());
}

class card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/camel.jpeg'),
                radius: 50.0,
              ),
              Text(
                'Peter Abdulmasih',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'COMPUTER ENGINEER',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Sans Source Pro',
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.00),
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.teal),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '352-777-3042',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.00),
                child: Row(
                  children: [
                    Icon(Icons.mail, color: Colors.teal),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'peteramasih@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
