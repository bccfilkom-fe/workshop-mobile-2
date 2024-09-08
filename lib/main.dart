import 'package:apa_aja/presentation/cubit/user_cubit.dart';
import 'package:apa_aja/core/router/route.dart';
import 'package:apa_aja/core/router/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: const MaterialApp(
        title: 'Apa ajah',
        onGenerateRoute: MyRouter.onGenerateRoute,
        initialRoute: homePage,
      ),
    );
  }
}
