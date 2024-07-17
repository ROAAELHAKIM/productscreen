// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/api_manager.dart' as _i3;
import 'features/ProductScreen/data/data_sources/product_ds.dart' as _i4;
import 'features/ProductScreen/data/data_sources/product_ds_impl.dart' as _i5;
import 'features/ProductScreen/data/repositories/product-repo_impl.dart' as _i7;
import 'features/ProductScreen/domain/repositories/Product_repo.dart' as _i6;
import 'features/ProductScreen/domain/use_cases/get_product_usecase.dart'
    as _i8;
import 'features/ProductScreen/presentation/bloc/product_bloc.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.ProductDs>(() => _i5.ProductDsImp(gh<_i3.ApiManager>()));
    gh.factory<_i6.ProductRepo>(() => _i7.ProductRepoImpl(gh<_i4.ProductDs>()));
    gh.factory<_i8.GetProductUsecase>(
        () => _i8.GetProductUsecase(gh<_i6.ProductRepo>()));
    gh.factory<_i9.ProductBloc>(
        () => _i9.ProductBloc(getProductUsecase: gh<_i8.GetProductUsecase>()));
    return this;
  }
}
