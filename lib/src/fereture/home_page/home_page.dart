import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold();
  }
}
