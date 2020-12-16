import 'package:cupcake/generated/l10n.dart';
import 'package:cupcake/ui/main_di.dart';
import 'package:cupcake/ui/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  MainDi.bind();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFFAE0CF),
        buttonColor: Color(0xFF642C99),
        fontFamily: "Lato",
        scaffoldBackgroundColor: Color(0xFFFAE0CF),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Color(0xFF642C99)),
        ),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: CupcakeRouter.routeHome,
      onGenerateRoute: CupcakeRouter.generateRoute,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
