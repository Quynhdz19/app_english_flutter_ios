import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  ThemeMode _themeMode = ThemeMode.light; // Chế độ sáng mặc định

  void setThemeMode(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: SettingsPage(
        onThemeModeChanged: setThemeMode,
      ),
    );
  }
}

class SettingsPage extends StatefulWidget {
  final Function(ThemeMode) onThemeModeChanged;

  SettingsPage({required this.onThemeModeChanged});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isNightMode = false;
  String _language = "English";

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.flag, color: Colors.blue,weight: 24,),
              title: const Text("English",style: TextStyle(fontSize: 24),),
              onTap: () {
                setState(() {
                  _language = "English";
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.flag, color: Colors.red,weight: 24,),
              title: const Text("Vietnamese",style: TextStyle(fontSize: 24),),
              onTap: () {
                setState(() {
                  _language = "Vietnamese";
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _toggleNightMode(bool value) {
    setState(() {
      _isNightMode = value;
    });
    ThemeMode themeMode = value ? ThemeMode.dark : ThemeMode.light;
    widget.onThemeModeChanged(themeMode);
  }

  void _showVolumeDialog(BuildContext context) {
    double volume = 50;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: const Text("Set volume", style: TextStyle(color: Colors.blue,fontSize: 24)),
        content: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Slider(
                  value: volume,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: volume.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      volume = value;
                    });
                  },
                ),
              ],
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel", style: TextStyle(color: Colors.red,fontSize: 24)),
          ),
          TextButton(
            onPressed: () {
              // Thực hiện lưu giá trị âm lượng ở đây
              Navigator.pop(context);
            },
            child: const Text("Save", style: TextStyle(color: Colors.green,fontSize: 24)),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings",style: TextStyle(color: Colors.white,fontSize: 24),),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon( Icons.arrow_back,color: Colors.white,weight: 24,),
          onPressed: (){

          },
        ),
        actions:  [
          IconButton(
            icon: const Icon(Icons.brightness_3, color: Colors.white,weight: 24,),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.language,weight: 24,),
              title: const Text("Language",style: TextStyle(fontSize: 24),),
              subtitle: Text(_language,style: const TextStyle(fontSize: 24),),
              onTap: _showLanguageDialog,
            ),
            ListTile(
              leading: const Icon(Icons.brightness_2,weight: 24,),
              title: const Text("Night Mode",style: TextStyle(fontSize: 24),),
              trailing: Switch(
                value: _isNightMode,
                onChanged: _toggleNightMode,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.volume_up,weight: 24,),
              title: const Text("Volume",style: TextStyle(fontSize: 24),),
              trailing: const Icon(Icons.arrow_forward_ios,weight: 24,),
              onTap: () => _showVolumeDialog(context),
            ),
          ],
        ),
      ),
    );
  }
}
