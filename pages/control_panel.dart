import 'package:flutter/material.dart';

class ControlPanelPage extends StatefulWidget {
  const ControlPanelPage({super.key});

  @override
  _ControlPanelPageState createState() => _ControlPanelPageState();
}

class _ControlPanelPageState extends State<ControlPanelPage> {
  bool setting1 = true;
  bool setting2 = false;
  bool setting3 = false;

  Widget settingToggle(String text, bool value, void Function(bool) onChanged) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            width: 200, // You can adjust this value
            child: Text(text, style: TextStyle(fontSize: 18)),
          ),
          Switch(value: value, onChanged: onChanged),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            settingToggle("Maintainance Mode", setting1,
                (value) => setState(() => setting1 = value)),
            settingToggle("SEO Optimization", setting2,
                (value) => setState(() => setting2 = value)),
            settingToggle("Content Moderation", setting3,
                (value) => setState(() => setting3 = value)),
            //Text field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("Language", style: TextStyle(fontSize: 18)),
                  SizedBox(width: 30),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Language",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Save button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Save"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black45),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
