import 'package:bwabat/core/theming/colors.dart';
import 'package:bwabat/core/widgets/app_text_form_field.dart';
import 'package:bwabat/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../logic/login_cubit.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            // key: _emailFieldKey,
            label: 'Email',
            controller: context.read<LoginCubit>().emailController,
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
            controller: context.read<LoginCubit>().passwordController,
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
                    backgroundColor: const Color.fromARGB(255, 25, 75, 136),

                    padding: const EdgeInsets.symmetric(vertical: 13),
                    onPressed: () => validateThenDoLogin(context),
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
    if (context.read<LoginCubit>().formKey.currentState?.saveAndValidate() ??
        false) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
