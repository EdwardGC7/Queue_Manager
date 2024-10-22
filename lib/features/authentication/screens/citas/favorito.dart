import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:queue_manager/common/styles/shadows.dart';
import 'package:queue_manager/common/widgets/images/g_rounded_image.dart';
import 'package:queue_manager/common/widgets/layouts/grid_layout.dart';
import 'package:queue_manager/common/widgets/shapes/rounded_container.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/image_strings.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/helpers/helper_functions.dart';

class Favorito extends StatefulWidget {
  const Favorito({super.key});

  @override
  State<Favorito> createState() => _FavoritoState();
}

class _FavoritoState extends State<Favorito> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Favoritos",
          style: TextStyle(color: GColors.white),
        ),
        centerTitle: true,
        backgroundColor: GColors.primaryGreen,
        shadowColor: Colors.black,
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              GGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => Container(
                  width: 180,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      boxShadow: [GShadowStyle.verticalCardShadow],
                      borderRadius:
                          BorderRadius.circular(GSizes.productImageRadius),
                      color: GHelperFunctions.isDarkMode(context)
                          ? GColors.darkGrey
                          : GColors.white),
                  child: Column(
                    children: [
                      //-- contenedor de favoritos
                      GRoundedContainer(
                        height: 180,
                        padding: EdgeInsets.all(GSizes.sm),
                        backgroundColor: GHelperFunctions.isDarkMode(context)
                            ? GColors.darkGrey
                            : GColors.light,
                        child: Stack(
                          children: [
                            //-- imagen de favoritos
                            GRoundedImage(
                              imageUrl: GImages.gojo,
                              applyImageRadius: true,
                            ),
                            //-- cuadro de la esquina superior izquierda
                            Positioned(
                              top: 3,
                              left: 3,
                              child: GRoundedContainer(
                                radius: GSizes.sm,
                                backgroundColor:
                                    GColors.primaryGreen.withOpacity(0.8),
                                padding: EdgeInsets.symmetric(
                                    horizontal: GSizes.sm, vertical: GSizes.xs),
                                child: Text(
                                  '%25',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .apply(color: GColors.black),
                                ),
                              ),
                            ),
                            //-- icono de favorito
                            BotonFavorito()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BotonFavorito extends StatelessWidget {
  const BotonFavorito({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: GHelperFunctions.isDarkMode(context)
            ? GColors.black.withOpacity(0.9)
            : GColors.white.withOpacity(0.9),
      ),
      child: IconButton(onPressed: () {}, icon: const Icon(Iconsax.heart5)),
    );
  }
}
