import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/widgets/positions/ContainerDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/RowColumnDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/ColumnPro.dart';
import 'package:flutter_basic_widgets/widgets/positions/RowProDemo.dart';
import 'package:flutter_basic_widgets/widgets/others/ImageDemo.dart';
import 'package:flutter_basic_widgets/widgets/others/AlertsDemo.dart';
import 'package:flutter_basic_widgets/widgets/others/GradientDemo.dart';
// import 'package:flutter_basic_widgets/widgets/others/example.dart';
import 'package:flutter_basic_widgets/widgets/inputs/TextFieldDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/AlignDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/IndexedStackDemo.dart';
import 'package:flutter_basic_widgets/widgets/inputs/RadioCheckDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/FlexDemo.dart';
import 'package:flutter_basic_widgets/widgets/tabs/TabsDemo.dart';
import 'package:flutter_basic_widgets/widgets/tabs/BottomTabDemo.dart';
import 'package:flutter_basic_widgets/widgets/tabs/BottomTabNotchDemo.dart';
import 'package:flutter_basic_widgets/widgets/buttons/ButtonsDemo.dart';
import 'package:flutter_basic_widgets/bonus/beebom/blogin.dart';
import 'package:flutter_basic_widgets/bonus/TajMahal.dart';

class ExpandableListDemo extends StatefulWidget {
  static final String routeName = "/expandableDemo";
  @override
  _ExpandableListDemoState createState() => _ExpandableListDemoState();
}

class _ExpandableListDemoState extends State<ExpandableListDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Widgets | @imkishansinh"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index], context),
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
  // Entry('Single',ExampleDemo.routeName),
  Entry(
    'Button Widgets',
    '',
    <Entry>[
      Entry('Raised | Outline | Flat | Icon | Back | FAB | DropdownButton',
          ButtonsDemo.routeName),
    ],
  ),
  Entry(
    'Input Widgets',
    '',
    <Entry>[
      Entry('TextField', TextFieldDemo.routeName),
      Entry('Radio | Checkbox | Switch', RadioCheckDemo.routeName),
    ],
  ),
  Entry(
    'Position layouts',
    '',
    <Entry>[
      Entry('Container', ContainerDemo.routeName),
      Entry('Align', AlignDemo.routeName),
      Entry('Indexed', IndexedStackDemo.routeName),
      Entry('Flex', FlexDemo.routeName),
      // Entry('RowColumn', RowColumnDemo.routeName),
      Entry('ColumnPro', ColumnProDemo.routeName),
      Entry('RowPro', RowProDemo.routeName),
    ],
  ),
  Entry(
    'Tabs',
    '',
    <Entry>[
      Entry('Tab', TabsDemo.routeName),
      Entry('BottomTab', BottomTabDemo.routeName),
      Entry('BottomTabNotch', BottomTabNotchDemo.routeName),
    ],
  ),
  Entry(
    'Others',
    '',
    <Entry>[
      Entry('Image', ImageDemo.routeName),
      Entry('Alert', AlertDemo.routeName),
      Entry('Gradient', GradientDemo.routeName),
    ],
  ),
  Entry(
    'Bonus',
    '',
    <Entry>[
      Entry('Signup', BLogin.routeName),
      Entry('RowColumnPro', TajMahal.routeName),
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
      return GestureDetector(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (BuildContext context2) => ContainerDemo()));

            Navigator.of(context).pushNamed(root.routeName);
          },
          child: ListTile(title: Text(root.title)));

    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
