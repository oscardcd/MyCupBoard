import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cupboard/l10n/l10n.dart';
import 'package:my_cupboard/ui/app_theme.dart';
import 'package:my_cupboard/ui/screens/add_categories/add_categories_screen.dart';
import 'package:my_cupboard/ui/screens/add_products/add_product_screen.dart';
import 'package:my_cupboard/ui/screens/information/information_screen.dart';
import 'package:path/path.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: const BoxDecoration(
          color: AppColors.whiteblue,
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/alimentos.jpeg'))),
              child: Align(
                child: Text(
                  l10n.cupboard,
                  style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColors.white),
                ),
              ),
            ),
            Flexible(
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(height: 25.h),
                  DrawerItem(
                    icon: Icons.home,
                    text: 'Home',
                    onTap: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const InformationScreen())),
                  ),
                  DrawerItem(
                    icon: Icons.add_business_outlined,
                    text: l10n.myProducts,
                    onTap: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AddProductScreen())),
                  ),
                  DrawerItem(
                    icon: Icons.add_shopping_cart_sharp,
                    text: l10n.myCupboar,
                    onTap: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AddProductScreen())),
                  ),
                  DrawerItem(
                    icon: Icons.add_shopping_cart_sharp,
                    text: 'My Categories',
                    onTap: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCategories())),
                  ),
                  DrawerItem(
                    icon: Icons.close,
                    text: 'Close',
                    onTap: () => Navigator.pop(context),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, this.icon, this.text, this.onTap}) : super(key: key);

  final IconData? icon;
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(
            icon,
            color: AppColors.blue,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text ?? '',
              style: Theme.of(context).textTheme.headline3,
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
