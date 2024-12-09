import 'package:flutter/material.dart';
import 'package:queue_manager/common/widgets/shapes/search_container.dart';
import 'package:queue_manager/features/queue_app/screens/home/widgets/negocio_card_horizontal.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/constants/colors.dart';

class BusinessListScreen extends StatelessWidget {
  const BusinessListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Negocios"),
        backgroundColor: GColors.primaryGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(GSizes.defaultSpace),
        child: Column(
          children: [
            // Barra de búsqueda y botón de filtros
            Row(
              children: [
                Expanded(
                  child: GSearchContainer(
                    text: 'Search for a place',
                  ),
                ),
                const SizedBox(width: GSizes.spaceBtwInputFields),
                IconButton(
                  onPressed: () {
                    // Lógica para mostrar los filtros
                  },
                  icon: const Icon(Icons.filter_list),
                  tooltip: "Filtros",
                ),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwSections),
            // Lista de negocios
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10, // Número de negocios (mock)
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GNegocioCardHorizontal(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
