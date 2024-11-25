import 'package:bwabat/core/theming/colors.dart';
import 'package:bwabat/core/widgets/app_text_form_field.dart';
import 'package:bwabat/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../logic/login_cubit/login_cubit.dart';

class BuildLoginContainer extends StatefulWidget {
  const BuildLoginContainer({
    super.key,
  });

  @override
  State<BuildLoginContainer> createState() => _BuildLoginContainerState();
}

class _BuildLoginContainerState extends State<BuildLoginContainer> {
  bool isObscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  final _formKey = GlobalKey<FormBuilderState>();
  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          AppTextFormField(
            // key: _emailFieldKey,
            label: 'Email',
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),
            prefixIcon: const Icon(
              Icons.email,
              color: ColorsManager.primaryColor,
            ),
          ),
          const SizedBox(height: 10),
          AppTextFormField(
            label: 'Password',
            isObscureText: true,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
            prefixIcon: const Icon(
              Icons.lock,
              color: ColorsManager.primaryColor,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: CustomButton.withoutIcon(
                    textColor: Colors.white,
                    fontSize: 18,
                    // color: Theme.of(context).colorScheme.secondary,4
                    backgroundColor: ColorsManager.primaryColor,

                    padding: const EdgeInsets.symmetric(vertical: 13),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => Center(
                                child: LoadingAnimationWidget.discreteCircle(
                                  color: ColorsManager.primaryColor,
                                  secondRingColor: const Color(0xFF1A1A3F),
                                  thirdRingColor: ColorsManager.primaryColor,
                                  size: 50,
                                ),
                              ));
                      // Validate and save the form values
                      _formKey.currentState?.saveAndValidate();
                      debugPrint(_formKey.currentState?.value.toString());
                      // On another side, can access all field values without saving form with instantValues
                      _formKey.currentState?.validate();
                      debugPrint(
                          _formKey.currentState?.instantValue.toString());
                    },
                    text: 'Login',
                    // child: const Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ]
            .animate(interval: 400.ms)
            .fade(duration: 400.ms)
            .shader(
              duration: 400.ms,
            )
            .slideX(),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate() &&
        AppRegex.isPasswordValid(passwordController.text)) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
