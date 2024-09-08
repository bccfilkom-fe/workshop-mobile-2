import 'package:apa_aja/presentation/cubit/user_cubit.dart';
import 'package:apa_aja/core/router/route_path.dart';
import 'package:apa_aja/presentation/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nama'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan nama Anda ';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan email Anda';
                  }
                  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return 'Mohon masukkan email yang valid';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan password Anda';
                  }
                  if (value.length < 6) {
                    return 'Password harus minimal 6 karakter';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              Buttons(
                  text: 'Masuk',
                  onClicked: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<UserCubit>().setUserData(
                            name: _nameController.text,
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                      Navigator.pushNamed(context, secondPage);
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
