import 'package:flutter/material.dart';
import 'package:playdash/components/color.dart';
import 'package:playdash/components/util.dart';
import 'package:playdash/models/model_mobile.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CardContentFooter extends StatelessWidget {
  const CardContentFooter({Key key, @required this.mobile, @required this.tapEvent}) : super(key: key);
  final Mobile mobile;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapEvent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16)
        ),
        child: Stack(
          children: [
            Hero(
              tag: mobile.id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  mobile.image,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: cdInfoDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            mobile.name,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: likeWidgetDecoration,
                            child: const Icon(
                              Icons.favorite
                            ),
                          ),
                        ],
                      ),
                      SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {},
                        starCount: 5,
                        rating: mobile.rating,
                        size: 16,
                        isReadOnly: true,
                        color: pdRatingStarColor,
                        borderColor: pdRatingStarColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
