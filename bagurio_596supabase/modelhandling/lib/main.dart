import 'package:flutter/material.dart';
import 'package:modelhandling/screen/chat_screen.dart';
//import 'package:modelhandling/screen/login_screen.dart';
//import 'package:modelhandling/screen/product_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://fflebjxjgdbdjhsljuid.supabase.co",
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZmbGVianhqZ2RiZGpoc2xqdWlkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4ODQ2OTAsImV4cCI6MjA4NjQ2MDY5MH0.jljlEvUDv8NtUJJq7pMlBBwAg9Ql4KicUuzjjTNjkOg",
    );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ChatPage(username: 'user1',),
    );
  }
}

