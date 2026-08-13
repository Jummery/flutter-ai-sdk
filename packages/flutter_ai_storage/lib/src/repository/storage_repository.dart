import '../dao/conversation_dao.dart';
import '../dao/message_dao.dart';
import '../database/ai_database.dart';

/// Application-facing storage facade.
///
/// The chat runtime depends on this abstraction rather than directly on
/// Drift tables or generated database rows.
class StorageRepository {
  StorageRepository({required AIDatabase database})
      : _database = database,
        _conversations = ConversationDao(database),
        _messages = MessageDao(database);

  final AIDatabase _database;
  final ConversationDao _conversations;
  final MessageDao _messages;

  Future<List<Conversation>> getConversations() {
    return _conversations.getAll();
  }

  Future<void> createConversation(ConversationsCompanion entry) {
    return _conversations.insertConversation(entry);
  }

  /// Deletes a conversation and all of its messages atomically.
  Future<int> deleteConversation(String id) {
    return _database.transaction(() async {
      await _messages.deleteByConversation(id);
      return _conversations.deleteConversation(id);
    });
  }

  Future<List<Message>> getMessages(String conversationId) {
    return _messages.getByConversation(conversationId);
  }

  Future<void> saveMessage(MessagesCompanion entry) {
    return _messages.insertMessage(entry);
  }
}
