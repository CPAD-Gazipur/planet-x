import 'package:flutter/material.dart';
import 'package:planet_x/core/shared/model/planet.dart';
import 'package:planet_x/core/utils/app_styles.dart';

class DetailsViewScreen extends StatelessWidget {
  final Planet planet;

  const DetailsViewScreen({Key? key, required this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: kPadding32),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: kPadding20,
                        right: kPadding20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 300),
                          Text(
                            planet.name.toString(),
                            style: kMontserratBold.copyWith(
                              fontSize: 55,
                              color: primaryTextColor,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Solar System",
                            style: kMontserratSmall.copyWith(
                              fontSize: 30,
                              color: primaryTextColor,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const Divider(color: Colors.black38),
                          const SizedBox(height: 15),
                          SizedBox(
                            //height: 140,
                            width: MediaQuery.of(context).size.width * 0.95,
                            child: Text(
                              planet.description.toString(),
                              style: kMontserratRegular.copyWith(
                                fontSize: 16,
                                color: contentTextColor,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          const SizedBox(height: 30),
                          const Divider(color: Colors.black38),
                          const SizedBox(height: 15),
                          Text(
                            "Gallery",
                            style: kMontserratSmall.copyWith(
                              fontSize: 24,
                              color: contentTextColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: planet.images!.length,
                        padding: const EdgeInsets.only(
                          left: kPadding16,
                        ),
                        itemBuilder: (context, index) {
                          return Card(
                            margin: const EdgeInsets.only(right: kPadding16),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(kPadding24),
                            ),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                planet.images![index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
            Positioned(
              right: -90,
              child: IgnorePointer(
                child: Hero(
                  tag: planet.position,
                  child: Image.asset(planet.iconImage.toString()),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 32,
              child: IgnorePointer(
                child: Text(
                  planet.position.toString(),
                  style: kMontserratBold.copyWith(
                    fontSize: 247,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
          ],
        ),
      ),
    );
  }
}
