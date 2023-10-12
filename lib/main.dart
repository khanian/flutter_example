import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            print('Tab!');
          }, icon: Icon(Icons.home)),
          Icon(Icons.play_arrow),
        ],
        centerTitle: false,
        title: Text('This is App bar'),
      ),
      body: TestWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.bug_report),
        onPressed: () {
          print('Tab! FAB!');
        },
      ),
    ),
  ));
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          'Hello Flutter!',
          style: TextStyle(
            fontSize: 60,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
