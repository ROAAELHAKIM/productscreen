
import 'package:injectable/injectable.dart';
import 'package:productscreen/core/api/api_manager.dart';
import 'package:productscreen/core/api/end_points.dart';
import 'package:productscreen/features/ProductScreen/data/data_sources/product_ds.dart';
import 'package:productscreen/features/ProductScreen/data/models/ProductModel.dart';
@Injectable(as: ProductDs)
class ProductDsImp implements ProductDs{
  ApiManager apiManager;
  ProductDsImp(this.apiManager);


  @override
  Future<ProductModel> getProduct()async {
    var response=await apiManager.getData(endPoint: EndPoints.products);
    ProductModel productModel = ProductModel.fromJson(response.data);
    return productModel;

  }

}