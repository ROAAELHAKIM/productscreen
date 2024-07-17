import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/enums/screen_status.dart';
import '../../../../core/error/failures.dart';
import '../../data/models/ProductModel.dart';
import '../../domain/use_cases/get_product_usecase.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';
@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  GetProductUsecase getProductUsecase;

  ProductBloc({required this.getProductUsecase}) : super(const ProductState()) {
    on<ProductEvent>((event, emit) async{
      emit(state.copyWith(getProductsStatus: RequestStatus.loading));

      var result =await getProductUsecase();
      result.fold((l){
        emit(state.copyWith(getProductsStatus: RequestStatus.failure,productFailure:l));

      }, (r){
        emit(state.copyWith(getProductsStatus: RequestStatus.success,productModel: r));


      });

    });
  }
}
