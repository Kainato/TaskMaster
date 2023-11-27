import 'package:provider/provider.dart';
import 'package:task_master/Classes/app/AppTheme.dart';
import 'package:task_master/Classes/app/ModeTheme.dart';
import 'package:task_master/firebase_options.dart';
import 'package:task_master/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ModeTheme(),
      builder: (context, _) {
        return MaterialApp(
          home: const HomePage(),
          locale: const Locale('pt', 'BR'),
          themeMode: Provider.of<ModeTheme>(context).themeMode,
          themeAnimationCurve: Curves.bounceInOut,
          themeAnimationDuration: const Duration(milliseconds: 500),
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
        );
      },
    );
  }
}
