import 'package:flutter_test/flutter_test.dart';
import 'package:drift/native.dart';

import 'package:flutter_ai_storage/flutter_ai_storage.dart';
import 'package:flutter_ai_storage/src/tables/conversations_table.dart';
import 'package:flutter_ai_storage/src/tables/messages_table.dart';

void main() {
  test('persists and deletes a conversation with its messages', () async {
    final database = AIDatabase(NativeDatabase.memory());
    final repository = StorageRepository(database: database);
    final now = DateTime.now();

    await repository.createConversation(
      ConversationsCompanion.insert(
        id: 'conversation-1',
        title: const Value('Test conversation'),
        model: 'test-model',
        createdAt: now,
        updatedAt: now,
      ),
    );

    await repository.saveMessage(
      MessagesCompanion.insert(
        id: 'message-1',
        conversationId: 'conversation-1',
        role: 'user',
        content: 'hello',
        createdAt: now,
      ),
    );

    expect((await repository.getConversations()).length, 1);
    expect((await repository.getMessages('conversation-1')).length, 1);

    await repository.deleteConversation('conversation-1');

    expect(await repository.getConversations(), isEmpty);
    expect(await repository.getMessages('conversation-1'), isEmpty);

    await database.close();
  });
}
