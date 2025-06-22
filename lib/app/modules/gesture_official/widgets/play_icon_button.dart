import 'package:flutter/material.dart';

class AudioIconButton extends StatelessWidget {
  final bool isPlaying;
  final VoidCallback onTap;
  final VoidCallback onDoubleTap;
  final VoidCallback onLongPress;
  final Color color;

  const AudioIconButton({
    super.key,
    required this.isPlaying,
    required this.onTap,
    required this.onDoubleTap,
    required this.onLongPress,
    this.color = Colors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      onDoubleTap: onDoubleTap,
      child: IconButton(
        
        icon: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
          color: color,
          size: 28,
        ),
        onPressed: () {
        },
      ),
    );
  }
}
