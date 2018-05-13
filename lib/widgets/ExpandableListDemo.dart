import 'package:flutter/material.dart';

class ExpandableListDemo extends StatefulWidget {
  static final String routeName = "/expandabledemo";
  @override
  _ExpandableListDemoState createState() => new _ExpandableListDemoState();
}

class _ExpandableListDemoState extends State<ExpandableListDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("ExpandableList Demo"),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            new EntryItem(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  new Entry(
    'Button Widgets',
    <Entry>[
      new Entry('Raised'),
      new Entry('Flat'),
      new Entry('Icon'),
    ],
  ),
  new Entry(
    'Input Widgets',
    <Entry>[
      new Entry('TextField'),
      new Entry('Radio Checkbox'),
    ],
  ),
  new Entry(
    'Chapter C',
    <Entry>[
      new Entry('Section C0'),
      new Entry('Section C1'),
      new Entry(
        'Section C2',
        <Entry>[
          new Entry('Item C2.0'),
          new Entry('Item C2.1'),
          new Entry('Item C2.2'),
          new Entry('Item C2.3'),
        ],
      ),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return new ListTile(title: new Text(root.title));
    return new ExpansionTile(
      key: new PageStorageKey<Entry>(root),
      title: new Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
