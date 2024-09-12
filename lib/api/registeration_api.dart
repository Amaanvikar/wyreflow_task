import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> loginUser({
  required String email,
  required String password,
}) async {
  var url = Uri.parse('http://13.127.246.196:8000/login/');

  try {
    var response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      var errorData = jsonDecode(response.body);
      return {
        'error': errorData['message'] ?? 'Login failed',
        'success': false,
      };
    }
  } catch (e) {
    print('Error: $e');
    return null;
  }
}
