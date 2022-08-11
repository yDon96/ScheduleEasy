import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:schedule_easy/widgets/top_bar.dart';


void main() {

  testWidgets('should show greeting message with the given username', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          appBar: TopBar(username: 'John Doe'),
        ),
      ));
      // Do something

      // Verify that our counter has incremented.
      expect(find.text('Hi,'), findsOneWidget);
      expect(find.text('John Doe'), findsOneWidget);
      expect(find.text('Jane Doe '), findsOneWidget);
    });
  });

  testWidgets('should properly mock Image.network and not crash', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
        await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            appBar: TopBar(username: 'John Doe'),
          )
        ));
      });
    },
  );
}