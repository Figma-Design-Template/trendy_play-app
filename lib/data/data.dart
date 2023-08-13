import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ! Routing
int currentIndex = 0;
double tabRadisValue = 20;
// ! Routing

List bottomBar = [
  const Icon(
    FontAwesomeIcons.compass,
    color: Colors.white,
  ),
  const Icon(
    FontAwesomeIcons.store,
    color: Colors.white,
  ),
  const Icon(
    FontAwesomeIcons.heart,
    color: Colors.white,
  ),
  const Icon(
    FontAwesomeIcons.user,
    color: Colors.white,
  ),
];

List<Map<String, dynamic>> userData = [
  {
    'imgPath': 'assets/images/1.png',
    'name': "John Doe",
    'value': 23.99,
    'isFav': false,
  },
  {
    'imgPath': 'assets/images/2.png',
    'name': "Anfuture",
    'value': 2.99,
    'isFav': false,
  },
  {
    'imgPath': 'assets/images/3.png',
    'name': "Sime AL",
    'value': 223.99,
    'isFav': false,
  },
  {
    'imgPath': 'assets/images/4.png',
    'name': "John Han",
    'value': 23.99,
    'isFav': false,
  },
  {
    'imgPath': 'assets/images/5.png',
    'name': "Jin Han",
    'value': 123.99,
    'isFav': false,
  },
];

List<String> disTab = ["🚀最近发现", "🔥热门", "💎最新", "🏆价值", "🥁关于我的"];

List<Map<String, dynamic>> popular = [
  {
    'avaImgPath': 'assets/images/1.png',
    'imgPath': 'assets/images/example/popular1.png',
    'bgPath': 'assets/images/example/bg1.jpg',
    'name': "John Doe",
    'description': 'Lemo ',
    'value': 23.99,
    'total': 234783478,
    'change': 34334,
    'isFav': false,
  },
  {
    'avaImgPath': 'assets/images/2.png',
    'imgPath': 'assets/images/example/popular2.png',
    'bgPath': 'assets/images/example/bg2.jpg',
    'name': "Anfuture",
    'description': 'Lemo ',
    'value': 2.99,
    'total': 2178378,
    'change': -4334,
    'isFav': false,
  },
  {
    'avaImgPath': 'assets/images/3.png',
    'imgPath': 'assets/images/example/popular3.png',
    'bgPath': 'assets/images/example/bg3.jpg',
    'name': "Sime AL",
    'description': 'Lemo',
    'value': 223.99,
    'total': 344478,
    'change': 0,
    'isFav': false,
  },
  {
    'avaImgPath': 'assets/images/4.png',
    'imgPath': 'assets/images/example/popular4.png',
    'bgPath': 'assets/images/example/bg4.jpg',
    'name': "John Han",
    'description': 'Lemo ',
    'value': 23.99,
    'total': 87436,
    'change': 3234,
    'isFav': false,
  },
  {
    'avaImgPath': 'assets/images/5.png',
    'imgPath': 'assets/images/example/popular5.png',
    'bgPath': 'assets/images/example/bg5.jpg',
    'name': "Jin Han",
    'description': 'Lemo ',
    'value': 123.99,
    'total': 4578,
    'change': -99,
    'isFav': false,
  },
  {
    'avaImgPath': 'assets/images/6.png',
    'imgPath': 'assets/images/example/popular6.png',
    'bgPath': 'assets/images/example/bg6.jpg',
    'name': "Jin Han",
    'description': 'Lemo vs ',
    'value': 22222.99,
    'total': 2178378,
    'change': -99,
    'isFav': true,
  },
];

// Colors
const kAvatarColor = Color(0xffffdbc9);
const kPrimaryColor = Color(0xFFEEF7FF);
const kSecondaryColor = Color(0xFF29303D);
