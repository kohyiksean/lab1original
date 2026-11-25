import 'package:material_ui/material_ui.dart';

class Block extends StatelessWidget {
  const Block(this.image, this.title, {super.key, required this.colour});

  final String image;
  final String title;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: colour,
  
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image,width:30),
          const SizedBox(height: 10),
          Text(title),
          const SizedBox(height: 10),
          const Text('Anything'),
        ],
      ),
    );
  }
}
