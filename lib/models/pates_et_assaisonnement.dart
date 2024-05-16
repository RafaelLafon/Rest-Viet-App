class PatesEtAssaisonnement{
  String Name;
  int Quantity;
  int Weight;


  PatesEtAssaisonnement(this.Name, this.Quantity, this.Weight);

  Map<String, dynamic> toMap() {
    return {
      'name' : Name,
      'quantity' : Quantity,
      'weight' : Weight
    };
  }

  factory PatesEtAssaisonnement.fromMap (Map<String, dynamic> map) => PatesEtAssaisonnement(
    map['name'],
    map['quantity'],
    map['weight']
  );
}