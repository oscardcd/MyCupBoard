import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:my_cupboard/domain/bloc/product/product_bloc.dart';
import 'package:my_cupboard/ui/widgets/custom_button.dart';
import 'package:my_cupboard/ui/widgets/custom_input.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  late final _addProductForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I.get<ProductBloc>()..add(const ProductEvent.started()),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              final bloc = context.read<ProductBloc>();
              return Form(
                key: _addProductForm,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                  child: Column(
                    children: [
                      CustomInput(
                        placeHolder: 'producto',
                        controller: bloc.productNameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                        },
                      ),
                      SizedBox(height: 20.h),
                      CustomButton.primary(
                        label: 'guardar',
                        onPressed: () async {
                          if (_addProductForm.currentState!.validate()) {
                            context.read<ProductBloc>().add(const ProductEvent.addProduct());
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text('Processing Data')));
                          }
                        },
                      ),
                      CustomButton.secondary(
                        label: 'consultar',
                        onPressed: () async {
                          context.read<ProductBloc>().add(const ProductEvent.getAllProducts());
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing Data')));
                        },
                      ),
                      CustomButton.secondary(
                        label: 'eliminar',
                        onPressed: () async {
                          context.read<ProductBloc>().add(const ProductEvent.deleteProduct());
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing Data')));
                        },
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                            child: Column(
                          children: List.generate(state.products.length, (index) => Text('${state.products[index]}'))
                              .toList(),
                        )),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
