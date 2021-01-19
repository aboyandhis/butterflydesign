import 'package:butterfly_dart/common/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  static final String routeName = "/";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        drawer: MyDrawer(),
        body: 
          body(
            context: context,
                      ctaText: "Book Meeting",
                    welceomeText: "Digital Brand Management",
            iconData: FontAwesomeIcons.calendar),
        );
  }

  Widget body(
          {BuildContext context,
          String welceomeText,
          String ctaText,
          IconData iconData}) =>
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        Text(welceomeText),
        SizedBox(height: 36),
        FlatButton.icon(
          padding: EdgeInsets.symmetric(horizontal: 36, vertical: 36),
          color: Theme.of(context).accentColor,
          onPressed: () {
            // todo Booking form ?
            // Primary metric is Cusult - I prefer to initiate a chat for the data. After hours I will present a booking form.
          },
          icon: Icon(FontAwesomeIcons.calendarAlt),
          label: Text(ctaText))
            ],
          ),
      );
}
