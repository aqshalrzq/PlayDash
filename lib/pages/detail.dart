import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:playdash/components/color.dart';
import 'package:playdash/components/responsive.dart';
import 'package:playdash/models/model_mobile.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Detail extends StatelessWidget {

  final Mobile mobile;
  const Detail({Key key, this.mobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          // DETAILS
          // STATE - IMAGE
          Container(
            height: size.height * 0.4,
            child: Hero(
              tag: mobile.id,
              child: Image.asset(
                mobile.image,
                height: size.height * 0.4,
                width: size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // DETAILS
          // STATE - COMPONENTS
          DelayedDisplay(
            delay: const Duration(milliseconds: 100),
            fadingDuration: const Duration(milliseconds: 300),
            slidingBeginOffset: const Offset(0, 1),
            child: Container(
              height: size.height * 0.7,
              width: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.35),
              padding: const EdgeInsets.all(32),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32)
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: SafeArea(
                  top: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // STATE - NAME
                      Text(
                        mobile.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isTab(context) ? 32 : 24
                        ),
                      ),
                      const SizedBox(
                        height: 8,),
                      // STATE - RATING
                      Row(
                        children: [
                          SmoothStarRating(
                            allowHalfRating: true,
                            onRated: (v) {},
                            starCount: 5,
                            rating: mobile.rating,
                            size: isTab(context) ? 32 : 24,
                            color: pdRatingStarColor,
                            borderColor: pdRatingStarColor,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            mobile.rating.toString(),
                            style: TextStyle(
                              fontSize: isTab(context) ? 24 : 16
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      // STATE - DESCRIPTION
                      Text(
                        "Description",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: isTab(context) ? 24 : 24
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        mobile.description,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: isTab(context) ? 16 : 14,
                          letterSpacing: 0.5,
                          height: 2
                        ),
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      // STATE - ACTION
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Rp 0",
                                  style: TextStyle(
                                    fontSize: isTab(context) ? 36 : 28,
                                    fontWeight: FontWeight.w700,
                                    color: pdPrimaryColor
                                  ),
                                ),
                                TextSpan(
                                  text: "/",
                                  style: TextStyle(
                                      fontSize: isTab(context) ? 28 : 20,
                                      fontWeight: FontWeight.w700,
                                      color: pdPrimaryColor
                                  ),
                                ),
                                TextSpan(
                                  text: "Games",
                                  style: TextStyle(
                                      fontSize: isTab(context) ? 24 : 16,
                                      fontWeight: FontWeight.w700,
                                      color: pdPrimaryColor
                                  ),
                                ),
                              ]
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            borderRadius: BorderRadius.circular(48),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: pdPrimaryColor
                              ),
                              width: isTab(context) ? 300 : 150,
                              height: isTab(context) ? 70 : 50,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                                child: Text(
                                  'Download!',
                                  style: TextStyle(
                                    fontSize: isTab(context) ? 24 : 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

