import 'package:flutter/material.dart';

import 'colors.dart';

const textTheme = TextTheme(
    headlineLarge: TextStyle(
        fontSize: 33,
        fontVariations: [
          FontVariation.weight(700)
        ],
        fontWeight: FontWeight.w700
    ),
    headlineMedium: TextStyle(
        fontSize: 19,
        fontVariations: [
          FontVariation.weight(700)
        ],
        fontWeight: FontWeight.w700
    ),
    headlineSmall: TextStyle(
        fontSize: 17,
        fontVariations: [
          FontVariation.weight(700)
        ],
        fontWeight: FontWeight.w700
    ),
    titleLarge: TextStyle(
        fontSize: 19,
        fontFamily: 'IBMPlexMono',
        fontWeight: FontWeight.w500
    ),
    titleMedium: TextStyle(
        fontSize: 17,
        fontVariations: [
          FontVariation.weight(600)
        ],
        fontWeight: FontWeight.w600,
        color: AppColors.blueDark30
    ),
    bodyLarge: TextStyle(
        fontSize: 18,
        fontVariations: [
          FontVariation.weight(400)
        ],
        fontWeight: FontWeight.w400
    ),
    bodyMedium: TextStyle(
        fontSize: 15,
        fontVariations: [
          FontVariation.weight(400)
        ],
        fontWeight: FontWeight.w400
    ),
    bodySmall: TextStyle(
        fontSize: 13,
        fontVariations: [
          FontVariation.weight(400)
        ],
        fontWeight: FontWeight.w400
    ),
    labelLarge: TextStyle(
        fontSize: 15,
        fontVariations: [
          FontVariation.weight(700)
        ],
        fontWeight: FontWeight.w700
    ),
    labelMedium: TextStyle(
        fontSize: 13,
        fontVariations: [
          FontVariation.weight(500)
        ],
        fontWeight: FontWeight.w500
    ),
    labelSmall: TextStyle(
        fontSize: 11,
        fontVariations: [
          FontVariation.weight(600)
        ],
        fontWeight: FontWeight.w600,
        color: AppColors.blueDark30
    )
);