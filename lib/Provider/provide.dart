
import 'package:flutter/cupertino.dart';

import '../API/API.dart';
import '../models/model.dart';

class ECommerceProvider extends ChangeNotifier {
  ECommerceModel? eCommerceModel;

  Future<ECommerceModel?> fromMap() async {
    final data = await ECommerceApiHelper.eCommerceApiHelper.fetchApiData();
    eCommerceModel = ECommerceModel.fromJson(data);
    notifyListeners();
    print(eCommerceModel?.products[1].images);
    return eCommerceModel;
  }

  ECommerceProvider()
  {
    fromMap();
  }
}