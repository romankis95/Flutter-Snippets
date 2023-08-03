Drawer(
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: const Color(0xff764abc)),
        accountName: Text(
          "<name and surname>",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        accountEmail: Text(
          "<@email>",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        currentAccountPicture: FlutterLogo(),
      ),
      ListTile(
        leading: Icon(
          Icons.home,
        ),
        title: const Text('Page 1'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.train,
        ),
        title: const Text('Page 2'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      AboutListTile( // <-- SEE HERE
        icon: Icon(
          Icons.info,
        ),
        child: Text('About app'),
        applicationIcon: Icon(
          Icons.local_play,
        ),
        applicationName: '<appname>',
        applicationVersion: '1.0.0',
        applicationLegalese: '© 2023 <company name>',
        aboutBoxChildren: [
          ///Content goes here...
        ],
      ),
    ],
  ),
)
