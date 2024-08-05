import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modern_bottom_nav_bar/modern_bottom_nav_bar_flutter.dart';

void main() {
  group('ModernBottomNavBar Tests', () {
    testWidgets('ModernBottomNavBar creates with correct items',
        (WidgetTester tester) async {
      final items = [
        BottomNavItem(icon: Icons.home, label: 'Home', color: Colors.blue),
        BottomNavItem(icon: Icons.search, label: 'Search', color: Colors.green),
      ];

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          bottomNavigationBar: ModernBottomNavBar(
            items: items,
            onItemSelected: (index) {},
          ),
        ),
      ));

      expect(find.byType(ModernBottomNavBar), findsOneWidget);
      expect(find.byIcon(Icons.home), findsOneWidget);
      expect(find.byIcon(Icons.search), findsOneWidget);
    });

    testWidgets('ModernBottomNavBar responds to taps',
        (WidgetTester tester) async {
      int selectedIndex = -1;
      final items = [
        BottomNavItem(icon: Icons.home, label: 'Home', color: Colors.blue),
        BottomNavItem(icon: Icons.search, label: 'Search', color: Colors.green),
      ];

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          bottomNavigationBar: ModernBottomNavBar(
            items: items,
            onItemSelected: (index) {
              selectedIndex = index;
            },
          ),
        ),
      ));

      await tester.tap(find.byIcon(Icons.search));
      await tester.pump();

      expect(selectedIndex, 1);
    });

    test('BottomNavItem creates correctly', () {
      final item = BottomNavItem(
        icon: Icons.home,
        label: 'Home',
        color: Colors.blue,
      );

      expect(item.icon, Icons.home);
      expect(item.label, 'Home');
      expect(item.color, Colors.blue);
    });
  });
}
