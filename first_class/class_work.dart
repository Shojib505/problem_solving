void main(List<String> args) {
  print('hello');

  int a = 8;
  int b = 6;
  int c = 12;
  int d = 10;
  int e = 15;

  if (a > b && a > c && a > d && a > e) {
    print('a is bigger');
  } else if (b > a && b > c && b > d && b > e) {
    print('b is bigger');
  } else if (c > a && c > b && c > d && b > e) {
    print('c is bigger');
  } else if (d > a && d > b && d > c && d > e) {
    print('d is bigger');
  } else {
    print('e is bigger');
  }
}
