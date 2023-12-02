import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoCurrenciesListApp ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          primarySwatch: Colors.yellow,
          textTheme: TextTheme(
              bodyMedium: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              labelSmall: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14))),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CryptoCurrenciesList'),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/bitcoin_logo.svg',
                  height: 25,
                  width: 25,
                ),
                title: Text(
                  "Bitcoin",
                  style: theme.textTheme.bodyMedium,
                ),
                subtitle: Text(
                  "20000\$",
                  style: theme.textTheme.labelSmall,
                ),
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
