import 'package:contact/contact_state.dart';
import 'package:contact/contact_view.dart';
import 'package:contact/test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(List<String> args) {
  runApp(
     MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ContactState()),
      ],
      child:  ContactApp(),
    ),
  );
}
class ContactApp extends StatelessWidget {
  const ContactApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactView(),
    );
  }
}