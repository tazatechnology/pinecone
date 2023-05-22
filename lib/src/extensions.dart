import 'package:pinecone/src/generated/schema/schema.dart';

// ==========================================
// EXTENSION: Index
// ==========================================

extension ExtensionIndex on Index {
  String get name => database.name;

  String get projectId {
    final re = RegExp(r'(?<=-)(.*)(?=\.svc)');
    var match = re.firstMatch(status.host);
    if (match != null) {
      return (match.group(0) ?? '').split('-').last;
    } else {
      return '';
    }
  }

  String get environment {
    final re = RegExp(r'(?<=svc\.)(.*)(?=\.pinecone)');
    var match = re.firstMatch(status.host);
    if (match != null) {
      return (match.group(0) ?? '');
    } else {
      return '';
    }
  }
}
