part of 'user_bloc.dart';

@immutable
class FetchResult {
  const FetchResult({
    this.users = const [],
    this.isCache = false,
  });
  final Iterable<User> users;
  final bool isCache;

  @override
  bool operator ==(covariant FetchResult other) {
    return users.isEqualOrIgnoring(other.users) && isCache == other.isCache;
  }

  @override
  int get hashCode => Object.hash(users, isCache);
}



 

//List<int> firstList[1,2,3,4]  => {1,2,3,4}
//List<int>[1,2,3,5]            => {1,2,3,4}
                                 // {1,2,3,4}