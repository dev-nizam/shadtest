
import 'dart:convert';

import 'package:http/http.dart';
import 'package:testapp/api/ApiClient.dart';
import 'package:testapp/model/ShipmentModel.dart';

class ShipmentApi {
  ApiClient apiClient = ApiClient();

  Future<List<ShipmentModel>> getShipment({required String ShipperId, required String BranchId,
  }) async {
    String basePath = "Shipment/GetAllShipment?ShipperId=$ShipperId&BranchId=$BranchId";
    Response response =
    await apiClient.invokeApi(path: basePath, method: "GET", body: null);
    print(response.body);
    return ShipmentModel.listFromJson(json.decode(response.body));
  }
}
