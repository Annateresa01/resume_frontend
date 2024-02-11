import 'package:flutter/material.dart';
import 'package:resumeapp/list/reslogin.dart';
import 'package:resumeapp/list/ressign.dart';

class Reslit extends StatelessWidget {
  const Reslit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Welcome To Resume App",
          style: TextStyle(fontSize: 25,color: Colors.white),),

      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      foregroundColor: Colors.white
                  ),
                  onPressed: ()
                  {
Navigator.push(context, MaterialPageRoute(builder: (context)=>Ressign()));
                  }, child: Text("SIGNUP")),
              SizedBox(height: 30,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      foregroundColor: Colors.white
                  ),
                  onPressed: ()
                  {
Navigator.push(context, MaterialPageRoute(builder: (context)=>Reslogin()));
                  }, child: Text("LOGIN")),
            ],
          ),
        ),
      ),
    );
  }
}
