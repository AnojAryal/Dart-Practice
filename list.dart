//list and sets

void main() {
  List<int> scores = [50, 70, 75, 80];
  print(scores[0]);

  scores[0] = 25;
  print(scores[0]);

  scores.add(90);
  print(scores);

  scores.removeLast();
  print(scores);
}