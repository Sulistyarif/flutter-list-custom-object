import 'package:flutter/material.dart';
import 'package:flutter_list_custom_object/screens/list_data_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListDataPage(),
    );
  }
}
