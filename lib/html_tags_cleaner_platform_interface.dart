import 'package:html_tags_cleaner/html_tags_cleaner.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class HtmlTagsCleanerPlatform extends PlatformInterface {
  HtmlTagsCleanerPlatform() : super(token: _token);

  static final Object _token = Object();

  static HtmlTagsCleanerPlatform instance =
      HtmlTagsCleanerPlatformImlementation();

  String clean(String text) {
    throw UnimplementedError('HtmlTagsCleaner() has not been implemented.');
  }
}

class HtmlTagsCleanerPlatformImlementation extends HtmlTagsCleanerPlatform {
  @override
  String clean(String text) {
    return HtmlTagsCleaner.clean(text);
  }
}
