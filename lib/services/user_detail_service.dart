import 'package:ondemand/data/auth/models/get_user_details_model.dart';
import 'package:ondemand/helpers/base_view_model.dart';

class UserDetailService extends BaseViewModel {
  GetUserDetailResponse? _getUserDetailResponse;
  GetUserDetailResponse? get userDetailResponse => _getUserDetailResponse;

  void setuserDetail(GetUserDetailResponse? detailResponse) {
    _getUserDetailResponse = detailResponse;
    notifyListeners();
  }
}
