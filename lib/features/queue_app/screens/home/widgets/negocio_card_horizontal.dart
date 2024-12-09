import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:queue_manager/common/styles/shadows.dart';
import 'package:queue_manager/common/widgets/shapes/rounded_container.dart';
import 'package:queue_manager/routes/routes.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/helpers/helper_functions.dart';

class GNegocioCardHorizontal extends StatelessWidget {
  const GNegocioCardHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return InkWell(
      onTap: () {
        Get.toNamed(Routes.BUSINESS_DETAILS, arguments: {
          'name': 'Negocio 1',
          'category': 'Categoría',
          'rating': 4.5,
          'location': 'Calle Principal al afoafo oehro eoenfoefoho ohfos hfso ',
          'services': [
            {'name': 'Servicio 1', 'price': 100},
            {'name': 'Servicio 2', 'price': 200},
          ],
          'reviews': [
            {'user': 'Cliente 1', 'review': '¡Muy bueno!', 'rating': 5},
          ],
          'images': [
            'assets/images/banners/banner_1.jpg',
            'assets/images/banners/banner_2.jpg'
          ],
        });
      },
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [GShadowStyle.verticalCardShadow],
          borderRadius: BorderRadius.circular(GSizes.productImageRadius),
          color: dark ? GColors.darkerGrey : GColors.white,
        ),
        child: Row(
          children: [
            /// Cuadro gris con el icono
            GRoundedContainer(
              height: 100, // Tamaño fijo para el contenedor gris
              width: 100, // Tamaño fijo para el contenedor gris
              padding: const EdgeInsets.all(GSizes.sm),
              backgroundColor: dark ? GColors.dark : GColors.light,
              child: const Center(
                child: Icon(
                  Iconsax.buildings4,
                  size: 60,
                ),
              ),
            ),

            /// Espacio blanco
            const Expanded(
              child: Padding(
                padding: const EdgeInsets.all(GSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Título del Negocio",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: GSizes.sm),
                    Text(
                      "Descripción breve o información adicional sobre el negocio.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
