import 'SecItem.dart';

abstract class SecureService {
  Future<Null> addNewItem(SecItem secItem);
  void deleteAll();
  Future<List<SecItem>> readAll();
}
