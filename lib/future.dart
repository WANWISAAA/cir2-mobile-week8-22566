void getUserName() async {
  try {
  print("Start");
  //sendUserName().then((value) => print(value));
  //Future<String> data = sendUserName();
  String data = await sendUserName();
  print(data);
  } catch (e) {
    print("Some error $e");  
  }
  print("End");
}
Future<String> sendUserName(){
  return Future.delayed(Duration(seconds: 2), () => 'Mark');
}