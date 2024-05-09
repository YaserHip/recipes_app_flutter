import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app_flutter/core/util/validators.dart';
import 'package:recipes_app_flutter/core/widgets/snackbar_success.dart';
import 'package:recipes_app_flutter/features/auth/presentation/cubit/register/cubit_register.dart';
import 'package:recipes_app_flutter/features/auth/presentation/widgets/widget_text_form_field.dart';
import 'package:recipes_app_flutter/features/auth/presentation/widgets/widget_textfield_password.dart';

import '../../../../core/widgets/snackbar_error.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();

  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign up',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, shadows: [
            Shadow(
                color: Colors.black12, offset: Offset(0.1, 0.1), blurRadius: 8)
          ]),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(42.0),
          child: Center(
            child: Form(
                key: _formKey,
                child: SizedBox(
                  width: 250,
                  child: Column(
                    children: [
                      const Text(
                          'Create a new account to access the application.'),
                      const SizedBox(
                        height: 32,
                      ),
                      WidgetTextFormField(
                          isEnabled: isEnabled,
                          controller: _nameController,
                          validator: validateBlank,
                          hintText: 'Full name'),
                      const SizedBox(
                        height: 8,
                      ),
                      WidgetTextFormField(
                          isEnabled: isEnabled,
                          controller: _emailController,
                          validator: validateEmail,
                          hintText: 'Email address'),
                      const SizedBox(
                        height: 8,
                      ),
                      WidgetTextFieldPassword(
                          controller: _passController,
                          validator: validatePass,
                          enabled: isEnabled),
                      const SizedBox(
                        height: 8,
                      ),
                      WidgetTextFieldPassword(
                        controller: _confirmPassController,
                        validator: (value) {
                          if (value != _passController.text) {
                            return 'Passwords do not match.';
                          } else {
                            return null;
                          }
                        },
                        enabled: isEnabled,
                        hintText: 'Confirm Password',
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      BlocConsumer<CubitRegister, StateRegister>(
                          listener: (context, state) {
                        if (state is StateRegisterError) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              snackBarError(state.message, context));
                        } else if (state is StateRegisterLoaded) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              snackBarSuccess('Register completed.', context));
                          context.pop();
                        }
                      }, builder: (context, state) {
                        switch (state) {
                          case StateRegisterInitial():
                            return _buildRegisterButton();
                          case StateRegisterLoading():
                            {
                              isEnabled = false;
                              return const CircularProgressIndicator();
                            }
                          case StateRegisterLoaded() || StateRegisterError():
                            {
                              isEnabled = true;
                              return _buildRegisterButton();
                            }
                        }
                      })
                    ],
                  ),
                )),
          ),
        ),
      )),
    );
  }

  _buildRegisterButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                padding: const EdgeInsets.all(16)),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.read<CubitRegister>().doRegisterWithEmail(
                    _nameController.text,
                    _emailController.text,
                    _passController.text);
              }
            },
            child: const Text(
              'Register',
              style: TextStyle(fontSize: 16),
            )),
      );
}
