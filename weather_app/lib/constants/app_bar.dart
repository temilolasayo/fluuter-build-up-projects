import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/utils/theme_provider.dart';
import 'package:weather_app/view/location/locations.dart';
import 'package:weather_app/view/settings/settings.dart';

class LocationAppBar extends StatelessWidget {
  const LocationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Provider.of<ThemeProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mumbai',
                style: themeData.isLightMode
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.black)
                    : Theme.of(context).textTheme.titleLarge),
            Text(
              'Current Location',
              style: Theme.of(context).textTheme.labelSmall,
            )
          ],
        ),
        Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(LocationsScreen.id);
                },
                child: SvgPicture.asset("assets/svgs/location.svg")),
            const SizedBox(
              width: 15.0,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SettingsScreen.id);
                },
                child: SvgPicture.asset("assets/svgs/settings.svg")),
          ],
        ),
      ],
    );
  }
}
