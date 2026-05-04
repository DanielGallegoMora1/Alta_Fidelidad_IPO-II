import 'package:flutter_test/flutter_test.dart';

import 'package:provincia_visited_prototype/app.dart';

void main() {
  testWidgets('prototype opens on map screen', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.text('Mapa de España'), findsOneWidget);
    expect(
        find.text('Toca una provincia para verla en detalle'), findsOneWidget);
  });
}
