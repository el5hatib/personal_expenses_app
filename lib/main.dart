import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/home.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Belanosima',
        colorScheme: const ColorScheme.light(
          primary: Colors.deepPurple ,
          secondary: Colors.amber,
          shadow: Colors.white70,
        ),
        /*cardTheme: const CardTheme(
          color: Colors.white ,
          elevation: 4,
          shadowColor: Colors.white70,
        ),*/
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.black ,
            fontSize: 18 ,
            fontWeight: FontWeight.w400 ,
          ),
          bodySmall: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
      title: "Personal Expenses",
      home: const MyHomePage(),
    );
  }
}

