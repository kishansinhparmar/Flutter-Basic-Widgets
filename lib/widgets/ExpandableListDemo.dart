import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/widgets/ContainerDemo.dart';
import 'package:flutter_basic_widgets/widgets/RowColumnDemo.dart';
import 'package:flutter_basic_widgets/widgets/RowColumnPro.dart';
import 'package:flutter_basic_widgets/widgets/ImageDemo.dart';
import 'package:flutter_basic_widgets/widgets/TextFieldDemo.dart';
import 'package:flutter_basic_widgets/widgets/AlignDemo.dart';
import 'package:flutter_basic_widgets/widgets/IndexedStackDemo.dart';
import 'package:flutter_basic_widgets/widgets/RadioCheckDemo.dart';
import 'package:flutter_basic_widgets/widgets/FlexDemo.dart';
import 'package:flutter_basic_widgets/widgets/BottomTabDemo.dart';
import 'package:flutter_basic_widgets/widgets/ButtonsDemo.dart';
import 'package:flutter_basic_widgets/bonus/beebom/bhome.dart';

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
        title: Text("Basic Widgets | @imkishansinh"),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            new EntryItem(data[index], context),
        itemCount: data.length,
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.routeName, this.children = const <Entry>[]]);

  final String title;
  final String routeName;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  new Entry(
    'Button Widgets',
    '',
    <Entry>[
      new Entry('Raised', ButtonsDemo.routeName),
      new Entry('Flat', ButtonsDemo.routeName),
      new Entry('Icon', ButtonsDemo.routeName),
    ],
  ),
  new Entry(
    'Input Widgets',
    '',
    <Entry>[
      new Entry('TextField', TextFieldDemo.routeName),
      new Entry('Radio Checkbox', RadioCheckDemo.routeName),
    ],
  ),
  new Entry(
    'Position layouts',
    '',
    <Entry>[
      new Entry('Container', ContainerDemo.routeName),
      new Entry('Align', AlignDemo.routeName),
      new Entry('Indexed', IndexedStackDemo.routeName),
      new Entry('Flex', FlexDemo.routeName),
      new Entry('RowColumn', RowColumnDemo.routeName),
      new Entry('RowColumnPro', RowColumnProDemo.routeName),
    ],
  ),
  new Entry(
    'Other',
    '',
    <Entry>[
      new Entry('BottomTab', BottomTabDemo.routeName),
      new Entry('Image', ImageDemo.routeName),
    ],
  ),
  new Entry(
    'Bonus',
    '',
    <Entry>[
      new Entry('Beebom', BHome.routeName),
    ],
  )
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry, this.context);
  final BuildContext context;

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty)
      return new GestureDetector(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (BuildContext context2) => ContainerDemo()));

            Navigator.of(context).pushNamed(root.routeName);
          },
          child: new ListTile(title: new Text(root.title)));

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
