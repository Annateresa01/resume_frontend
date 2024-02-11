import 'package:flutter/material.dart';
import 'package:resumeapp/services/resapiser.dart';

class Ressign extends StatefulWidget {
  const Ressign({super.key});

  @override
  State<Ressign> createState() => _RessignState();
}

class _RessignState extends State<Ressign> {
  TextEditingController n1=new TextEditingController();
  TextEditingController n2=new TextEditingController();
  TextEditingController n3=new TextEditingController();
  TextEditingController n4=new TextEditingController();
  TextEditingController n5=new TextEditingController();
  TextEditingController n6=new TextEditingController();

void resdata() async
{
  final response=await resapiser().sentdata(n1.text, n2.text, n3.text, n4.text, n5.text, n6.text);
}


  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              TextField(
                controller: n1,
                decoration: InputDecoration(
                labelText: "name",
                border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: n2,
                decoration: InputDecoration(
                  labelText: "Age",
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: n3,
                decoration: InputDecoration(
                  labelText: "MobNo",
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: n4,
                decoration: InputDecoration(
                  labelText: "Adress",
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: n5,
                decoration: InputDecoration(
                  labelText: "EmailId",
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: n6,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: resdata, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
