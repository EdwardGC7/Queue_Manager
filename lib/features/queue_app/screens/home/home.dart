import 'package:queue_manager/common/widgets/layouts/grid_layout.dart';
import 'package:queue_manager/common/widgets/shapes/primary_header_container.dart';
import 'package:queue_manager/common/widgets/shapes/search_container.dart';
import 'package:queue_manager/common/widgets/texts/section_heading.dart';
import 'package:queue_manager/features/queue_app/screens/home/widgets/header_categories.dart';
import 'package:queue_manager/features/queue_app/screens/home/widgets/home_appbar.dart';
import 'package:queue_manager/features/queue_app/screens/home/widgets/negocio_card_vertical.dart';
import 'package:queue_manager/features/queue_app/screens/home/widgets/promo_slider.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;
  List<dynamic> featuredProducts = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const GPrimaryHeaderContainer(
              child: Column(
                children: [
                  GHomeAppBar(),
                  SizedBox(height: GSizes.spaceBtwSections),

                  // Barra de búsqueda
                  GSearchContainer(
                    text: 'Search for place',
                  ),
                  SizedBox(height: GSizes.spaceBtwSections),

                  // Contenedor de categorías
                  Padding(
                    padding: EdgeInsets.only(left: GSizes.defaultSpace),
                    child: Column(
                      children: [
                        GSectionHeading(
                            title: GTexts.categoriasHeadingInicio,
                            textColor: GColors.white,
                            showActionButton: false),
                        SizedBox(height: GSizes.spaceBtwItems),

                        // Categorías
                        GHeaderCategories(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: GSizes.spaceBtwSections,
                  )
                ],
              ),
            ),

            /// body
            Padding(
              padding: const EdgeInsets.all(GSizes.defaultSpace),
              child: Column(
                children: [
                  const GPromoSlider(),
                  const SizedBox(height: GSizes.spaceBtwSections),

                  /// -- Encabezado
                  GSectionHeading(
                      title: GTexts.sectionHeadingInicio, onPressed: () {}),
                  const SizedBox(height: GSizes.spaceBtwSections),

                  /// Sección de Negocios
                  GGridLayout(
                    itemCount: 7,
                    itemBuilder: (_, index) => GNegocioCardVertical(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
