import 'package:dart_futures/dart_futures.dart' as dart_futures;

void main() {
  final myFuture = Future((){
    print("Creating future");
    return 12;
  });

  print("main() done");
}
