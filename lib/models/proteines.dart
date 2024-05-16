class Proteines{
  String Name;
  int Quantity;

  Proteines(this.Name, this.Quantity);

  Map<String, dynamic> toMap() {
    return {
      'name' : Name,
      'quantity' : Quantity
    };
  }

  factory Proteines.fromMap (Map<String, dynamic> map) => Proteines(
    map['name'],
    map['quantity']
  );
}