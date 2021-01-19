import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';

class HeroSection extends StatelessWidget {
  final String welceomeText;
  final String ctaText;
  const HeroSection({Key key, this.welceomeText, this.ctaText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sectionHeight = 500.0;
    var width = MediaQuery.of(context).size.width;
    var center = MainAxisAlignment.center;
    var centerCross = CrossAxisAlignment.center;
    var hearoBackgroundImage = 'temp_slider_cover.png';
    var button = Padding(
      padding: const EdgeInsets.symmetric(vertical: 36),
      child: FlatButton.icon(
          padding: EdgeInsets.symmetric(horizontal: 36, vertical: 36),
          color: Theme.of(context).accentColor,
          onPressed: () {
            // todo Booking form ?
            // Primary metric is Cusult - I prefer to initiate a chat for the data. After hours I will present a booking form.
          },
          icon: Icon(FontAwesomeIcons.calendarAlt),
          label: Text(ctaText)),
    );

    return Shimmer.fromColors(
      baseColor: Theme.of(context).accentColor,
      highlightColor: Theme.of(context).primaryColor,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(hearoBackgroundImage))),
        width: width,
        height: sectionHeight,
        child: Column(
          mainAxisAlignment: center,
          crossAxisAlignment: centerCross,
          children: [
            Text(welceomeText,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.white)),
            button
          ],
        ),
      ),
    );
  }
}
