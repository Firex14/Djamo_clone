import 'package:djamo_clone/modules/home/home_page_screen.dart';
import 'package:djamo_clone/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.globalProviders,
      child: MaterialApp(
        title: 'Djamo_clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: 'FuturaPT',
          useMaterial3: true,
        ),
        home: const HomePageScreen(),
        //routes: AppRoutes.routes,
      ),
    );
  }
}