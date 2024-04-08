void main() {
  List<int> scores = [50, 70, 75, 20, 80, 99, 100, 38];

  for (int score in scores) {
    if (score > 50) {
      print('The score is $score');
    } else {
      print('Score not high enough: $score');
    }
  }

  print('============================');

  List<int> marks = [50, 60, 70, 80, 90, 100];

  for (int mark in marks.where((m) => m>50)) {
    print('The mark is: $mark');
  }
}
