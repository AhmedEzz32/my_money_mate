import 'package:flutter/widgets.dart';

class ItemDetailsModel {
  final String title, value;
  final Color color;

  const ItemDetailsModel({
    required this.color,
    required this.title, 
    required this.value,
  });
}