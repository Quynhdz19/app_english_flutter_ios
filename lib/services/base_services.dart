import 'package:http/http.dart' as http;

class BaseServices{
  final String baseUrl='';
  String ? token;
  Map<String,String> _getHeaders(){
    return {
      'Content-Type':'application/json',
      if(token!=null) 'Authorization':'Bearer $token',
    };
  }
  Map<String,String> _postHeaders(){
    return {
      'Content-Type':'application/x-www-form-urlencoded',
      if(token!=null) 'Authorization':'Bearer $token',
    };
  }

  Future<http.Response> getRequest(String endpoint)async{
    final String url= 'baseUrl/$endpoint';
    final response=await http.get(Uri.parse(url),headers: _getHeaders());
    return  response;
  }
  Future<http.Response> postRequest(String endpoint,Map<String,dynamic>body) async{
    final String url ='baseUrl/$endpoint';
    final response= await http.post(
      Uri.parse(url),
      headers: _postHeaders(),
      body: body
    );
    return response;
  }

  // Future<http.Response> deleteRequest(String endpoint, Map<String, dynamic> body) async {
  //   final String url = 'baseUrl/$endpoint';
  //   final response =await http.delete(
  //     Uri.parse(url),
  //     headers: _postHeaders(),
  //     body: body
  //   );
  //   return response;
  // }
}
