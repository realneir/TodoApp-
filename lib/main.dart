import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/providers/todolistprovider.dart';
import 'package:todo/widgets/homepage.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => ToDoListProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
