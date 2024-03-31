import 'package:flutter_test/flutter_test.dart';
import 'package:html_tags_cleaner/html_tags_cleaner.dart';

void main() {
  group('HtmlTagsCleaner', () {
    test('clean should remove HTML tags', () {
      const input = 'This is a <br>test string';
      const expected = 'This is a \ntest string';
      final result = HtmlTagsCleaner.clean(input);
      expect(result, expected);
    });

    test('clean should handle nested HTLM tags', () {
      const input = 'This <strong>is <br> a <bold>test<bold> string';
      const expected = 'This is \n a test string';
      final result = HtmlTagsCleaner.clean(input);
      expect(result, expected);
    });

    test('clean should handle nested HTML tags', () {
      const input = 'This <bold>is a <span>test string';
      const expected = 'This is a \ntest string';
      final result = HtmlTagsCleaner.clean(input);
      expect(result, expected);
    });
  });
}
