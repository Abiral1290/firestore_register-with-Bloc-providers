import 'package:sixteen_app/provider/shop_details_pprovider.dart';

class Shop_Details_Repository{
  final _firestore = Shop_details_provider();

  Future<void> registers(String email, String shopname, String shoppanno, String shoptype) =>
  _firestore.registers(email, shopname, shopname, shoptype);

}