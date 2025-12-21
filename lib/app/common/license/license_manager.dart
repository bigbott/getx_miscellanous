//License manager for the fonts  and code snippets

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

abstract final class LicenseManager {
  LicenseManager._();

  static const names = ['hourglass', 'keyboard'];

  static void addToRegistry() {
    for (final name in names) {
      LicenseRegistry.addLicense(() async* {
        final content = await rootBundle.loadString('assets/licenses/LICENSE_$name.txt');
        yield LicenseEntryWithLineBreaks([name], content);
      });
    }
  }
}
