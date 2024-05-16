class PatesEtAssaisonnement{
  String Name;
  int Quantity;

  PatesEtAssaisonnement(this.Name, this.Quantity);

  Map<String, dynamic> toMap() {
    return {
      'name' : Name,
      'quantity' : Quantity
    };
  }

  factory PatesEtAssaisonnement.fromMap (Map<String, dynamic> map) => PatesEtAssaisonnement(
    map['name'],
    map['quantity']
  );
}