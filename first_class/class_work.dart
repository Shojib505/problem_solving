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

/*   /problem pattern recognition
  /TALI JURA FIX
  List<String> people = ['a', 'b', 'c', 'd', 'e', 'f'];
  int temi = 0;
  for (int i = people.length - 1; i >= 0; i--) {
    int temp = i;
    print(' number :  $temp');
    if (temp >= 0) {
      temi = temi + temp;
    }
  }
  print(' handschacke : = $temi'); */

  // findDecimalToBinary(10);
  // xTothePowerN(81, 4);
  reverseString('the sky is blue i love programming');
  // sky is blue
  // reverseWordsInString('the sky is blue');
  // reverseWords('the sky is blue');
}

void findDecimalToBinary(double n) {
  ///recustion {problem* it's print one valu in one line}
  if (n.toInt() > 0) {
    findDecimalToBinary(n / 2);
    print('${n.toInt() % 2}');
  }

/*   //using two while loop
  int temp = n.toInt();
  int count = 0;
  String result = '';
  List<String> arr = [];

  while (temp > 0) {
    arr.add('${temp % 2}');
    double i = temp / 2;
    temp = i.toInt();
    count++;
  }
  for (int i = count - 1; i >= 0; i--) {
    result = '$result${arr[i]}';
  }
  print('$result'); */
}

void xTothePowerN(int x, n) {
  int ress = x;
  for (int i = n; i > 1; i--) {
    ress = ress * x;
  }
  print(ress);
}

void reverseString(String st) {
  int len = st.length - 1;
  var stl = st.split('');
  String ans = '';
// 'the sky is blue'
// 'eht yks si eulb'
  int i = 0;
  int j = 0;
  while (i < len) {
    while (j <= len && stl[j] != ' ') j++;
    var temp;
    j = j - 1;
    while (i <= j) {
      temp = stl[i];
      stl[i] = stl[j];
      stl[j] = temp;
      i++;
      j--;
    }
    i = i + 1 + 1;
    j = i;
  }
  ans = stl.toString();
  print(ans.toString());
}

void reverseWordsInString(String st) {
  int i = st.length - 1;
  String ans = '';
  while (i >= 0) {
    while (i >= 0 && st[i] == ' ') i--;
    int j = i;
    while (i >= 0 && st[i] != ' ') i--;
    if (ans.isEmpty) {
      ans = ans + st.substring(i + 1, j + 1);
    } else {
      ans = (ans + ' ${st.substring(i + 1, j + 1)}');
    }
  }
  print(ans);
}

// Reverse the letters
// of the word
void reverse(str, start, end) {
  // Temporary variable
  // to store character
  var temp;

  while (start <= end) {
    // Swapping the first
    // and last character
    temp = str[start];
    str[start] = str[end];
    str[end] = temp;
    start++;
    end--;
  }
}

// Function to reverse words
String reverseWords(st) {
  // Reversing individual words as
  // explained in the first step
  st = st.split("");
  int start = 0;
  for (int end = 0; end < st.length; end++) {
    // If we see a space, we
    // reverse the previous
    // word (word between
    // the indexes start and end-1
    // i.e., s[start..end-1]
    if (st[end] == ' ') {
      reverse(st, start, end);
      start = end + 1;
    }
  }
  // Reverse the last word
  reverse(st, start, st.length - 1);
  // Reverse the entire String
  reverse(st, 0, st.length - 1);

  print(st.join(""));
  return st.join("");
}
