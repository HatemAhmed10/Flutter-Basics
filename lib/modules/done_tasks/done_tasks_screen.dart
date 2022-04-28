import 'package:flutter/material.dart';
import 'package:we/shared/components/components.dart';
import 'package:we/shared/cubit/cubit.dart';
import 'package:we/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoneTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state)
        {
          AppCubit cubit = AppCubit.get(context);

          return Scaffold(
            body: Center(
              child: Container(
                color: Colors.white,
                child: buildListProduct(context),
              ),
            ),
          );
        },
      ),
    );
  }
}
