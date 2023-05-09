import 'package:flutter/material.dart' hide MenuBar;
import 'package:minimal/components/components.dart';

// TODO Replace with object model.
const String listItemTitleText = "POWERING THE FUTURE";
const String listItemPreviewText =
    "We believe that the future of transportation and energy is green and sustainable, and we are committed to providing the information and resources necessary to help individuals and businesses make the switch to a cleaner, more efficient future.";

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: const <Widget>[
                  MenuBar(),
                  ListItem(
                      imageUrl:
                          "assets/images/ev_solar_green.jpeg",
                      title: listItemTitleText,
                      description: listItemPreviewText),
                 // divider,
                
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
