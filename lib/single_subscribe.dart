Stream<int>createStreamWithException(int last) async*{
  for (int i = 1; i <= last;i++){
    if(i == 5){
      throw Exception("Exception when accessing 5th number");
    }
    yield i;
  }
}

void subScribUserListen(){
  Stream stream = createStreamWithException(5);
  final subscribe = stream.listen(null);
    subscribe.onData((x) =>  print("Number: $x"));
    subscribe.onError ((err)=>print("error: $err"));
    subscribe.onDone (()=>print("Done"));
}