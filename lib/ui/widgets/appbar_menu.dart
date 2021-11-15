import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarMenu extends StatelessWidget with PreferredSizeWidget {
  const AppBarMenu({Key? key, this.optionsTap, this.centerWidget, this.onTapMenu}) : super(key: key);

  final VoidCallback? optionsTap;
  final VoidCallback? onTapMenu;
  final Widget? centerWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(right: 15.w),
        child: IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).highlightColor,
            size: 40.h,
          ),
        ),
      ),
      title: centerWidget ??
          InkWell(
            onTap: onTapMenu,
            child: Text(
              'Menu',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: InkWell(
            onTap: optionsTap,
            child: Icon(
              Icons.more_vert,
              color: Theme.of(context).highlightColor,
              size: 40.h,
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(390.w, 60.h);
}
