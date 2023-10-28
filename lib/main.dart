import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlipCardDemo(),
    );
  }
}

class FlipCardDemo extends StatefulWidget {
  @override
  _FlipCardDemoState createState() => _FlipCardDemoState();
}

class _FlipCardDemoState extends State<FlipCardDemo> {
  bool isFlipped = false;

  void flipCard() {
    setState(() {
      isFlipped = !isFlipped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('翻牌效果示例'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: flipCard,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: 200.0,
            height: 300.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: isFlipped
                ? Center(
                    child: Text(
                      '答案',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Center(
                    child: Text(
                      '點擊翻牌',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
