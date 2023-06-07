import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(
          // elevation: 20,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    fit: BoxFit.contain,
                    'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/07/ratatouille.jpg',
                  ),
                  Positioned(
                    right: 0,
                    bottom: 20,
                    child: Container(
                      color: Colors.black54,
                      child: Padding(
                        padding: REdgeInsets.all(8.0),
                        child: Text(
                          'Toast Hawalii',
                          // softWrap: true,
                          // maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.clock),
                      Text(' 20 min'),
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.bagShopping),
                      Text(' Simple'),
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.dollarSign),
                      Text('Affordable'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
