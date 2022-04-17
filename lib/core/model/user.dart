import 'package:flutter/foundation.dart' show immutable;

@immutable
class User {
  final int userId;
  final String firstName;
  final String email;

  const User({
    required this.userId,
    required this.firstName,
    required this.email,
  });

  User.fromJson(UserMap jsonData)
      : userId = jsonData['userId'],
        firstName = jsonData['first_name'],
        email = jsonData['email'];

  @override
  String toString() => 'User  FirstName: $firstName, Email: $email';
}

typedef UserMap = Map<String, dynamic>;
