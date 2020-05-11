final userAuthTable = 'UserAuth';

final userAuthIdField = "userId";
final userAuthTokenField = 'userToken';

class UserAuth {
  final int userId;
  final String userToken;

  UserAuth({this.userId, this.userToken});

  factory UserAuth.fromDatabaseJson(Map<String, dynamic> data) => UserAuth(
        userId: data['userId'],
        userToken: data['userToken'],
      );

  Map<String, dynamic> toDatabaseJson() => {
        "userId": this.userId,
        "userToken": this.userToken,
      };
}
