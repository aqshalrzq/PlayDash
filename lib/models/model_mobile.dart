import 'package:flutter/material.dart';

class Mobile {
  final int id;
  final String name;
  final String image;
  final double rating;
  final String description;

  Mobile(this.id, this.name, this.image, this.rating, this.description);
}

List<Mobile> listGamesMobile = [
  Mobile(
      1,
      "Mobile Legends",
      "assets/second/playdash_second_01.png",
      4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes."),
  Mobile(2, "PUBG: New State", "assets/second/playdash_second_02.png", 4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes."),
  Mobile(3, "Brawlhalla", "assets/second/playdash_second_03.png", 4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes."),
  Mobile(4, "Call of Duty: Mobile", "assets/second/playdash_second_04.png", 4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes."),
  Mobile(5, "NBA 2K", "assets/second/playdash_second_05.png", 4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes."),
  Mobile(6, "F1 Mobile Racing", "assets/second/playdash_second_06.png", 4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.")
];
