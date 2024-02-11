import 'dart:convert';

import 'package:http/http.dart'as http;
class resapiser
{
  Future<dynamic> sentdata(String n1,n2,n3,n4,n5,n6) async
  {
    var client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/resume/signup");
    var response=await client.post(apiurl,headers: <String,String>
    {
      "Content-Type": "application/Json;charset=UTF-8 "
    },body: jsonEncode(<String,String>{

        "name":n1,
        "age":n2,
        "mobno":n3,
        "adrs":n4,
        "emailid":n5,
        "password":n6
    }));
    if(response.statusCode == 200)
      {
        return json.decode(response.body);
      }
    else
      {
        throw Exception("FAILED");

      }
  }



}