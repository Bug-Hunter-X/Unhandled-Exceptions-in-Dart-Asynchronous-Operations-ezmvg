# Unhandled Exceptions in Dart Asynchronous Operations

This repository demonstrates a common error in Dart: neglecting to handle potential exceptions when making asynchronous network requests and parsing JSON responses.  The `bug.dart` file shows the flawed code, while `bugSolution.dart` provides a corrected version with robust error handling.

The original code lacks error handling, leading to crashes if the network request fails or the JSON is malformed. The solution implements a `try-catch` block to gracefully handle exceptions and prevents app crashes, improving application stability.