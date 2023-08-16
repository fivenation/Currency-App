import 'package:flutter/material.dart';

class RunApplication extends StatefulWidget {
  const RunApplication({super.key});

  @override
  State<RunApplication> createState() => _RunApplicationState();
}

class _RunApplicationState extends State<RunApplication> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('material app'),
    );
  }
}