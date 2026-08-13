import 'package:drift/drift.dart';

import '../tables/conversations_table.dart';
import '../tables/messages_table.dart';

part 'ai_database.g.dart';

/// Local Drift database for conversations and messages.
@DriftDatabase(tables: [Conversations, Messages])
class AIDatabase extends _$AIDatabase {
  AIDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
