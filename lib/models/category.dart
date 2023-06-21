import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category{
  final int id;
  final String name;
  final dynamic icon;
  Category(this.id, this.name, {this.icon});

}

final List<Category> categories = [
  Category(21,"Spor", icon: FontAwesomeIcons.football),
  Category(3,"Teknoloji", icon: FontAwesomeIcons.laptopCode),
  Category(4,"Matematik", icon: FontAwesomeIcons.arrowDown19),
  Category(5,"Sanat", icon: FontAwesomeIcons.paintbrush),
  Category(9,"Genel", icon: FontAwesomeIcons.earthAsia),
  Category(10,"Books", icon: FontAwesomeIcons.bookOpen),
  Category(11,"Film", icon: FontAwesomeIcons.video),
  Category(12,"Müzik", icon: FontAwesomeIcons.music),
  Category(13,"Tiyatro", icon: FontAwesomeIcons.masksTheater),
  Category(14,"Televizyon", icon: FontAwesomeIcons.tv),
  Category(15,"Bilgisayar Oyunları", icon: FontAwesomeIcons.gamepad),
  Category(16,"Masa Oyunları", icon: FontAwesomeIcons.chessBoard),
  Category(17,"Bilim", icon: FontAwesomeIcons.microscope),
  Category(20,"Mitoloji"),
  Category(22,"Coğrafya", icon: FontAwesomeIcons.mountain),
  Category(23,"Tarih", icon: FontAwesomeIcons.monument),
  Category(24,"Politika"),
  Category(27,"Hayvanlar", icon: FontAwesomeIcons.dog),
  Category(28,"Araçlar", icon: FontAwesomeIcons.carRear),
  Category(29,"Çizgiroman"),
  Category(30,"Aletler", icon: FontAwesomeIcons.mobileScreenButton),
  Category(32,"Çizgifilm"),


];