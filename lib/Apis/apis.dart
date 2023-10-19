import 'package:http/http.dart' as http;
import 'package:proflie/Moduls/allproducts_model.dart';
class MyAppies{
  // MyAppApis._();
  //
  // static final MyAppApis _instance = MyAppApis._();
  //
  // static MyAppApis get instance => _instance;

// Method to get login response/

MyAppies._();
static final MyAppies _instance = MyAppies._();

static MyAppies get insttance => _instance ;


Future<AllProductsofModel> GetAllProductsModel()async{


try{
  var request = http.Request('GET', Uri.parse('https://dummyjson.com/products/'));
  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    // print(await response.stream.bytesToString());

    var sr =  await response.stream.bytesToString();
    print(sr);
    return AllProductsofModel.fromRawJson(sr);
  }
  else {
    print(response.reasonPhrase);
  }
}catch(e){
  return Future.error(e);
}
return AllProductsofModel();
}

}

