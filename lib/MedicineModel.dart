class MedicineModel {

int? id;
int? supplierId;
String? name;
String? discription;
double? price;

  MedicineModel({this.id, this.supplierId,this.name, this.discription, this.price});
  Map<String, dynamic> toMap() {
    return {'id': id, 'supplierId': supplierId,'name': name, 'discription': discription, 'price': price};
  }

  factory MedicineModel.fromMap(Map<String, dynamic> map) {
    return MedicineModel(id: map['id'],supplierId: map['supplierId'] ,name: map['name'], discription: map['discription'],
     price: map['price'] );
  }
   @override
  String toString() {
    
    return "Name: $name, dicription: $discription, price: $price";
  }
}