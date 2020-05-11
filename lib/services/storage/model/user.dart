final userTable = 'User';

final userIdField = "userId";
final usernameField = 'username';
final isActiveField = 'isActive';

class User {
  final int userId;
  final String username;
  final bool isActive;

  User({this.userId, this.username, this.isActive});

  factory User.fromDatabaseJson(Map<String, dynamic> data) => User(
        userId: data['userId'],
        username: data['username'],
        isActive: data['isActive'] == 0 ? false : true,
      );

  Map<String, dynamic> toDatabaseJson() => {
        "userId": this.userId,
        "username": this.username,
        "isActive": this.isActive == false ? 0 : 1,
      };
}
