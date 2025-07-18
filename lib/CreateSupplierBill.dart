import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_store/MedicineModel.dart';
import 'package:medical_store/SupplierScreenModel.dart';
import 'package:medical_store/supplier_dao.dart';

class Createsupplierbill extends StatefulWidget {
  const Createsupplierbill({super.key});

  @override
  State<Createsupplierbill> createState() => _CreatesupplierbillState();
}

class _CreatesupplierbillState extends State<Createsupplierbill> {


  var nameController = TextEditingController();
  var priceController = TextEditingController();
    var descriptionController =  TextEditingController();
  // void updateItem(int index){
  //   nameController.text =nameList[index].;
  // }
  // void deleteItem(int index){
  //   nameController.text =nameList[index];
  // }

 List<Supplierscreenmodel> supplierslist = [];
  List<MedicineModel> medicineList = [];
  List<double> itemPrices = [];
  int? supplierId = 0;
  num totalBill = 0.0;


 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getList();

    for(int i =0; i< medicineList.length; i++){
totalBill = (totalBill + medicineList[i].price!); 
    }
  }

 void getList() async {
    supplierslist = await SupplierDao().getsupplier();
    setState(() {});
    print("supplierscreenmodel: $supplierslist");
    for (int i = 0; i < supplierslist.length; i++) {
      print("supplierlist ${supplierslist[i]}");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Bill"),),
      body: Column(
        children: [
          DropdownMenu(
            width: double.infinity,
            enableSearch: true,
            hintText: "Supplier Name",
            label: Text("Supplier Name"),
            onSelected: (value) => {
              supplierId = value?.id

             
            },
            dropdownMenuEntries: supplierslist.map<DropdownMenuEntry<Supplierscreenmodel>>((Supplierscreenmodel model){
                return DropdownMenuEntry(value: model, label: model.supplierName.toString());
            }).toList()),


            SizedBox(
              height: 650,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: medicineList.length,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(medicineList[index].name.toString(),style:TextStyle(fontSize: 18,fontStyle: FontStyle.italic),),
                        Text(medicineList[index].discription.toString(),style:TextStyle(fontSize: 18)),
                        
                        Text(medicineList[index].price.toString(),style:TextStyle(fontSize: 18)),
                        
                      ],
                    ),
                  ),
                ),
              );
                 
                
                }),
                
            ),

        Row(
          children: [
            Text("Total"),
          ],
        )
        ],
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Add Name"),
                    SizedBox(height: 10),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hint: Text("Enter Medicine Name"),
                        label: Text("Medicine"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                     TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        hint: Text("Enter Medicine Description"),
                        label: Text("Medicine Description"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.number,
                    
                      controller: priceController,
                      decoration: InputDecoration(
                        hint: Text("Enter Medicine Price"),
                        label: Text("Medicine rice"),
                        border: OutlineInputBorder(),
                        

                      ),
                    ),
                  
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (nameController.text.isEmpty) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text("Enter Name")));
                        } else if (descriptionController.text.isEmpty) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text("Enter Medicine Description")));
                        }
                        
                        
                         else if (priceController.text.isEmpty) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text("Enter Price")));
                        }
                        
                         else {
                          setState(() {});
                          var medicneModel = MedicineModel(supplierId: supplierId, name: nameController.text.toString(),discription: descriptionController.text.toString(),price: double.parse(priceController.text.toString()));
                          medicineList.add(medicneModel);
                          Navigator.of(context).pop();
                        }
                      },
                      child: Text("Save"),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}