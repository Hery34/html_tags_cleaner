class HtmlTagsCleaner {
  static String clean(String text) {
    final newLineRegExp = RegExp(r"<\/?(?:br|p|div|span)\s*/?>");
    final otherTagsRegExp = RegExp(r"</?[^>]+>");

    String cleanText = text.replaceAll(newLineRegExp, "\n");
    cleanText = cleanText.replaceAll(otherTagsRegExp, "");
    cleanText = cleanText.replaceAll(r"\n+", "\n");
    cleanText = cleanText.replaceAll(r"\s+", " ");
    return cleanText.trim();
  }
}
