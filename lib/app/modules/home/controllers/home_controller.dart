import 'package:mpcore/mpcore.dart';
import '../index.dart';
import '../../../base/controller/base_controller.dart';

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
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }
}
