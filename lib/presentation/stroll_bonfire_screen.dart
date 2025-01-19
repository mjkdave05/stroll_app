import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/bonfire_view_model.dart';
import '../widgets/header_widget.dart';
import '../widgets/nav_bar_widget.dart';
import '../widgets/poll_widget.dart';

class StrollBonfireScreen extends StatelessWidget {
  const StrollBonfireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BonfireViewModel(),
      child: Scaffold(
        backgroundColor: Colors.black,
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