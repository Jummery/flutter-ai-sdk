import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_ai_storage/flutter_ai_storage.dart';

void main() {
  group('StorageRepository', () {
    test('public storage API is exported', () {
      expect(StorageRepository, isNotNull);
      expect(AIDatabase, isNotNull);
    });
  });
}
