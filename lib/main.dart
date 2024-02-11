import 'package:flutter/material.dart';
import 'package:resumeapp/list/reslist.dart';
void main()
{
  runApp(resumeapp());
}
class resumeapp extends StatelessWidget {
  const resumeapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Reslit(),
    );
  }
}
