import 'dart:html';
import 'dart:js_util';

import 'package:flutter/foundation.dart';

class Feculent{
  String Name;
  int Quantity;

  Feculent(this.Name, this.Quantity);

  Map<String, dynamic> toMap() {
    return {
      'name' : Name,
      'quantity' : Quantity
    };
  }

  factory Feculent.fromMap (Map<String, dynamic> map) => Feculent(
    map['name'],
    map['quantity']
  );
}