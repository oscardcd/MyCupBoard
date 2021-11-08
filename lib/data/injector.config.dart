// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:my_cupboard/data/injectable_module.dart' as _i5;
import 'package:my_cupboard/domain/bloc/product/product_bloc.dart' as _i4;
import 'package:my_cupboard/domain/services/product_data.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.ProductData>(() => injectableModule.productData);
  gh.factory<_i4.ProductBloc>(() => _i4.ProductBloc(get<_i3.ProductData>()));
  return get;
}

class _$InjectableModule extends _i5.InjectableModule {}
