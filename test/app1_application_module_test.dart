import 'package:flutter_test/flutter_test.dart';
import 'package:app1_application_module/app1_application_module.dart';
import 'package:app1_application_module/app1_application_module_platform_interface.dart';
import 'package:app1_application_module/app1_application_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockApp1ApplicationModulePlatform
    with MockPlatformInterfaceMixin
    implements App1ApplicationModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final App1ApplicationModulePlatform initialPlatform = App1ApplicationModulePlatform.instance;

  test('$MethodChannelApp1ApplicationModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelApp1ApplicationModule>());
  });

  test('getPlatformVersion', () async {
    App1ApplicationModule app1ApplicationModulePlugin = App1ApplicationModule();
    MockApp1ApplicationModulePlatform fakePlatform = MockApp1ApplicationModulePlatform();
    App1ApplicationModulePlatform.instance = fakePlatform;

    expect(await app1ApplicationModulePlugin.getPlatformVersion(), '42');
  });
}
