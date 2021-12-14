import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:my_cupboard/domain/bloc/categories/categories_bloc.dart';
import 'package:my_cupboard/domain/models/categorie.dart';
import 'package:my_cupboard/ui/app_theme.dart';
import 'package:my_cupboard/ui/widgets/appbar_menu.dart';
import 'package:my_cupboard/ui/widgets/custom_button.dart';
import 'package:my_cupboard/ui/widgets/custom_drawer.dart';
import 'package:my_cupboard/ui/widgets/custom_input.dart';

class AddCategories extends StatelessWidget {
  const AddCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<CategoriesBloc>()..add(const CategoriesEvent.started()),
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBarMenu(),
        body: BlocBuilder<CategoriesBloc, CategoriesState>(
          builder: (context, state) {
            return state.maybeWhen(
              initial: (_) => const AddCategoriesLayout(),
              isLoading: () => const Center(child: CircularProgressIndicator()),
              orElse: () => const AddCategoriesLayout(),
            );
          },
        ),
      ),
    );
  }
}

class AddCategoriesLayout extends StatefulWidget {
  const AddCategoriesLayout({Key? key}) : super(key: key);

  @override
  State<AddCategoriesLayout> createState() => _AddCategoriesLayoutState();
}

class _AddCategoriesLayoutState extends State<AddCategoriesLayout> {
  late final _addCategorieForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CategoriesBloc>();
    return SafeArea(
      child: SingleChildScrollView(
        child: BlocListener<CategoriesBloc, CategoriesState>(
          listener: _listener,
          child: Form(
            key: _addCategorieForm,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              child: Flexible(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Add Categorie',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(height: 20.h),
                  CustomInput(
                    title: 'Nombre de la Categoria',
                    textCapitalization: TextCapitalization.words,
                    placeHolder: 'Categorie',
                    controller: bloc.categorieNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                    },
                  ),
                  SizedBox(height: 28.h),
                  CustomButton.primary(
                    label: 'guardar',
                    onPressed: () {
                      if (_addCategorieForm.currentState!.validate()) {
                        context.read<CategoriesBloc>().add(const CategoriesEvent.addCategorie());
                      }
                    },
                  ),
                  SizedBox(height: 28.h),
                  BlocBuilder<CategoriesBloc, CategoriesState>(
                    builder: (context, state) => state.maybeWhen(
                        initial: (categories) => CategoriesList(categories: categories ?? []),
                        saved: (categories) => CategoriesList(categories: categories!),
                        orElse: () => const SizedBox()),
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _listener(BuildContext context, CategoriesState state) {
    state.maybeWhen(
        failed: (_) {
          final snackbar = SnackBar(
            backgroundColor: AppColors.red,
            content: Row(
              children: [
                const Icon(Icons.dangerous_outlined, color: Colors.white),
                SizedBox(width: 5.w),
                Expanded(child: Text(_!.isNotEmpty ? _ : '')),
              ],
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        },
        orElse: () {});
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key, required this.categories, this.editTap, this.deleteTap}) : super(key: key);
  final List<Categorie> categories;
  final VoidCallback? editTap;
  final VoidCallback? deleteTap;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.h,
      children: List.generate(
        categories.length,
        (index) => Card(
            color: Theme.of(context).primaryColor,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      categories[index].name,
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: AppColors.darkBlue),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.edit,
                            color: AppColors.darkGrey,
                            size: 30.h,
                          ),
                          onTap: editTap,
                        ),
                        InkWell(
                          child: Icon(
                            Icons.delete,
                            color: AppColors.red,
                            size: 30.h,
                          ),
                          onTap: () {
                            print(categories[index].name);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
