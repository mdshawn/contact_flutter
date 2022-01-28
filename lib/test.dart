import 'package:contact/contact_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Test extends StatelessWidget {
  const Test({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ContactState>().load;
    return Scaffold(
      body: Text("data"),
      );
  
  }
}