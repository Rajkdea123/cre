import 'package:credassignment/pages/stack_page.dart';
import 'package:credassignment/provider/stack_provider.dart';
import 'package:credassignment/theme/themecolor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<dynamic>> stackData;

  @override
  void initState() {
    super.initState();
    stackData = StackProvider().fetchStack();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: FutureBuilder<List<dynamic>>(
        future: stackData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (snapshot.hasData) {
            return StackPage(stackData: snapshot.data!);
          } else {
            return const Center(
              child: Text(
                'There is nothing here right now',
                style:TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),
              ),
            
            );
          }
        },
      ),
    );
  }
}
