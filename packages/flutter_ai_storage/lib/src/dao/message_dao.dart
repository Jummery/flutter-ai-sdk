import 'package:drift/drift.dart';

import '../database/ai_database.dart';

/// Data access operations for chat messages.
class MessageDao {
  MessageDao(this.db);

  final AIDatabase db;

  Future<List<Message>> getByConversation(String conversationId) =>
      (db.select(db.messages)
            ..where((t) => t.conversationId.equals(conversationId))
            ..orderBy([
              (t) => OrderingTerm.asc(t.createdAt),
            ]))
          .get();

  Future<void> insertMessage(MessagesCompanion entry) =>
      db.into(db.messages).insert(entry);

  Future<int> deleteByConversation(String conversationId) =>
      (db.delete(db.messages)
            ..where((t) => t.conversationId.equals(conversationId)))
          .go();
}
