import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/ProductModel.dart';
import '../repositories/Product_repo.dart';
@injectable
class GetProductUsecase{
  ProductRepo repo;
  GetProductUsecase(this.repo);
  Future<Either<Failures, ProductModel>>call()=>repo.getProduct();


}