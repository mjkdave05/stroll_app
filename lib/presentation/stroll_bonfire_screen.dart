import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StrollBonfireScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BonfireViewModel(),
      child: Scaffold(
        body: Column(
          children: [
            HeaderWidget(),
            Expanded(child: PollWidget()),
            NavigationBarWidget(),
          ],
        ),
      ),
    );
  }
}