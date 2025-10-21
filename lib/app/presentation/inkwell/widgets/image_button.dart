
import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final ImageProvider imageProvider;
  final String label;
  final VoidCallback onTap;

  const ImageButton({
    super.key,
    required this.imageProvider,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(12),
          child: Ink.image(
            image: imageProvider,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(12),
              hoverColor: Colors.white.withValues(alpha: 0.3) ,
              splashColor: Colors.red.withValues(alpha: 0.3) ,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  color: Colors.black.withValues(alpha: 0.6),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}