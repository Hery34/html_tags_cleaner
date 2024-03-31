class HtmlTagsCleaner {
  static String clean(String text) {
    RegExp exp = RegExp(r"<[^>]*>");

    String cleanText = text.replaceAll(exp, "\n");
    cleanText = cleanText.replaceAll(r"\s+", " ");

    return cleanText;
  }
}
