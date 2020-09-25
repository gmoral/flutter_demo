import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../../flutter_demo/lib/client/sign_in/sign_in_page.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Test Sign in', (WidgetTester tester) async {
    //Given
    bool waiting = false;
    VoidCallback loginPage;
    VoidCallback checkAuthState;
    VoidCallback signInWithPin;

    //When
    await tester.pumpWidget(MaterialApp(
        home: SignInPage(
            waiting: waiting,
            loginPage: loginPage,
            checkAuthState: checkAuthState,
            signInWithPin: signInWithPin,
            authState: null)));

    await tester.pump();

    //Them
    expect(find.byKey(SignInPage.signInButtonKey), findsOneWidget);
    expect(find.byKey(SignInPage.signInDetailKey), findsOneWidget);
    expect(find.byKey(SignInPage.signInTextKey), findsOneWidget);
  });
}
