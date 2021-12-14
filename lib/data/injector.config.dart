// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:my_cupboard/data/injectable_module.dart' as _i7;
import 'package:my_cupboard/domain/bloc/categories/categories_bloc.dart' as _i5;
import 'package:my_cupboard/domain/bloc/product/product_bloc.dart' as _i6;
import 'package:my_cupboard/domain/services/categories_data.dart' as _i3;
import 'package:my_cupboard/domain/services/product_data.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.CategoriesData>(() => injectableModule.categoriesData);
  gh.factory<_i4.ProductData>(() => injectableModule.productData);
  gh.factory<_i5.CategoriesBloc>(
      () => _i5.CategoriesBloc(get<_i3.CategoriesData>()));
  gh.factory<_i6.ProductBloc>(
      () => _i6.ProductBloc(get<_i4.ProductData>(), get<_i3.CategoriesData>()));
  return get;
}

class _$InjectableModule extends _i7.InjectableModule {}
