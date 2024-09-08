import 'package:apa_aja/presentation/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Pengguna')),
      body: Center(
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            return UserInfoCard(
              name: state.name,
              email: state.email,
            );
          },
        ),
      ),
    );
  }
}

class UserInfoCard extends StatelessWidget {
  final String name;
  final String email;

  const UserInfoCard({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const UserInfoRow(label: 'NIM', value: '225158924923'),
            const SizedBox(height: 8),
            UserInfoRow(label: 'Nama', value: name),
            const SizedBox(height: 8),
            UserInfoRow(label: 'Email', value: email),
          ],
        ),
      ),
    );
  }
}

class UserInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const UserInfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
