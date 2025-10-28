// avatar_picker.dart
import 'package:flutter/material.dart';

class AvatarPicker extends StatelessWidget {
  final Function(String) onEmojiSelected;
  final String? selectedEmoji;

  const AvatarPicker({
    super.key,
    required this.onEmojiSelected,
    this.selectedEmoji,
  });

  @override
  Widget build(BuildContext context) {
    const emojis = ['😊', '🚀', '🎉', '🐱', '🌈'];

    return Column(
      children: [
        const Text(
          'Choose your avatar',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: emojis.map((emoji) {
            return GestureDetector(
              onTap: () => onEmojiSelected(emoji),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: selectedEmoji == emoji
                      ? Colors.purple.withOpacity(0.2)
                      : Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: Text(
                  emoji,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}