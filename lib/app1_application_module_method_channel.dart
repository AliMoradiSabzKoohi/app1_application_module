import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app1_application_module_platform_interface.dart';

/// An implementation of [App1ApplicationModulePlatform] that uses method channels.
class MethodChannelApp1ApplicationModule extends App1ApplicationModulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app1_application_module');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
