import 'package:remote/model/product_model.dart';
import 'package:remote/services/apiresponse.dart';
import 'package:remote/services/repositories/products_repo.dart';

class ProductViewModel {
  ApiResponse _apiResponse = ApiResponse.initial('Empty Data');

  ApiResponse get response => _apiResponse;

  Future<ApiResponse> getAllProducts({String? endURL}) async {
    try {
      _apiResponse = ApiResponse.loading('Fetching Data');
      ProductModel productModel =
          await ProductsDataRepo().fetchAllProducts(endURL: endURL);
      _apiResponse = ApiResponse.completed(productModel);
    } catch (e) {
      _apiResponse = ApiResponse.error(e.toString());
    }
    return _apiResponse;
  }
}
