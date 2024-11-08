void main() {
  // List of item prices in the cart
  List<double> cartItems = [5.99, 12.99, 20.49, 8.75, 3.45];

  // Call the function to calculate total price with tax
  double total = calculateTotal(cartItems, taxRate: 0.08);  // Example with 8% tax

  // Apply discount using an anonymous function that reduces prices below $10
  var filteredItems = cartItems.where((item) => item >= 10).toList();  // Filter out items below $10

  // Apply a discount to the filtered items
  double discountedTotal = applyDiscount(filteredItems, (price) => price * 0.9);  // 10% discount

  // Calculate the final price including special factorial-based discount
  double finalPrice = calculateFactorialDiscount(discountedTotal, filteredItems.length);

  print("Original cart items: $cartItems");
  print("Filtered items (only >= \$10): $filteredItems");
  print("Total price with tax: \$${total.toStringAsFixed(2)}");
  print("Total price after 10% discount: \$${discountedTotal.toStringAsFixed(2)}");
  print("Final price after special factorial discount: \$${finalPrice.toStringAsFixed(2)}");
}

// Function to calculate total price with an optional tax parameter
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double total = prices.reduce((a, b) => a + b);
  if (taxRate > 0) {
    total += total * taxRate;
  }
  return total;
}

// Higher-order function to apply a discount to all items in the list
double applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).reduce((a, b) => a + b);
}

// Recursive function to calculate factorial-based discount
double calculateFactorialDiscount(double price, int numberOfItems) {
  if (numberOfItems == 0) {
    return price; // Base case: no discount if there are no items
  } else {
    // Calculate factorial (n!) and apply it as a percentage discount
    double discountFactor = factorial(numberOfItems) / 100.0;
    return price - (price * discountFactor); // Apply factorial-based discount
  }
}

// Helper recursive function to calculate factorial
int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
