import 'package:dart_futures/dart_futures.dart' as dart_futures_with_delay;

void main(){
  Future<String> getOrder(){
    return Future.delayed(Duration(seconds: 3),(){
        print("This is your coffee");
        return "This is coffee";
    });
  }

  print("Waiting your order");
  getOrder();

}