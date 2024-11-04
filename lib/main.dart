
void main() {
  // Define and initialize variables
  int age = 25;
  double height = 5.9;
  String name = "Alice";
  bool isStudent = true;
  List<int> numbers = [3, 10, 55, 101, 2];

  print("Variables:");
  print("Age (int): $age");
  print("Height (double): $height");
  print("Name (String): $name");
  print("Is Student (bool): $isStudent");
  print("Numbers List: $numbers\n");

  // Type Conversion functions
  int stringToInt(String value) => int.parse(value);
  double stringToDouble(String value) => double.parse(value);
  String intToString(int value) => value.toString();
  double intToDouble(int value) => value.toDouble();

  // convertAndDisplay function
  void convertAndDisplay(String numberStr) {
    try {
      int intVal = stringToInt(numberStr);
      double doubleVal = stringToDouble(numberStr);

      print("Convert and Display:");
      print("String to Int: $intVal");
      print("String to Double: $doubleVal\n");
    } catch (e) {
      print("Conversion error: $e\n");
    }
  }

  // Testing convertAndDisplay function
  convertAndDisplay("42");

  // Control Flow Examples

  // If-Else Statements
  int number = -5;
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("$number is zero.");
  }

  if (age >= 18) {
    print("Eligible to vote.\n");
  } else {
    print("Not eligible to vote.\n");
  }

  // Switch Case for days of the week
  int day = 3;
  print("Day of the Week:");
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
  print("");

  // Loops
  // For Loop from 1 to 10
  print("For Loop (1 to 10):");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // While Loop from 10 to 1
  print("\nWhile Loop (10 to 1):");
  int count = 10;
  while (count >= 1) {
    print(count);
    count--;
  }

  // Do-While Loop from 1 to 5
  print("\nDo-While Loop (1 to 5):");
  int doCount = 1;
  do {
    print(doCount);
    doCount++;
  } while (doCount <= 5);

  // Complex Example
  print("\nComplex Example:");
  for (int num in numbers) {
    print("Number: $num");
    if (num % 2 == 0) {
      print("Even");
    } else {
      print("Odd");
    }

    // Categorize numbers using if-else
    if (num >= 1 && num <= 10) {
      print("Category: Small");
    } else if (num >= 11 && num <= 100) {
      print("Category: Medium");
    } else {
      print("Category: Large");
    }
    print(""); // Blank line for readability
  }
}
