

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'typography_comparison_controller.dart';

class TypographyComparisonView extends GetView<TypographyComparisonController> {
  const TypographyComparisonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Typography Comparison'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: controller.variants.length,
        itemBuilder: (context, index) {
          final variant = controller.variants[index];

          return TypographyVariantCard(
            name: variant.name,
            textTheme: variant.textTheme,
            description: variant.description,
          );
        },
      ),
    );
  }
}

// Custom Widget
class TypographyVariantCard extends StatelessWidget {
  final String name;
  final TextTheme textTheme;
  final String? description;

  const TypographyVariantCard({
    super.key,
    required this.name,
    required this.textTheme,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 24),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue.withValues(alpha: 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  if (description != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      description!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 16),
            TextStyleRow(label: 'displayLarge', style: textTheme.displayLarge),
            TextStyleRow(label: 'displayMedium', style: textTheme.displayMedium),
            TextStyleRow(label: 'displaySmall', style: textTheme.displaySmall),
            TextStyleRow(label: 'headlineLarge', style: textTheme.headlineLarge),
            TextStyleRow(label: 'headlineMedium', style: textTheme.headlineMedium),
            TextStyleRow(label: 'headlineSmall', style: textTheme.headlineSmall),
            TextStyleRow(label: 'titleLarge', style: textTheme.titleLarge),
            TextStyleRow(label: 'titleMedium', style: textTheme.titleMedium),
            TextStyleRow(label: 'titleSmall', style: textTheme.titleSmall),
            TextStyleRow(label: 'bodyLarge', style: textTheme.bodyLarge),
            TextStyleRow(label: 'bodyMedium', style: textTheme.bodyMedium),
            TextStyleRow(label: 'bodySmall', style: textTheme.bodySmall),
            TextStyleRow(label: 'labelLarge', style: textTheme.labelLarge),
            TextStyleRow(label: 'labelMedium', style: textTheme.labelMedium),
            TextStyleRow(label: 'labelSmall', style: textTheme.labelSmall),
          ],
        ),
      ),
    );
  }
}

// Custom Widget
class TextStyleRow extends StatelessWidget {
  final String label;
  final TextStyle? style;

  const TextStyleRow({
    super.key,
    required this.label,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    if (style == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'The quick brown fox',
              style: style,
            ),
          ),
          Text(
            '${style?.fontSize?.toStringAsFixed(1)}px',
            style: const TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

// Route configuration
class AppRoutes {
  static const typographyComparison = '/typography-comparison';
}

// Binding
class TypographyComparisonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TypographyComparisonController());
  }
}

// Example usage in main.dart:
// GetMaterialApp(
//   initialRoute: AppRoutes.typographyComparison,
//   getPages: [
//     GetPage(
//       name: AppRoutes.typographyComparison,
//       page: () => const TypographyComparisonView(),
//       binding: TypographyComparisonBinding(),
//     ),
//   ],
// );