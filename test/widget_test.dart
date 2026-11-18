import 'package:flutter_test/flutter_test.dart';
import 'package:ogbac_project/main.dart';

void main() {
  testWidgets('Sweet Crumbs app starts', (WidgetTester tester) async {
    await tester.pumpWidget(const SweetCrumbsApp());
    expect(find.text('Sweet Crumbs'), findsOneWidget);
    expect(find.text('BAKERY'), findsOneWidget);
  });
}
