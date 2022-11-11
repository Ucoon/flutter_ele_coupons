import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mpcore/mpkit/mpkit.dart';
import '../widget/home_tab_bar_widget.dart';
import '../widget/common_coupon_view.dart';
import '../model/item_coupon_resp_entry.dart';
import '/widget/widget.dart';
import '../index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayoutPage<HomeController>(
      _buildBodyWidget,
      canBack: false,
      title: '饿了就点',
      appBarBackgroundColor: Color(0xFFF7D9A1),
      backgroundColor: Color(0xFFF7F9FA),
    );
  }

  Widget _buildBodyWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HomeTabBarWidget(
          onTap: controller.handleTabBarTap,
        ),
        Flexible(
          child: MPPageView(
            controller: controller.pageController,
            children: <Widget>[
              Obx(() {
                List<ItemCouponRespEntry> allCouponList =
                    List.from(controller.homeState.allCouponList);
                return CommonCouponPage(allCouponList);
              }),
              Obx(() {
                List<ItemCouponRespEntry> eleCouponList =
                List.from(controller.homeState.eleCouponList);
                return CommonCouponPage(eleCouponList);
              }),
              Obx(() {
                List<ItemCouponRespEntry> mtCouponList =
                List.from(controller.homeState.mtCouponList);
                return CommonCouponPage(mtCouponList);
              }),
            ],
          ),
        ),
      ],
    );
  }
}
