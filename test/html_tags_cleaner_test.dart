import 'package:flutter_test/flutter_test.dart';
import 'package:html_tags_cleaner/html_tags_cleaner.dart';
import 'package:html_tags_cleaner/html_tags_cleaner_platform_interface.dart';
import 'package:html_tags_cleaner/html_tags_cleaner_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHtmlTagsCleanerPlatform
    with MockPlatformInterfaceMixin
    implements HtmlTagsCleanerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HtmlTagsCleanerPlatform initialPlatform = HtmlTagsCleanerPlatform.instance;

  test('$MethodChannelHtmlTagsCleaner is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHtmlTagsCleaner>());
  });

  test('getPlatformVersion', () async {
    HtmlTagsCleaner htmlTagsCleanerPlugin = HtmlTagsCleaner();
    MockHtmlTagsCleanerPlatform fakePlatform = MockHtmlTagsCleanerPlatform();
    HtmlTagsCleanerPlatform.instance = fakePlatform;

    expect(await htmlTagsCleanerPlugin.getPlatformVersion(), '42');
  });
}
