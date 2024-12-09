import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';

class BusinessDetailsScreen extends StatelessWidget {
  const BusinessDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Simulación de datos (esto se reemplazará con datos reales o dinámicos)
    final Map<String, dynamic> businessData = Get.arguments ??
        {
          'name': 'Negocio de Prueba',
          'category': 'Categoría',
          'rating': 4.5,
          'reviews': [
            {
              'user': 'Cliente 1',
              'review': '¡Excelente servicio!',
              'rating': 5
            },
            {
              'user': 'Cliente 2',
              'review': 'Buena atención, pero algo caro.',
              'rating': 4
            },
          ],
          'services': [
            {'name': 'Servicio 1', 'price': 100},
            {'name': 'Servicio 2', 'price': 200},
          ],
          'location': '123 Calle Principal',
          'images': [
            'assets/images/banners/banner_1.jpg',
            'assets/images/banners/banner_2.jpg'
          ],
        };

    return Scaffold(
      appBar: AppBar(
        title: Text(businessData['name']),
        backgroundColor: GColors.primaryGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carrusel de Imágenes
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: businessData['images'].length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    businessData['images'][index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwSections),

            // Información del negocio
            Padding(
              padding: const EdgeInsets.all(GSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    businessData['name'],
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text('${businessData['rating']}'),
                      const SizedBox(width: GSizes.spaceBtwItems),
                      Text('(${businessData['reviews'].length} reseñas)'),
                    ],
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),
                  Text(
                    'Categoría: ${businessData['category']}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: GColors.primaryGreen),
                      Expanded(
                        child: Text(
                          businessData['location'],
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navegación futura para abrir Google Maps
                        },
                        child: const Text('Ver en Maps'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),

            // Servicios ofrecidos
            Padding(
              padding: const EdgeInsets.all(GSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Servicios',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),
                  ...businessData['services'].map((service) {
                    return ListTile(
                      title: Text(service['name']),
                      trailing: Text('\$${service['price']}'),
                    );
                  }).toList(),
                ],
              ),
            ),
            const Divider(),

            // Reseñas
            Padding(
              padding: const EdgeInsets.all(GSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reseñas',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),
                  ...businessData['reviews'].map((review) {
                    return ListTile(
                      title: Text(review['user']),
                      subtitle: Text(review['review']),
                      leading: Icon(Icons.star, color: Colors.amber),
                      trailing: Text('${review['rating']}'),
                    );
                  }).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
