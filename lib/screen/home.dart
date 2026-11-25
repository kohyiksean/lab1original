import 'package:material_ui/material_ui.dart';
import 'package:testlab2/block.dart';

class Home extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const Home({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.admin_panel_settings),
          onPressed: onToggleTheme,
        ),
        title: const Center(child: Text('My First App')),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: onToggleTheme,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            ClipOval(
              child: Image.asset(
                'assets/staivell.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Koh Yik Sean',
              style: TextStyle(
                color: Color.fromARGB(255, 6, 6, 97),
                fontSize: 28,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.email, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Student',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Expanded(
                    child: Block(
                      'assets/staivell.png',
                      'random image',
                      colour: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Block(
                      'assets/staivell.png',
                      'random image',
                      colour: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Block(
                      'assets/staivell.png',
                      'random image',
                      colour: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
