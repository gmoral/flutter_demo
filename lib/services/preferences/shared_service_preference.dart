import 'shared_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedServicePreference implements SharedService {
  @override
  Future<int> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('userId_key') ?? 0;
  }

  @override
  Future<void> saveUserId(int userId) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('userId_key', userId);
  }
}
