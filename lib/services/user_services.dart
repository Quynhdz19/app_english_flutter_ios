import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_v1/modal/course.dart';
import 'package:flutter_v1/view/Home_Page/home_page.dart';
import 'package:flutter_v1/view/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'base_services.dart';

class UserService extends BaseServices {

  Future<void> login(String username, String password, BuildContext context) async {
    try{
      final response = await postRequest('login', {
        'username': username,
        'password': password,
      });
      if(response.statusCode==200){
        var responsedata=jsonDecode(response.body);
        final tokenlogin=responsedata['token'];
        SharedPreferences prefs=await SharedPreferences.getInstance();
        await prefs.setString('tokenlogin', tokenlogin);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
      }else{
        print('Error: ${response.statusCode}');
      }
    }catch(e){
      print('Error: $e');
    }
  }

  Future<void> register(String name, String email, String password,BuildContext context) async{
    try{
      final response= await postRequest('register', {
        'name': name,
        'email':email,
        'password':password
      });
      if(response.statusCode==201){
        print('Created');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
      }else{
        print('Error: ${response.statusCode}');
      }
    }catch(e){
      print('Error: $e');
    }
  }

  Future<List<Course>?> getCourses() async{
    try{
      final response= await getRequest('getCourses');
      if(response.statusCode==200){
        List<dynamic> jsonresponse= jsonDecode(response.body);
        return jsonresponse.map((json)=>Course.fromJson(json)).toList();
      }else{
        print('Error: ${response.statusCode}');
      }
    }catch(e){
      print('Error: $e');
    }
    return null;
  }

  Future<void> update_user (String name, String email, String password) async{
    try{
      final response= await postRequest('updateUser', {
        'name':name,
        'email':email,
        'password':password
      });
    }catch(e){
      print('Error: $e');
    }
  }
}
