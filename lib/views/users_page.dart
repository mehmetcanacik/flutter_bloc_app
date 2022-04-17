import 'package:bloc_app/core/extensions/app_ext.dart';
import 'package:bloc_app/core/widgets/fetch_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/user_bloc/user_bloc.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (_) => UserBloc(),
      child: const UserView(),
    );
  }
}

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users Page')),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  FetchUserButton(url: UserUrl.users1, text: 'List User #1'),
                  FetchUserButton(url: UserUrl.users2, text: 'List User #2'),
                ],
              ),
            ),
            const SizedBox(height: 30),
            BlocBuilder<UserBloc, FetchResult?>(
                builder: (context, FetchResult? fetchResult) {
              return fetchResult != null
                  ? fetchResult.users.itemToWidget()
                  : const Center(child: Text('Null'));
            })
          ],
        ),
      ),
    );
  }
}
