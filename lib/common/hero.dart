import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeroSection extends StatelessWidget {

final  String welceomeText;

final  String ctaText;

  const HeroSection({Key key, this.welceomeText, this.ctaText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
          image: AssetImage('temp_slider_cover.png'))
        ),
        width: MediaQuery.of(context).size.width,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        Text(welceomeText, style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white)),
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
      );;
  }
}