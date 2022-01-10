import 'package:flutter/material.dart';


class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: const Center(
        child: Icon(
          Icons.favorite, size: 150.0, color: Colors.amber,
        ),
      ),
    );
  }

}