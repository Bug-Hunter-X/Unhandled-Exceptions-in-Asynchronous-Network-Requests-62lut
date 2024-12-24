```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final jsonData = jsonDecode(response.body);
      // Access data from jsonData
      print(jsonData['key']);
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including network errors
    print('Error: $e');
  }
}
```