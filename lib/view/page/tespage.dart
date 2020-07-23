import 'package:flutter/material.dart';

class Tes extends StatefulWidget {
  @override
  _TesState createState() => _TesState();
}

class _TesState extends State<Tes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tes'),
      ),
      body: const Center(
        child: Text(
          'Tes',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}