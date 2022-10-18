import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class I_Home extends StatefulWidget {
  const I_Home({Key? key}) : super(key: key);

  @override
  State<I_Home> createState() => _I_HomeState();
}

class _I_HomeState extends State<I_Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}
