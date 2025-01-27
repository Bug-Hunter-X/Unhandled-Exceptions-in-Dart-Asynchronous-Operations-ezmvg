```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        final name = jsonData['name'] ?? 'N/A'; // Handle missing fields
        print('Name: $name');
      } catch (jsonError) {
        print('JSON decoding error: $jsonError');
        // Additional handling for JSON parsing errors
      }
    } else {
      print('Request failed with status: ${response.statusCode}. Response body: ${response.body}');
      // Handle non-200 status codes
    }
  } catch (e) {
    print('Error: $e');
    // Handle network errors or other exceptions
  }
}
```