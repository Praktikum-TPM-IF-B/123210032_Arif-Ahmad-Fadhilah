import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_login/main.dart';

void main() {
  testWidgets('Login UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify if the Login page displays correctly
    expect(find.text('Login'), findsOneWidget);

    // Enter username and password into text fields
    await tester.enterText(find.byType(TextField).first, 'test_username');
    await tester.enterText(find.byType(TextField).last, 'test_password');

    // Tap the login button and wait for the response
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // You can add more tests here based on your login logic
    // For example, checking if a loading spinner appears, or if an error message is shown for incorrect login credentials
  });
}
