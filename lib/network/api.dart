import 'address.dart';
import 'data_helper.dart';
import 'http_manager.dart';
import 'result_data.dart';

class Api {
  ///示例请求
  static Future<ResultData> login() async {
    var params = DataHelper.getBaseMap();
    params['username'] = "18600988976";
    params['password'] = "123456";
    ResultData result = await HttpManager.getInstance()
        .post(Address.login, params: params, withLoading: false);
    return result;
  }
}
