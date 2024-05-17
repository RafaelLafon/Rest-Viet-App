class PatesEtAssaisonnement{
  String Name;
  int Quantity;
  int Weight;
  int Liter;


  PatesEtAssaisonnement(this.Name, this.Quantity, this.Weight, this.Liter);

  Map<String, dynamic> toMap() {
    return {
      'name' : Name,
      'quantity' : Quantity,
      'weight' : Weight,
      'liter' : Liter
    };
  }

  factory PatesEtAssaisonnement.fromMap (Map<String, dynamic> map) => PatesEtAssaisonnement(
    map['name'],
    map['quantity'],
    map['weight'],
    map['liter']
  );
}