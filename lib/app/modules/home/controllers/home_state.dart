import '../model/item_coupon_resp_entry.dart';
import 'package:get/get.dart';

class HomeState {
  ///全部优惠券列表
  final RxList<ItemCouponRespEntry> _allCouponList =
      <ItemCouponRespEntry>[].obs;
  List<ItemCouponRespEntry> get allCouponList => _allCouponList;
  set allCouponList(value) => _allCouponList.value = value;

  ///饿了么优惠券列表
  final RxList<ItemCouponRespEntry> _eleCouponList =
      <ItemCouponRespEntry>[].obs;
  List<ItemCouponRespEntry> get eleCouponList => _eleCouponList;
  set eleCouponList(value) => _eleCouponList.value = value;

  ///美团优惠券列表
  final RxList<ItemCouponRespEntry> _mtCouponList = <ItemCouponRespEntry>[].obs;
  List<ItemCouponRespEntry> get mtCouponList => _mtCouponList;
  set mtCouponList(value) => _mtCouponList.value = value;
}
