```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      // Handling potential null values
      final String? name = jsonResponse['name']?.toString();
      print('Name: $name');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // More informative error handling
    print('An error occurred: $e');
  }
}
```