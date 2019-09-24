import 'package:cloud_firestore/cloud_firestore.dart';

class Shop_details_provider{

  final _fiirestore = Firestore.instance;
  String documentid;

  Future<void> registers(String shop_email, String shop_name, String shop_panno, String shop_type ) async{
    return _fiirestore.collection("Shop_").document(documentid).setData({
      "email" : shop_email,
      "Name" : shop_name,
      "Shop_panno" : shop_panno,
      "Shop_type" : shop_type
    });
  }

}