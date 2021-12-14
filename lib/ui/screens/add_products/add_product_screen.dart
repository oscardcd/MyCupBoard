import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:my_cupboard/domain/bloc/product/product_bloc.dart';
import 'package:my_cupboard/domain/models/categorie.dart';
import 'package:my_cupboard/domain/models/product.dart';
import 'package:my_cupboard/l10n/l10n.dart';
import 'package:my_cupboard/ui/widgets/appbar_menu.dart';
import 'package:my_cupboard/ui/widgets/custom_button.dart';
import 'package:my_cupboard/ui/widgets/custom_drawer.dart';
import 'package:my_cupboard/ui/widgets/custom_dropdown.dart';
import 'package:my_cupboard/ui/widgets/custom_input.dart';
import 'package:my_cupboard/ui/widgets/custom_input_search.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);
  static const String routeName = '/add-product';

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  late final _addProductForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocProvider(
      create: (_) => GetIt.I.get<ProductBloc>()..add(const ProductEvent.started()),
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: const AppBarMenu(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: BlocSelector<ProductBloc, ProductState, List<Categorie>>(
              selector: (state) => state.categories,
              builder: (context, categories) {
                final bloc = context.read<ProductBloc>();
                if (categories.isEmpty) {
                  return const Center(
                    child: const CircularProgressIndicator(),
                  );
                }
                return Form(
                  key: _addProductForm,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                    child: Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.addProducts,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBox(height: 20.h),
                          CustomInput(
                            title: 'Nombre del producto',
                            textCapitalization: TextCapitalization.words,
                            placeHolder: 'product',
                            controller: bloc.productNameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                            },
                          ),
                          SizedBox(height: 20.h),
                          CustomSearchInput(
                            title: 'Codigo de barras',
                            hint: 'barcode',
                            controller: bloc.barCodeController,
                            onSearch: (value) {
                              context.read<ProductBloc>().add(const ProductEvent.readBarCode());
                            },
                          ),
                          SizedBox(height: 20.h),
                          CustomDropDown<int>(
                              title: 'Categorie',
                              items: bloc.state.categories
                                  .map((e) => DropdownMenuItem<int>(
                                        child: Text(e.name),
                                        value: e.id,
                                      ))
                                  .toList(),
                              value: categories[0].id,
                              onChanged: (value) {}),
                          SizedBox(height: 20.h),
                          CustomButton.primary(
                            label: 'guardar',
                            onPressed: () {
                              if (_addProductForm.currentState!.validate()) {
                                context.read<ProductBloc>().add(const ProductEvent.addProduct());
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(content: Text('Processing Data')));
                              }
                            },
                          ),
                          CustomButton.secondary(
                            label: 'consultar',
                            onPressed: () {
                              context.read<ProductBloc>().add(const ProductEvent.getAllProducts());
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(content: Text('Processing Data')));
                            },
                          ),
                          CustomButton.secondary(
                            label: 'eliminar',
                            onPressed: () {
                              context.read<ProductBloc>().add(const ProductEvent.deleteProduct());
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(content: Text('Processing Data')));
                            },
                          ),
                          BlocSelector<ProductBloc, ProductState, List<Product>>(
                            selector: (state) => state.products,
                            builder: (_, products) => Column(
                              children: List.generate(products.length, (index) => Text('${products[index]}')).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
