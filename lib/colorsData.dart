import 'dart:convert';
import 'package:flutter/material.dart';

class ColorData {
  final String primaryColor;
  final String secondaryColor;
  final String tertiaryColor;
  final String buttonColor;
  final String cardColor;
  final String textColor;

  ColorData({
    required this.primaryColor,
    required this.secondaryColor,
    required this.tertiaryColor,
    required this.buttonColor,
    required this.cardColor,
    required this.textColor,
  });

  factory ColorData.fromJson(Map<String, dynamic> json) {
    return ColorData(
      primaryColor: json['primaryColor'],
      secondaryColor: json['secondaryColor'],
      tertiaryColor: json['tertiaryColor'],
      buttonColor: json['buttonColor'],
      cardColor: json['cardColor'],
      textColor: json['textColor'],
    );
  }
}