import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:siak_baitulhikmah/features/users/dummy_users.dart';
import 'package:siak_baitulhikmah/router.dart';

import '../../widgets/widgets.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ContentView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PageHeader(
            title: 'Data Siswa',
            description: 'Berikut adalah data siswa yang terdaftar.',
          ),
          const Gap(16),
          Expanded(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: ListView.separated(
                itemCount: dummyUsers.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final user = dummyUsers[index];
                  return ListTile(
                    title: Text(
                      user.name,
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      user.role,
                      style: theme.textTheme.labelMedium,
                    ),
                    trailing: const Icon(Icons.navigate_next_outlined),
                    onTap: () {
                      UserPageRoute(userId: user.userId).go(context);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
