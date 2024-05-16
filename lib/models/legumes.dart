import 'dart:html';
import 'dart:js_util';

import 'package:flutter/foundation.dart';

class Legumes{
  String Name;
  int Quantity;

  Legumes(this.Name, this.Quantity);

  Map<String, dynamic> toMap() {
    return {
      'name' : Name,
      'quantity' : Quantity
    };
  }

  factory Legumes.fromMap (Map<String, dynamic> map) => Legumes(
    map['name'],
    map['quantity']
  );
}