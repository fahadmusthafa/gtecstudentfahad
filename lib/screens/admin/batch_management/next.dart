import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Live Link Created')),
      body: Center(
        child: Text('Live Link has been created successfully!'),
      ),
    );
  }
}
