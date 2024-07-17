
import '../models/ProductModel.dart';

abstract class ProductDs{

  Future<ProductModel>getProduct();
}