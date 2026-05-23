import 'package:flutter/material.dart';

class CustomFloatingAction extends StatelessWidget {
  const CustomFloatingAction({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: CircleBorder(),
      backgroundColor: Color(0xff53ebd6),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
