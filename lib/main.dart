import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images and Assets',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
        fontFamily: 'OpenSans',
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
        fontFamily: 'OpenSans',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          'Images and Assets',
          style: TextStyle(
            color: Theme.of(
              context,
            ).colorScheme.onPrimaryContainer,
          ),
        ),
        surfaceTintColor: Theme.of(
          context,
        ).colorScheme.surfaceTint,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
        child: ListView(
          children: [
            SizedBox(height: 16),
            // Remote Images
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: MediaQuery.of(
                      context,
                    ).size.width,
                    child: Image.network(
                      'https://picsum.photos/800/600?1',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://picsum.photos/800/600?2',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://picsum.photos/800/600?3',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // List Titles with different fonts
            ListTile(
              tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              leading: Icon(
                Icons.looks_one_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                'Open Sans Extra Bold',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              subtitle: Text(
                'Extra Bold variant example',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),

            const SizedBox(height: 8),

            ListTile(
              tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              leading: Icon(
                Icons.looks_two_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                'Open Sans Bold',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              subtitle: Text(
                'Bold variant example',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),

            const SizedBox(height: 8),

            ListTile(
              tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              leading: Icon(
                Icons.looks_3_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                'Open Sans Medium',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              subtitle: Text(
                'Medium variant example',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),

            const SizedBox(height: 8),

            ListTile(
              tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              leading: Icon(
                Icons.looks_4_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                'Open Sans Light Italic',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontFamily: 'OpenSans',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              subtitle: Text(
                'Italic variant example',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),

            const SizedBox(height: 8),

            // Local images
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: MediaQuery.of(
                      context,
                    ).size.width, // full screen width
                    child: const Image(
                      image: AssetImage('assets/images/image1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Image(
                      image: AssetImage('assets/images/image2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Image(
                      image: AssetImage('assets/images/image3.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
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
