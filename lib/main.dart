import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cupboard/app_bloc_observer.dart';
import 'package:my_cupboard/data/injector.dart';
import 'package:my_cupboard/ui/screens/add_products/add_product_screen.dart';

void main() {
  configureDependencies();
  Bloc.observer = AppBlocObserver();
  runApp(const MyCupBoard());
}

class MyCupBoard extends StatelessWidget {
  const MyCupBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: () => MaterialApp(
        title: 'My CupBoard',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AddProductScreen(),
      ),
    );
  }
}
