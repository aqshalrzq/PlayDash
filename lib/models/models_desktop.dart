import 'package:flutter/material.dart';

class Desktop {
  final int id;
  final String name;
  final String image;
  final double rating;
  final String description;

  Desktop(this.id, this.name, this.image, this.rating, this.description);
}

List<Desktop> listGamesDesktop = [
  Desktop(1, "Dota 2", "assets/main/playdash_main_01.jpg", 4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes."),
  Desktop(2, "FIFA 22", "assets/main/playdash_main_02.jpg", 4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes."),
  Desktop(3, "Forza Horizon 5", "assets/main/playdash_main_03.jpg", 4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes."),
  Desktop(4, "EFootball PES 2022", "assets/main/playdash_main_04.jpg", 4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes."),
  Desktop(5, "Grand Theft Auto V", "assets/main/playdash_main_05.jpg", 4,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.")
];
