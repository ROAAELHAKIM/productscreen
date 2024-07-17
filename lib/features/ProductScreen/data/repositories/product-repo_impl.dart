import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:productscreen/core/error/failures.dart';
import 'package:productscreen/features/ProductScreen/data/data_sources/product_ds.dart';
import 'package:productscreen/features/ProductScreen/data/models/ProductModel.dart';
import 'package:productscreen/features/ProductScreen/domain/repositories/Product_repo.dart';
@Injectable(as: ProductRepo)
class ProductRepoImpl implements ProductRepo{
  ProductDs ds;

  ProductRepoImpl(this.ds);

  @override
  Future<Either<Failures, ProductModel>> getProduct() async{
    try{
      var result=await ds.getProduct();
      return Right(result);

    }catch(e){
      return Left(RemoteFailure(e.toString()));
    }
  }
}