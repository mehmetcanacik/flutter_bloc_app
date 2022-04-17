
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../extensions/app_ext.dart';
import '../service/user_service.dart';
import '../user_bloc/user_bloc.dart';

class FetchUserButton extends StatelessWidget {
  const FetchUserButton({
    Key? key,
    required this.url,
    this.text = '',
  }) : super(key: key);
  final UserUrl url;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.read<UserBloc>().add(
            LoadPersonAction(url: url, onLoader: UserService().fetchUser),
          ),
      child: Text(text),
    );
  }
}
