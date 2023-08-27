import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:pet_app/screens/post_screen.dart';

void main() {
  runApp(const ProviderScope(
      child: MyApp(),
    ),
);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booking App',
      home: PostScreen(),
    );
  }
}