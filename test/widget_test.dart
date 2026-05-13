// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:loginpage/main.dart';

void main() {
  testWidgets('VibelyApp smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const VibelyApp());
    
    // Wait for initial animations to settle (but not the repeating ones)
    await tester.pump(const Duration(milliseconds: 500));

    // Verify that the login page is displayed
    expect(find.text('Se connecter'), findsWidgets);
    expect(find.text('Se connecter à Vibely'), findsOneWidget);

    // Verify that the email and password fields are present
    expect(find.text('Adresse e-mail'), findsOneWidget);
    expect(find.text('Mot de passe'), findsOneWidget);

    // Verify that social login options are present
    expect(find.text('ou continuer avec'), findsOneWidget);
    expect(find.text('Google'), findsOneWidget);
    expect(find.text('Apple'), findsOneWidget);
    expect(find.text('GitHub'), findsOneWidget);
  });
}