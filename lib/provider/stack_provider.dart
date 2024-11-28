import 'dart:convert';
import 'package:http/http.dart' as http;

class StackProvider {
  final String url = 'https://api.mocklets.com/p6764/test_mint';

  Future<List<dynamic>> fetchStack() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['items'];
      } else {
        throw Exception('Failed to load data from API');
      }
    } catch (e) {
       print('Error fetching data from API: $e');
      throw Exception('Error fetching data from API');
    }
  }
}
