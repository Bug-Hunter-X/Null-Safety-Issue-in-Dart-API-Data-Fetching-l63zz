```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON string
      final jsonResponse = jsonDecode(response.body);
      // Accessing data using a key that may not always exist
      final String? name = jsonResponse['name'];
      print('Name: $name');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Printing a general exception message
    print('Error: $e');
  }
}
```