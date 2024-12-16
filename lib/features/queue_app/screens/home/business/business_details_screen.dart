import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';

class BusinessDetailsScreen extends StatefulWidget {
  const BusinessDetailsScreen({Key? key}) : super(key: key);

  @override
  _BusinessDetailsScreenState createState() => _BusinessDetailsScreenState();
}

class _BusinessDetailsScreenState extends State<BusinessDetailsScreen> {
  int currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Datos simulados (reemplazar con datos reales o dinámicos)
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
            'assets/images/banners/banner_2.jpg',
            'assets/images/banners/banner_4.jpg',
          ],
        };

    final images = businessData['images'];

    return Scaffold(
      appBar: AppBar(
        title: Text(businessData['name']),
        backgroundColor: GColors.primaryGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carrusel de imágenes con flechas
            Stack(
              children: [
                // Carrusel de imágenes
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    controller: PageController(initialPage: currentImageIndex),
                    onPageChanged: (index) {
                      setState(() {
                        currentImageIndex = index;
                      });
                    },
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    },
                  ),
                ),
                // Flecha izquierda dinámica
                if (currentImageIndex > 0)
                  Positioned(
                    left: 10,
                    top: 80,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentImageIndex--;
                        });
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                // Flecha derecha dinámica
                if (currentImageIndex < images.length - 1)
                  Positioned(
                    right: 10,
                    top: 80,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentImageIndex++;
                        });
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
              ],
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
                          // Lógica futura para mostrar en Google Maps
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
                  const SizedBox(height: GSizes.spaceBtwSections),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Lógica para agregar un comentario
                    },
                    icon: const Icon(
                      Icons.add_comment,
                      color: Colors
                          .white, // Icono blanco para resaltar en el fondo plateado
                    ),
                    label: const Text(
                      'Agregar comentario',
                      style: TextStyle(
                        color: Colors.white, // Texto blanco
                        fontWeight: FontWeight.bold, // Fuente más destacada
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.grey[600], // Fondo plateado oscuro
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12), // Espaciado interno
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Botón más redondeado
                      ),
                      elevation: 5, // Sombra para darle profundidad
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
