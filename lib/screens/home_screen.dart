import 'package:bear/consts/app_color.dart';
import 'package:bear/cubit/bear_cubit.dart';
import 'package:bear/cubit/brear_states.dart';
import 'package:bear/widget/button.dart';
import 'package:bear/widget/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, this.riveArtBoard}) : super(key: key);

  final Artboard? riveArtBoard;

  @override
  Widget build(BuildContext context) {
    final bearCubit = BlocProvider.of<BearCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 20,
        ),
        child: FadeInAnimation(
          delay: 6,
          child: Column(
            children: [
              BlocBuilder<BearCubit, BearState>(
                builder: (context, state) {
                  if (state is BearMove) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                      child: Rive(artboard: state.riveArtBoard!),
                    );
                  } else {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                      child: Image.asset("assets/bear_pic.png"),
                    );
                  }
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    fuc: bearCubit.handsUp,
                    text: 'shy 🙈',
                  ),
                  CustomButton(
                    fuc: bearCubit.handsDown,
                    text: 'normal 😊',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    fuc: bearCubit.lookLeft,
                    text: 'look left ⬅',
                  ),
                  CustomButton(
                    fuc: bearCubit.lookRight,
                    text: 'look right ➡',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    fuc: bearCubit.angry,
                    text: 'Angry 😠',
                  ),
                  CustomButton(
                    fuc: bearCubit.happy,
                    text: 'Cheerful ☺️',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              CustomButton(
                fuc: bearCubit.lookIdle,
                text: 'Restart 🔁',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
