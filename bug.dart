```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON string
      final jsonData = jsonDecode(response.body);
      // Access data elements. For example, if the JSON has a field called 'name'
      final name = jsonData['name']; 
      print('Name: $name');
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Catch potential errors during API call or JSON decoding
    print('Error: $e');
    // Handle the error appropriately, perhaps retrying or showing a user-friendly message
  }
}
```