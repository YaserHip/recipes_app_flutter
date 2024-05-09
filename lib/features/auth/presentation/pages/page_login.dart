import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app_flutter/core/approuter.dart';
import 'package:recipes_app_flutter/core/widgets/snackbar_error.dart';
import 'package:recipes_app_flutter/core/widgets/snackbar_success.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/login/cubit_login.dart';
import 'package:recipes_app_flutter/features/auth/presentation/widgets/widget_text_form_field.dart';
import 'package:recipes_app_flutter/features/auth/presentation/widgets/widget_textfield_password.dart';

import '../../../../core/util/validators.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(42.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _widgetLogo(),
                const SizedBox(
                  height: 38,
                ),
                SizedBox(
                  width: 250,
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          WidgetTextFormField(
                              isEnabled: isEnabled,
                              controller: _emailController,
                              validator: validateEmail,
                              hintText: 'Email address'),
                          const SizedBox(
                            height: 12,
                          ),
                          WidgetTextFieldPassword(
                            enabled: isEnabled,
                            validator: validatePass,
                            controller: _passController,
                          ),
                          const SizedBox(
                            height: 38,
                          ),
                          BlocConsumer<CubitLogin, StateLogin>(
                              listener: (context, state) {
                            if (state is StateLoginError) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snackBarError(state.message, context));
                            } else if (state is StateLoginLoaded) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snackBarSuccess('Login succeed.', context));
                              context.go('/${AppRoutes.pageHome.name}');
                            }
                          }, builder: (context, state) {
                            switch (state) {
                              case StateLoginInitial():
                                return _buildLoginButton();
                              case StateLoginLoading():
                                {
                                  isEnabled = false;
                                  return const CircularProgressIndicator();
                                }
                              case StateLoginLoaded() || StateLoginError():
                                {
                                  isEnabled = true;
                                  return _buildLoginButton();
                                }
                            }
                          }),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  _buildLoginButton() => Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    padding: const EdgeInsets.all(16)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<CubitLogin>().loginWithEmailAndPass(
                        _emailController.text, _passController.text);
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16),
                )),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(
                width: 8,
              ),
              TextButton(
                  onPressed: () {
                    context.push('/${AppRoutes.pageRegister.name}');
                  },
                  child: const Text('Sign up'))
            ],
          )
        ],
      );

  _widgetLogo() => const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'The\nRecipes',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                shadows: [
                  Shadow(
                      color: Colors.black26,
                      offset: Offset(0.1, 0.1),
                      blurRadius: 8)
                ]),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'A new way of cooking.',
            style: TextStyle(fontSize: 13),
          )
        ],
      );
}
