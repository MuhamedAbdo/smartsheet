import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartsheet/core/theme_provider.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(
      context,
    ); // ← listen = true افتراضي
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    return ListTile(
      title: const Text('الوضع الليلي'),
      trailing: Switch(
        activeColor: Colors.indigo,
        value: isDarkMode,
        onChanged: (value) {
          themeProvider.toggleTheme(value);
        },
      ),
    );
  }
}
