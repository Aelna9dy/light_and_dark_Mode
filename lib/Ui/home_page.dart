import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revision/Componens/box.dart';
import 'package:revision/Componens/button.dart';

import '../Theme_Provider/theme_provider.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "homeScreen";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
