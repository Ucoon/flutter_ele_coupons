import 'package:flutter/material.dart';
import '../model/item_coupon_resp_entry.dart';
import 'item_coupon_widget.dart';

class CommonCouponPage extends StatelessWidget {
  final List<ItemCouponRespEntry> couponList;
  const CommonCouponPage(this.couponList, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (couponList.isEmpty) return SizedBox();
    return ListView.separated(
      itemCount: couponList.length,
      itemBuilder: (context, index) {
        return ItemCouponWidget(couponList[index]);
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 15);
      },
    );
  }
}
