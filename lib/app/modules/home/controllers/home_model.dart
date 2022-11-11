import 'package:flutter_ele_coupons/app/base/base_model.dart';
import '../model/home_resp_entry.dart';
import 'home_service_api.dart';

class HomeModel extends BaseModel {
  Future<HomeRespEntry> getHomeData() async {
    final resp = await apiService.get<HomeRespEntry>(HomeApiService.home);
    return HomeRespEntry.fromJson(resp.data);
  }
}
