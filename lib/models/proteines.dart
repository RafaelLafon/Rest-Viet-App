class Proteines{
  String Name;
  int Quantity;
  int Weight;

  Proteines(this.Name, this.Quantity, this.Weight);

  Map<String, dynamic> toMap() {
    return {
      'name' : Name,
      'quantity' : Quantity,
      'weight' : Weight
    };
  }

  factory Proteines.fromMap (Map<String, dynamic> map) => Proteines(
    map['name'],
    map['quantity'],
    map['weight']
  );
}