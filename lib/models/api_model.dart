class ApiModel {
  int jokeId = 0;
  String jokeType = '';
  String setup = '';
  String punchLine = '';

  ApiModel({
    required this.jokeId,
    required this.jokeType,
    required this.punchLine,
    required this.setup,
  });
}
