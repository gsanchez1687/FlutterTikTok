import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_tok/config/theme/themeCuston.dart';
import 'package:tik_tok/presentation/discover/screens/discover_screen.dart';
import 'package:tik_tok/presentation/providers/discover_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DiscoverProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeCuston().getTheme,
        home: const DisvoverScreean()
      ),
    );
  }
}