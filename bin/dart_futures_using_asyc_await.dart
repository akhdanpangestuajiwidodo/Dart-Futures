import 'package:dart_futures/dart_futures.dart' as dart_futures_using_asyc_await;

void main() async{
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

  print("Getting your order");
  try{
    var order = await getOrder();
    print("Your order: $order");
  }
  catch(error){
    print("Sorry. $error");
  }
  finally{
    print("thank you");
  }
}