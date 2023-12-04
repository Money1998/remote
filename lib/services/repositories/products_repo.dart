import 'package:remote/model/product_model.dart';
import 'package:remote/services/masterservice.dart';

class ProductsDataRepo {
  ApiResponseService masterService = ApiResponseService();

  Future<ProductModel> fetchAllProducts({String? endURL}) async {
    dynamic response = await masterService.getAPIResponse(endURL: endURL);
    return ProductModel.fromJson(response);
  }
}
