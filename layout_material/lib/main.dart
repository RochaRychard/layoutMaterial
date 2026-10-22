import 'package:flutter/material.dart';
import 'package:layout_material/widgets/lib/destinations.dart';
import 'package:layout_material/widgets/lib/email_list_view.dart';
import 'models/data.dart' as data;
import 'models/models.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Feed(currentUser: data.user_0),
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({super.key, required this.currentUser});

  final User currentUser;

  @override
  State<Feed> createState() => _FeedState();
}

// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are
// always marked "final".

class _FeedState extends State<Feed> {
  late final _colorScheme = Theme.of(context).colorScheme;
  late final _backgroundColor = Color.alphaBlend(
    _colorScheme.primary.withAlpha(36),
    _colorScheme.surface,
  );

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: _backgroundColor,
        child: EmailListView(
          selectedIndex: selectedIndex,
          onSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },

          currentUser: widget.currentUser,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _colorScheme.tertiaryContainer,
        foregroundColor: _colorScheme.onTertiaryContainer,
        onPressed: () {},
        child: const Icon(Icons.add),
  ),
     bottomNavigationBar: NavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        destinations: destinations.map<NavigationDestination>((d) {
          return NavigationDestination(icon: Icon(d.icon), label: d.label);
        }).toList(),
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    
    
  );

  }
}
