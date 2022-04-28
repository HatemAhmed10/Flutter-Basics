import 'package:we/shared/cubit/cubit.dart';
import 'package:we/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArchivedTasksScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state)
        {
          AppCubit cubit = AppCubit.get(context);

          return Container(
            child: Column(
              children: [
                Text("ArchivedTasksScreen"),
                FlatButton(
                    onPressed: (){
                      cubit.SingUp(username: "Tomas", password: "123") ;
                    },
                    child: Text("Saved",style: TextStyle(color: Colors.pink),)
                ),
                SizedBox(height: 50,),
                FlatButton(
                    onPressed: (){
                      cubit.LogIn() ;
                    },
                    child: Text("Get",style: TextStyle(color: Colors.pink),)
                ),
                Text(cubit.FinalData.toString()),
              ],
            ),
          );
        },
      ),
    );
  }
}