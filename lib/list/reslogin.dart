import 'package:flutter/material.dart';

class Reslogin extends StatefulWidget {
  const Reslogin({super.key});

  @override
  State<Reslogin> createState() => _ResloginState();
}

class _ResloginState extends State<Reslogin> {

  TextEditingController n1=new TextEditingController();
  TextEditingController n2=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("LOGIN",style: TextStyle(color: Colors.white),),
        ),
        body: Container(padding: EdgeInsets.all(60),
          child: Column(
            children: [
              SizedBox(height: 30,),
              TextField(
                controller: n1,
                decoration: InputDecoration(
                  labelText: "emailid",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: n2,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()
                  {

                  }, child: Text("LOGIN"))
            ],
          ),
        ),
      ),

    );
  }
}
