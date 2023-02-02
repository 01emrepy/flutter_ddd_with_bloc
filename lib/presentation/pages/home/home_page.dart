import 'package:flutter/material.dart';
import 'package:flutter_ddd_with_cubit/presentation/pages/home/widget/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageBody(),
    );
  }
}
