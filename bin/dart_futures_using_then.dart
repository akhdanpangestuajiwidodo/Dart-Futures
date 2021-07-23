import 'package:dart_futures/dart_futures.dart' as dart_futures_using_then;

void main(){
  Future<String> getOrder(){
    return Future.delayed(Duration(seconds: 3),(){
      return "This is coffee";
    });
  }

  //used for handler when code completed with data
  getOrder().then((value) => print("Your order: $value"));
  print("Getting your order...");
}