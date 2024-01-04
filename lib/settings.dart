import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notificationsEnabled = true;
  double brightnessValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSettingCard('Language', Icons.language),
            _buildSettingCard('Privasi dan Keamanan', Icons.security),
            _buildSettingCard('Tampilan dan Tema', Icons.color_lens),
            _buildSettingCard('Pengaturan Posting', Icons.edit),
            _buildSettingCard('Kontrol Konten', Icons.content_copy),
            _buildSettingCard('Pencarian dan Filter', Icons.search),
            _buildSettingCard('Kelola Topik dan Posting', Icons.category),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _saveSettings();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Settings saved successfully!'),
                  ),
                );
              },
              child: Text('Save Settings'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingCard(String title, IconData icon) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: Icon(icon),
        trailing: Icon(Icons.navigate_next),
        onTap: () {
          // Add logic to handle each specific setting
          _handleSettingTap(title);
        },
      ),
    );
  }

  void _handleSettingTap(String settingTitle) {
    // Add logic to handle the tap on each specific setting
    print('Tapped on setting: $settingTitle');
  }

  void _saveSettings() {
    // Add logic to save settings to the database or shared preferences
    // For example, you can save notificationsEnabled and brightnessValue
    // to persist user preferences across app sessions.
    print('Saving settings: Notifications - $notificationsEnabled, Brightness - $brightnessValue');
  }
}
