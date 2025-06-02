import 'package:flutter/material.dart';
import 'type.dart';
import 'colors.dart';

final appTheme = ThemeData(
  fontFamily: 'IBMPlexSans',
  colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blue80
  ).copyWith(
      primary: AppColors.blue80,
      onPrimary: AppColors.white,
      secondary: AppColors.blue,
      secondaryContainer: AppColors.grey,
      tertiary: AppColors.green,
      primaryContainer: AppColors.blueDark10,
      outline: AppColors.blueLight60,
      outlineVariant: AppColors.blueLight,
      inverseSurface: AppColors.blueLight80,
      onInverseSurface: AppColors.blueDark40,
      surface: AppColors.white90,
      surfaceDim: AppColors.purpleDark,
      surfaceContainer: AppColors.white,
      surfaceContainerLow: AppColors.purpleLight,
      surfaceContainerHighest: AppColors.purpleLight,
      onSurface: AppColors.black,
      onSurfaceVariant: AppColors.blueDark30,
      error: AppColors.pink
  ),
  textTheme: textTheme,
  useMaterial3: true,
);