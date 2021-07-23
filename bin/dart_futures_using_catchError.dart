import 'package:dart_futures/dart_futures.dart' as dart_futures_using_catchError;

void main(){
  Future<String> getOrder(){
    return Future.delayed(Duration(seconds: 3),(){
      var isStockCoffee = false;
      if(isStockCoffee){
        return "This is coffee";
      }else{
        throw "Out stock is not enough";
      }
    });
  }

  //then used for handler when code completed with data
  getOrder().then((value) {
    print("Your order: $value");
  })
  //catch error used for handler when code completed with error
      .catchError((error){
    print ("sorry. $error");
  });

  print("Getting your order...");
}