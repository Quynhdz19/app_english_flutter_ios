import 'package:http/http.dart'as http;
class BaseService{
  final String baseUrl='';
  Future<http.Response> getRequest(String endpoint) async{
    final uri=Uri.parse('$baseUrl/$endpoint');
    final response=await http.get(uri);
    _handleErrors(response);
    return response;
  }
  Future<http.Response> postRequest(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl/$endpoint');
    final response = await http.post(url, body: body);
    _handleErrors(response);
    return response;
  }
  void _handleErrors(http.Response response){
    if(response.statusCode!=200){
      throw Exception('Error: ${response.statusCode}');
    }
  }
}
