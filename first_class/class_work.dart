void main(List<String> args) {
  print('hello');

  /* int a = 8;
  int b = 6;
  int c = 12;
  int d = 10;
  int e = 15;

  if (a > b && a > c && a > d && a > e) {
    print('a is bigger');
  } else if (b > c && b > d && b > e) {
    print('b is bigger');
  } else if (c > d && b > e) {
    print('c is bigger');
  } else if (d > e) {
    print('d is bigger');
  } else {
    print('e is bigger');
  } */

/*   ///Better Approch
  List<int> numb = [15, 80, 10, -5, 50, 65, 90];
  numb.sort();
  //TODO: do it menual later without doing sorting

  /* for (int i = 0; i < numb.length; i++) {
     int  temp = i;
     if (numb[temp] < numb[i + 1]) {
      int temp2 = numb[i+1];
      } else {
        print('not bigger lo');
    }
  } */

  print('temp is bigger ${numb[numb.length - 1]}');

 */

  ///problem pattern recognition
  ///TALI JURA FIX
  List<String> people = ['a', 'b', 'c', 'd', 'e', 'f'];
  int temi = 0;
  for (int i = people.length - 1; i >= 0; i--) {
    int temp = i;
    print(' number :  $temp');
    if (temp >= 0) {
      temi = temi + temp;
    }
  }
  print(' handschacke : = $temi');
}
