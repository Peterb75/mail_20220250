import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mail(),
    );
  }
}

class Mail extends StatefulWidget {
  const Mail({Key? key}) : super(key: key);

  @override
  _MailState createState() => _MailState();
}

class _MailState extends State<Mail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(5.0),
        color: Colors.grey[100], 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              child: const TextButton(
                onPressed: null,
                child: Text(
                  "Edit",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            CupertinoListSection(
              header: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mailboxes ', style: TextStyle(fontSize: 40.0, color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
              children: const <CupertinoListTile>[
                CupertinoListTile(
                  title: Text('Today'),
                  leading: Icon(
                    CupertinoIcons.calendar,
                    color: CupertinoColors.systemBlue,
                  ),
                  trailing: CupertinoListTileChevron(),
                ),
                CupertinoListTile(
                  title: Text('Unread'),
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: CupertinoColors.systemBlue,
                  ),
                  trailing: CupertinoListTileChevron(),
                ),
                CupertinoListTile(
                  title: Text('Inbox'),
                  leading: Icon(
                    CupertinoIcons.archivebox,
                    color: CupertinoColors.systemBlue,
                  ),
                  trailing: CupertinoListTileChevron(),
                ),
                CupertinoListTile(
                  title: Text('Archive'),
                  leading: Icon(
                    Icons.inventory_2_outlined,
                    color: CupertinoColors.systemBlue,
                  ),
                  trailing: CupertinoListTileChevron(),
                ),
                CupertinoListTile(
                  title: Text('Junk'),
                  leading: Icon(
                    CupertinoIcons.trash,
                    color: CupertinoColors.systemBlue,
                  ),
                  trailing: CupertinoListTileChevron(),
                ),
                CupertinoListTile(
                  title: Text('Trash'),
                  leading: Icon(
                    CupertinoIcons.trash,
                    color: CupertinoColors.systemBlue,
                  ),
                  trailing: CupertinoListTileChevron(),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: const CupertinoListTile(
                title: Text('iCloud'),
                trailing: CupertinoListTileChevron(),
              ),
            ),
              const Expanded(
              child: SizedBox.expand(),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: null,
                child: Icon(
                  Icons.telegram_sharp,
                  color: CupertinoColors.activeBlue,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: const TextButton(
                onPressed: null,
                child: Text(
                  "Update Just Now",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            ],
        ),
      ),
    );
  }
}
