void main() {
  final text = "The quick brown fox jumps the fancy";

  int wordsCount = countWords(text);
  int vowelsCount = countVowels(text);
  int consonantsCount = countConsonants(text);

  print("O texto \"$text\" possui:");
  print("$wordsCount palavras;");
  print("$vowelsCount vogais; e");
  print("$consonantsCount consoantes.");
}

int countWords(String text) {
  return text.split(" ").length;
}

int countVowels(String text) {
  final vowels = "aeiou";

  int count = 0;

  for (String char in text.split("")) {
    if (vowels.contains(char.toLowerCase())) {
      count++;
    }
  }

  return count;
}

int countConsonants(String text) {
  final consonants = "bcdfghjklmnpqrstvwxyz";

  int count = 0;

  for (String char in text.split("")) {
    if (consonants.contains(char.toLowerCase())) {
      count++;
    }
  }

  return count;
}
