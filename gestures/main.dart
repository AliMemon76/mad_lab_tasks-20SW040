import 'package:flutter/material.dart';

void main() {
  runApp(GestureDemoApp());
}

class GestureDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Demo',
      home: GestureDemoScreen(),
    );
  }
}

class GestureDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showSnackbar(context, 'Tapped');
          },
          onDoubleTap: () {
            _showSnackbar(context, 'Double Tapped');
          },
          onLongPress: () {
            _showSnackbar(context, 'Long Pressed');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // To space the boxes evenly
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                alignment: Alignment.topLeft,
                child: const Text(
                  'TAP HERE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                alignment: Alignment.topRight,
                child: const Text(
                  'TAP HERE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
