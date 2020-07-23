import 'package:flutter/material.dart';

class ComPro extends StatefulWidget {
  @override
  _ComProState createState() => _ComProState();
}

class _ComProState extends State<ComPro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compro'),
      ),
      body: const Center(
        child: Text(
          'Compro',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}