import 'package:flutter/material.dart';
import '../../../../../common/widgets/image_text/image_text_vertical.dart';
import '../../../../../utils/constants/sizes.dart';

class GHeaderCategories extends StatelessWidget {
  const GHeaderCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> category = [
      {
        'name': 'Salón',
        'image': 'assets/icons/categories/icons8-dining-chair-64.png'
      },
    ];

    return Padding(
      padding: const EdgeInsets.only(left: GSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return GVerticalImageAndText(
                  title: category[0]['name']!,
                  image: category[0]['image']!,
                  onTap: () {},
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
