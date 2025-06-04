import 'package:flutter/material.dart';
import 'package:smartsheet/widgets/theme_toggle_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الإعدادات')),
      body: ListView(
        children: const [
          ListTile(
            title: Text('الحساب'),
            subtitle: Text('إدارة الحساب الخاص بك'),
          ),
          Divider(),
          ThemeToggleButton(), // ← الزر موجود هنا فقط
          Divider(),
          ListTile(title: Text('حول التطبيق'), subtitle: Text('النسخة 1.0.0')),
        ],
      ),
    );
  }
}
