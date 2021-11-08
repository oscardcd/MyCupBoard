import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_cupboard/data/injector.config.dart';

GetIt getIt = GetIt.instance;

const dev = Environment('dev');

@InjectableInit(preferRelativeImports: false)
void configureDependencies() => $initGetIt(getIt);
