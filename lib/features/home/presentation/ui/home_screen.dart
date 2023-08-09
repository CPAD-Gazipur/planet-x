import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:planet_x/core/shared/data/planet_data.dart';
import 'package:planet_x/core/utils/app_styles.dart';
import 'package:planet_x/features/details_view/presentation/ui/details_view_screen.dart';
import 'package:planet_x/features/home/presentation/widgets/planet_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: linearGradiant,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(kPadding32),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Explore',
                        style: kMontserratBold.copyWith(fontSize: 40),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      DropdownButton(
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              'Solar System',
                              style: kMontserratMedium.copyWith(fontSize: 24),
                            ),
                          ),
                        ],
                        onChanged: (value) {},
                        icon: Padding(
                          padding: const EdgeInsets.all(kPadding16),
                          child: Image.asset("assets/drop_down_icon.png"),
                        ),
                        underline: const SizedBox(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              padding: const EdgeInsets.only(left: kPadding32),
              child: Swiper(
                itemCount: planets.length,
                fade: 0.3,
                itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                layout: SwiperLayout.STACK,
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    activeSize: 20,
                    activeColor: Colors.yellow.shade300,
                    space: 5,
                  ),
                ),
                itemBuilder: (context, index) {
                  return PlanetCardWidget(
                    planet: planets[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (context, a, b) => DetailsViewScreen(
                            planet: planets[index],
                          ),
                          transitionsBuilder: (
                            BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child,
                          ) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
