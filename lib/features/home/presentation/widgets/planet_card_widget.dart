import 'package:flutter/material.dart';
import 'package:planet_x/core/shared/model/planet.dart';
import 'package:planet_x/core/utils/app_styles.dart';

class PlanetCardWidget extends StatelessWidget {
  final Planet planet;
  final VoidCallback onTap;

  const PlanetCardWidget({
    Key? key,
    required this.planet,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 100),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kPadding32),
                ),
                elevation: 8,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(kPadding32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 100),
                      Text(
                        planet.name.toString(),
                        style: kMontserratBold.copyWith(
                          fontSize: 35,
                          color: const Color(0xff47455f),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Solar System',
                        style: kMontserratRegular.copyWith(
                          fontSize: 23,
                          color: primaryTextColor,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: kPadding32),
                        child: Row(
                          children: [
                            Text(
                              "Know more",
                              style: kMontserratRegular.copyWith(
                                fontSize: 16,
                                color: secondaryTextColor,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: secondaryTextColor,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Hero(
            tag: planet.position,
            child: Image.asset(planet.iconImage.toString()),
          ),
          Positioned(
            top: 120,
            right: 20,
            child: IgnorePointer(
              child: Text(
                planet.position.toString(),
                style: kMontserratBold.copyWith(
                  fontSize: 150,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
