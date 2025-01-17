import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/constants/app_bar.dart';
import 'package:weather_app/utils/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              left: 15.0,
              right: 15.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const LocationAppBar(),
                Text(
                  "in sync",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  "Friday, 25 December 2020",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '22',
                        style: themeData.isLightMode
                            ? Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(color: Colors.black)
                            : Theme.of(context).textTheme.displayLarge,
                      ),
                      TextSpan(
                        text: '°C',
                        style: themeData.isLightMode
                            ? Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(color: Colors.black)
                            : Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/svgs/down_arrow.svg"),
                        Text(
                          "16°C",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svgs/up_arrow.svg"),
                        Text(
                          "26°C",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      "assets/images/drizzle_white.svg",
                      colorFilter: themeData.isLightMode
                          ? const ColorFilter.mode(
                              Colors.black, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                    ),
                    // SvgPicture.asset(
                    //   "assets/images/drizzle_white.svg",
                    // ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Light Drizzle",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/svgs/sunrise.svg"),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "09:18 AM",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svgs/sunrise.svg"),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "06:32 PM",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                // TextButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, DetailsScreen.id);
                //   },
                //   child: const Text("Details"),
                // ),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
