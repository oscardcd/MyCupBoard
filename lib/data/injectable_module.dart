import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_cupboard/data/services/product_data_impl.dart';
import 'package:my_cupboard/domain/services/product_data.dart';

@module
abstract class InjectableModule {
  ProductData get productData => ProductDataImpl();
}
