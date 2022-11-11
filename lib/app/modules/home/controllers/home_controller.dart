import 'package:flutter_ele_coupons/app/base/controller/base_controller.dart';
import 'package:flutter_ele_coupons/widget/widget.dart';
import 'package:mpcore/mpcore.dart';
import '../model/home_resp_entry.dart';
import '../index.dart';

class HomeController extends BaseController<HomeModel> {
  final HomeState homeState = HomeState();
  HomeController(HomeModel model) : super(model);

  MPPageController? pageController;

  void handleTabBarTap(int index) {
    pageController?.jumpToPage(index);
  }

  @override
  void onInit() {
    super.onInit();
    pageController = MPPageController();
  }

  @override
  void onReady() {
    super.onReady();
    request<HomeRespEntry>(
      model.getHomeData(),
      (result) {
        homeState.allCouponList = result.coupons;
        homeState.eleCouponList =
            result.coupons.where((element) => element.tabId == 1).toList();
        homeState.mtCouponList =
            result.coupons.where((element) => element.tabId == 2).toList();
      },
      (err) {
        toastInfo(msg: err.message);
      },
      showLoadingIndicator: false,
    );
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }
}
