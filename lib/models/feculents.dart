class Feculent{
  String Name;
  int Quantity;
  int Weight;

  Feculent(this.Name, this.Quantity, this.Weight);

  Map<String, dynamic> toMap() {
    return {
      'name' : Name,
      'quantity' : Quantity,
      'weight' : Weight
    };
  }

  factory Feculent.fromMap (Map<String, dynamic> map) => Feculent(
    map['name'],
    map['quantity'],
    map['weight']
  );
}