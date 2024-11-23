import 'dart:convert';

import 'package:flutter_v1/model/user.dart';
import 'package:flutter_v1/services/base_services.dart';

class AdminServices extends BaseServices{
  Future<List<User>?> getAllUsers() async{
    try {
      final response=await getRequest('getAllUsers');
      if(response.statusCode==200){
        List<dynamic> jsonResponse=jsonDecode(response.body);
        return jsonResponse.map((json)=>User.fromJson(json)).toList();
      }else{
        print('Error: ${response.statusCode}');
        return null;
      }
    }catch(e){
      print('Error: $e');
      return null;
    }
  }
}