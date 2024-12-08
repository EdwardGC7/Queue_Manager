import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:queue_manager/common/styles/shadows.dart';
import 'package:queue_manager/common/widgets/shapes/rounded_container.dart';
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

    return GestureDetector(
      onTap: () {},
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
