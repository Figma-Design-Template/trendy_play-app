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

// Colors
const kAvatarColor = Color(0xffffdbc9);
const kPrimaryColor = Color(0xFFEEF7FF);
const kSecondaryColor = Color(0xFF29303D);
