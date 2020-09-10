
import 'data_helper.dart';
import 'http_manager.dart';
import 'address.dart';

class Api{

  ///示例请求
  static login() async {
    var params = DataHelper.getBaseMap();
    params['username'] = "18600988976";
    params['password'] = "123456";

    return await HttpManager.getInstance().post(Address.login, params: params,withLoading: false);
  }

}