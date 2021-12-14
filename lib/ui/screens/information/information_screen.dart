import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cupboard/ui/app_theme.dart';
import 'package:my_cupboard/ui/widgets/appbar_menu.dart';
import 'package:my_cupboard/ui/widgets/custom_drawer.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBarMenu(),
      body: InformationBody(),
    );
  }
}

List<Map<String, String>> options = [
  {'image': 'assets/images/warning.png', 'text': '5 Product close to expire'},
  {'image': 'assets/images/info.png', 'text': '5 Product are expire'},
  {'image': 'assets/images/ok.png', 'text': '125 product in the cupboard'}
];

class InformationBody extends StatelessWidget {
  const InformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 25.h),
      child: Column(
        children: List.generate(
            options.length,
            (index) => Flexible(
                  child: InkWell(
                      borderRadius: BorderRadius.circular(26.r),
                      onTap: () {
                        print(options[index]['text']!);
                      },
                      child:
                          InfoProducts(assetImage: options[index]['image']!, textInformation: options[index]['text']!)),
                )).toList(),
      ),
    );
  }
}

class InfoProducts extends StatelessWidget {
  const InfoProducts({Key? key, required this.assetImage, required this.textInformation}) : super(key: key);

  final String assetImage;
  final String textInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 120.h, child: Image(image: AssetImage(assetImage))),
          SizedBox(height: 8.h),
          Align(
            child: Text(
              textInformation,
              style: Theme.of(context).textTheme.headline5!.copyWith(color: AppColors.darkBlue, fontSize: 22.sp),
            ),
          ),
        ],
      ),
    );
  }
}
