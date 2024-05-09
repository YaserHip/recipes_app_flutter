import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app_flutter/core/approuter.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_user.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/user/cubit_user.dart';

class PageUser extends StatelessWidget {
  const PageUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User information',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, shadows: [
            Shadow(
                color: Colors.black12, offset: Offset(0.1, 0.1), blurRadius: 8)
          ]),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
              child: BlocConsumer<CubitUser, StateUser>(
            listener: (context, state) {
              if (state is StateUserLogout) {
                context.go('/${AppRoutes.pageLogin.name}');
              }
            },
            builder: (context, state) => switch (state) {
              StateUserInitial() => const SizedBox.shrink(),
              StateUserLoading() => const CircularProgressIndicator(),
              StateUserLoaded() => _buildBody(context, state.data),
              StateUserError() => Text(state.message),
              StateUserLogout() => const SizedBox.shrink(),
            },
          )),
        ),
      )),
    );
  }

  _buildBody(BuildContext context, ModelUser data) => Column(
        children: [
          const Text(
            'Full name',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            data.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Email',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            data.email,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
          ),
          const SizedBox(
            height: 48,
          ),
          ElevatedButton(
              onPressed: () {
                context.read<CubitUser>().doLogout();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.error,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(18)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.power_settings_new,
                    color: Theme.of(context).colorScheme.onError,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onError),
                  )
                ],
              ))
        ],
      );
}
