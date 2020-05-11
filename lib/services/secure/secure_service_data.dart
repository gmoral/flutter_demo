import 'secure_service.dart';
import 'SecItem.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final _storage = FlutterSecureStorage();

class SecureServiceData implements SecureService {
  Future<Null> addNewItem(SecItem secItem) async {
    await _storage.write(key: secItem.key, value: secItem.value);
    return null;
  }

  void deleteAll() async {
    await _storage.deleteAll();
  }

  Future<List<SecItem>> readAll() async {
    final all = await _storage.readAll();

    List<SecItem> items = [];

    items =
        all.keys.map((key) => SecItem(key, all[key])).toList(growable: false);

    items.forEach((element) =>
        print(' key: ' + element.key + ' value: ' + element.value));

    return items;
  }
}
