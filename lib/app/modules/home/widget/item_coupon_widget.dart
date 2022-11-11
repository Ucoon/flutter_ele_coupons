import 'package:flutter/material.dart';
import '/common/values/values.dart';
import '../model/item_coupon_resp_entry.dart';
import '/widget/widget.dart';

class ItemCouponWidget extends StatelessWidget {
  final ItemCouponRespEntry coupon;
  const ItemCouponWidget(
    this.coupon, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: EmptyCardWidget(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildCouponTitleWidget(),
            SizedBox(height: 8),
            loadImage(
              coupon.bannerPic,
              width: MediaQuery.of(context).size.width,
              height: 150,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCouponTitleWidget() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        _buildCouponNameWidget(),
        _buildCouponTypeWidget(),
        const Spacer(),
        _buildReceiveButtonWidget(),
      ],
    );
  }

  Widget _buildCouponNameWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        loadImage(
          coupon.icon,
          width: 28,
          height: 28,
        ),
        SizedBox(width: 8),
        Text(
          coupon.name,
          style: TextStyle(
            color: Color(0xFF2F3B46),
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }

  Widget _buildCouponTypeWidget() {
    return Container(
      width: 150,
      height: 38,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFf9db8d),
        borderRadius: borderRadius6,
      ),
      child: Text(
        coupon.type,
        style: TextStyle(
          color: Color(0xFF2F3B46),
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildReceiveButtonWidget() {
    return Container(
      width: 170,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFec6f43),
        borderRadius: borderRadius6,
      ),
      child: Text(
        '点击领取',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
