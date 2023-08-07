main() {
  var count = 0;
  while (count < 5) {
    print('Hello $count');
    count++;
  }
  var isRunning = true;
  //count = 0;
  
  while (isRunning) {
    print('Hello $count');
    count++;
    if (count > 6) {
      isRunning = false;
    }
  }
}
