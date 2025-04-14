import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            subtitle: Text('Manage your account'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            subtitle: Text('Notification preferences'),
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security Settings'),
            subtitle: Text('Change PIN or enable fingerprint'),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            subtitle: Text('Privacy and security'),
          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('Linked Bank Accounts'),
            subtitle: Text('View or manage linked accounts'),
          ),
          ListTile(
            leading: Icon(Icons.schedule),
            title: Text('Financial Calendar'),
            subtitle: Text('View upcoming transactions'),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            subtitle: Text('Select app language'),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Shared Access'),
            subtitle: Text('Manage other users on this account'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Transaction Alerts'),
            subtitle: Text('Customize notification preferences'),
          ),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('QR operation'),
            subtitle: Text('Generate QR'),
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Currency'),
            subtitle: Text('Set default currency'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            subtitle: Text('App version and details'),
          ),
        ],
      ),
    );
  }
}
