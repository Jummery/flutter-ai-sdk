import 'package:drift/drift.dart';

/// Persistent chat messages belonging to a conversation.
class Messages extends Table {
  TextColumn get id => text()();
  TextColumn get conversationId => text()();
  TextColumn get role => text()();
  TextColumn get content => text()();
  TextColumn get model => text().nullable()();
  IntColumn get tokenCount => integer().nullable()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
