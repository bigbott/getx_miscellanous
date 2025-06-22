import 'package:flutter/material.dart';

class AudioIconButton extends StatelessWidget {
  final bool isPlaying;
  final VoidCallback onTap;
  final VoidCallback onDoubleTap;
  final VoidCallback onLongPress;
  final double size;
  final Color color;

  const AudioIconButton({
    super.key,
    required this.isPlaying,
    required this.onTap,
    required this.onDoubleTap,
    required this.onLongPress,
    this.size = 60.0,
    this.color = Colors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size, 
      height: size,
      child: Material(  
         borderRadius: BorderRadius.circular(16),
        color: color.withValues(alpha: 0.1),     
        child: InkWell(
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          borderRadius: BorderRadius.circular(16),
          splashColor: color.withValues(alpha: 0.3),
          highlightColor: color.withValues(alpha: 0.1),
          
          
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                color: color,
                size: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
