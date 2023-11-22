import 'package:siak_baitulhikmah/features/users/user.dart';

List<User> dummyUsers = _json.map((json) {
  if (json
      case {
        'userId': final String userId,
        'name': final String name,
        'role': final String role,
      }) {
    return User(userId: userId, name: name, role: role);
  } else {
    throw const FormatException('Unexpected JSON');
  }
}).toList();

const _json = [
  {
    'userId': 'BH001',
    'name': 'Fatahillah Ardhi',
    'role': 'Kancil',
  },
  {
    'userId': 'BH002',
    'name': 'Fikry',
    'role': 'Kijang',
  },
  {
    'userId': 'BH003',
    'name': 'Ihsan Rinaldy',
    'role': 'Rusa',
  },
];
