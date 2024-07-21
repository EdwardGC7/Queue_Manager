import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';
import 'package:queue_manager/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class GTermsAndConditionCheckbox extends StatefulWidget {
  const GTermsAndConditionCheckbox({super.key});

  @override
  _GTermsAndConditionCheckboxState createState() =>
      _GTermsAndConditionCheckboxState();
}

class _GTermsAndConditionCheckboxState
    extends State<GTermsAndConditionCheckbox> {
  bool _privacyPolicy = false;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Wrap(
      spacing: 8.0, // espacio entre los elementos en la misma línea
      runSpacing: 8.0, // espacio entre las líneas
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        SizedBox(
          child: Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: _privacyPolicy,
                  onChanged: (value) {
                    setState(() {
                      _privacyPolicy = value!;
                    });
                  },
                ),
              ),
              const SizedBox(width: GSizes.spaceBtwItems / 2),
              Text.rich(TextSpan(
                text: '${GTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              )),
            ],
          ),
        ),
        const SizedBox(width: GSizes.spaceBtwItems / 2),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: '${GTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? GColors.white : GColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? GColors.white : GColors.primary,
                  ),
            ),
            TextSpan(
              text: '${GTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: GTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? GColors.white : GColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? GColors.white : GColors.primary,
                  ),
            ),
          ]),
        ),
      ],
    );
  }
}
