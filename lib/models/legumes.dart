class Legumes{
  String Name;
  int Quantity;
  int Weight;

  Legumes(this.Name, this.Quantity, this.Weight);

  Map<String, dynamic> toMap() {
    return {
      'name' : Name,
      'quantity' : Quantity,
      'weight' : Weight
    };
  }

  factory Legumes.fromMap (Map<String, dynamic> map) => Legumes(
    map['name'],
    map['quantity'],
    map['weight']
  );
}