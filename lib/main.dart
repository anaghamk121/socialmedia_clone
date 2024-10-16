import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia_clone/screens/home.dart';

void main() {
   runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Social Media Feed Clone',
       theme: ThemeData(
         primarySwatch: Colors.blueGrey,
       ),
       home: FeedScreen(),
     );
   }
 }