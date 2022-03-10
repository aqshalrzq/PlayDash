import 'package:flutter/material.dart';
import 'package:playdash/components/color.dart';
import 'package:playdash/components/util.dart';
import 'package:playdash/models/models_desktop.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CardContentBar extends StatelessWidget {

  const CardContentBar({Key key, @required this.desktop}) : super(key: key);
  final Desktop desktop;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(desktop.image),
          fit: BoxFit.cover
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: cdInfoDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      desktop.name,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: likeWidgetDecoration,
                      child: const Icon(
                        Icons.favorite,
                      ),
                    ),
                  ],
                ),
                SmoothStarRating(
                  allowHalfRating: false,
                  onRated: (v) {},
                  starCount: 5,
                  rating: desktop.rating,
                  size: 24,
                  isReadOnly: true,
                  color: pdRatingStarColor,
                  borderColor: pdRatingStarColor,
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
