import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* Crea una AppBar en la parte superior de la pantalla.
      appBar: AppBar(
        //* Título que aparece en la AppBar.
        title: const Text('Settings'),
        //* Color de fondo de la AppBar.
        backgroundColor: Colors.deepPurple,
      ),
      //* Cuerpo principal de la pantalla que contiene una lista desplazable.
      body: ListView(
        children: const [
          //* Primer elemento de la lista: "Account"
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            subtitle: Text('Manage your account'),
          ),
          ListTile(
            //* Segundo elemento de la lista: "Notifications"
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            subtitle: Text('Notification preferences'),
          ),
          //* Tercer elemento: "Security Settings"
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security Settings'),
            subtitle: Text('Change PIN or enable fingerprint'),
          ),
          //* Cuarto elemento: "Privacy"
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            subtitle: Text('Privacy and security'),
          ),
          //* Quinto elemento: "Linked Bank Accounts"
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
