import 'package:flutter_test/flutter_test.dart';
import 'package:tunnel/main.dart';

void main() {
  testWidgets('TUNNEL home screen shows disconnected state', (tester) async {
    await tester.pumpWidget(const TunnelApp());

    expect(find.text('TUNNEL'), findsOneWidget);
    expect(find.text('VPN neconfigurat'), findsOneWidget);
    expect(find.text('CONNECT'), findsOneWidget);
  });
}
