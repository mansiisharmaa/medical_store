class MedicineModel {
int? id;
String? name;
String? discription;
double? price;

  MedicineModel({this.id, this.name, this.discription, this.price});
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'discription': discription, 'price': price};
  }

  factory MedicineModel.fromMap(Map<String, dynamic> map) {
    return MedicineModel(id: map['id'], name: map['name'], discription: map['discription'], price: map['price']);
  }
   @override
  String toString() {
    
    return "Name: $name, dicription: $discription, price: $price";
  }
}