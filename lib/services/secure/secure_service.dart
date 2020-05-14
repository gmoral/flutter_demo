import 'SecItem.dart';

abstract class SecureService {
  Future<Null> addNewItem(SecItem secItem);
  Future<String> getPin(String key);
  void deleteAll();
  Future<List<SecItem>> readAll();
}
