import 'package:we/shared/components/components.dart';
import 'package:we/shared/cubit/cubit.dart';
import 'package:we/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewTasksScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state)
        {
          AppCubit cubit = AppCubit.get(context);

          return Scaffold(
            body: Center(
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Text("NewTasksScreen"),
                  SizedBox(height: 50,),
                  RaisedButton(
                    onPressed: (){
                      //navigateAndFinish(context,SignIN());
                    },
                    child: Text("SignIN"),)
                ],
              ),

            ),
          );
        },
      ),
    );
  }
}