import 'dart:html';

import 'package:contact/contact_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ContactState>().load();
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Consumer<ContactState>(
        builder: (context, State, child) {
          return Container(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: State.ConName.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: State.colors[
                                            index % State.colors.length],
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          State.ConName[index].substring(0, 1),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 15,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                        State.ConName[index],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Column(
                                        children: [
                                          Text(State.PhoneNum[index]),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 5,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: FaIcon(FontAwesomeIcons.phone),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: FaIcon(FontAwesomeIcons.shareAlt),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon:
                                            FaIcon(FontAwesomeIcons.infoCircle),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          );
        },
      ),
    );
  }
}
