```dart
Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      // More informative error handling
      throw Exception('Failed to load data. Status code: ${response.statusCode}, body: ${response.body}');
    }
  } catch (e) {
    // Log error for debugging purposes
    print('Error fetching data: $e');
    // Return null to indicate failure
    return null; 
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print(data['key']);
  } else {
    print('Failed to fetch data.');
  }
}
```