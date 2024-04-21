import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SharePreference41 extends StatefulWidget {
  const SharePreference41({super.key});

  @override
  State<SharePreference41> createState() => _SharePreference41State();
}

class _SharePreference41State extends State<SharePreference41> {
  TextEditingController controller = TextEditingController(text: 'Nama');
  bool isOn = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('nama', controller.text);
    pref.setBool('ison', isOn);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('nama') ?? 'Tidak ada Nama';
  }

  Future<bool> getSwicth() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('ison') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('41. Shared Preferences')),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          children: [
            Visibility(
                visible: isOn,
                replacement: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://c4.wallpaperflare.com/wallpaper/198/217/128/naruto-anime-uzumaki-naruto-blue-eyes-konoha-angry-hd-wallpaper-preview.jpg'),
                          fit: BoxFit.cover)),
                ),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i.pinimg.com/474x/de/8d/0a/de8d0ad293e23431e319fb4a0e694198.jpg'),
                          fit: BoxFit.cover)),
                )),
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                title: Text(controller.text),
                subtitle: const Text('Flutter Beginner'),
                trailing: const Icon(Icons.more_vert),
                enabled: isOn,
              ),
            ),
            const Divider(
              height: 25,
              thickness: 4,
              color: Colors.orange,
            ),
            TextFormField(
              controller: controller,
            ),
            Switch(
                value: isOn,
                onChanged: (newValue) {
                  setState(() {
                    isOn = newValue;
                  });
                }),
            OutlinedButton(
                style: OutlinedButton.styleFrom(foregroundColor: Colors.cyan),
                onPressed: () {
                  saveData();
                  final snackBar = SnackBar(
                    content: const Text('Save Succes'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Save')),
            ElevatedButton(
                onPressed: () {
                  getNama().then((a) {
                    controller.text = 'sdasdasdas';
                    controller.text = a;
                    setState(() {});
                  });
                  getSwicth().then((b) {
                    isOn = b;
                    setState(() {});
                  });
                  ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                          padding: const EdgeInsets.all(10),
                          leading:
                              const Icon(Icons.power_settings_new_outlined),
                          content: const Text('Load Succes'),
                          backgroundColor: Colors.tealAccent,
                          actions: [
                        TextButton(
                            onPressed: () => ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner(),
                            child: const Text('DISMISS'))
                      ]));
                },
                child: const Text('Load')),
          ],
        ),
      ),
      drawer: const DrawerShare(
        pageToNavigate: TextForm00(),
      ),
    );
  }
}

class TextForm00 extends StatefulWidget {
  const TextForm00({super.key});

  @override
  State<TextForm00> createState() => _TextForm00State();
}

class _TextForm00State extends State<TextForm00> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text from field')),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "contoh: Susilo Bambang",
                  labelText: "Nama Lengkap",
                  icon: const Icon(Icons.people),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Nama Succes')));

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SharePreference41();
                      }));
                    }
                  },
                  child: const Text('Submit'))
            ],
          ),
        ),
      ),
      drawer: const DrawerShare(pageToNavigate: SharePreference41()),
    );
  }
}

class DrawerShare extends StatelessWidget {
  final Widget pageToNavigate;

  const DrawerShare({Key? key, required this.pageToNavigate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Ikhlash"),
            accountEmail: Text("muhammadikhlash5@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/gambar.webp'),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/sky.png"),
                    fit: BoxFit.cover,
                    opacity: 0.9)),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://w0.peakpx.com/wallpaper/327/452/HD-wallpaper-dark-anime-guy-phone.jpg'),
              )
            ],
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return pageToNavigate;
              }));
            },
          ),
        ],
      ),
    );
  }
}
