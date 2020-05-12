abstract class SharedService {
  Future<int> getUserId();
  Future<void> saveUserId(int userId);
}
