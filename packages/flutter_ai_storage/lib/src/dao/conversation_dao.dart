import 'package:drift/drift.dart';

import '../database/ai_database.dart';
import '../tables/conversations_table.dart';

/// Data access operations for conversations.
class ConversationDao {
  ConversationDao(this.db);

  final AIDatabase db;

  Future<List<Conversation>> getAll() =>
      (db.select(db.conversations)
            ..orderBy([
              (t) => OrderingTerm(
                    expression: t.updatedAt,
                    mode: OrderingMode.desc,
                  ),
            ]))
          .get();

  Future<void> insertConversation(ConversationsCompanion entry) =>
      db.into(db.conversations).insert(entry);

  Future<int> deleteConversation(String id) =>
      (db.delete(db.conversations)..where((t) => t.id.equals(id))).go();
}
