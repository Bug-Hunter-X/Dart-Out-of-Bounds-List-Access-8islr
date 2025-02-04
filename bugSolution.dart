```dart
List<int> numbers = [1, 2, 3, 4, 5];

// Safe way to access elements:
// Check if the index is within bounds before accessing it
try {
  int indexToAccess = 5;
  if (indexToAccess >= 0 && indexToAccess < numbers.length) {
    int value = numbers[indexToAccess];
    print('Value at index $indexToAccess: $value');
  } else {
    print('Index out of bounds');
  }
} catch (e) {
  print('Error: $e');
}

// Alternatively, use the .get() method for null safety
int? safeValue = numbers.get(5); // Returns null if index is out of bounds
if(safeValue != null){
  print('Safe Value: $safeValue');
}
```