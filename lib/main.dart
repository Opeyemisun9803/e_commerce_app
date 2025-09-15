import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/custom_themes/appbar_theme.dart';

void main() {

  // Todo: Add Widget Binding
  // Todo: Init LOcal Storage
  // Todo: Await Native  Splash 
  // Todo: Initialize Firebase 
  // Todo: Initialize Authenticatio

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
       theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}