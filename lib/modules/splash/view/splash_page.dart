import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../global/blocs/super/super_bloc.dart';
import '../splash.dart';
import 'splash_view.dart';

class SplashPage extends StatelessWidget {
  static const String name = '/splash';

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (ctx) {
        return BlocProvider(
          create: (context) => SplashBloc(
            superBloc: context.read<SuperBloc>(),
          ),
          child: const SplashView(),
        );
      },
    );
  }

  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(
        superBloc: context.read<SuperBloc>(),
      )..add(
          const FetchSplashEvent(),
        ),
      child: const SplashView(),
    );
  }
}
