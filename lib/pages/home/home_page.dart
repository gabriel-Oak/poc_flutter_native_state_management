import 'package:demo/pages/home/home_grid_tile.dart';
import 'package:demo/pages/inherited_notifier_counter/inherited_notifier_counter_page.dart';
import 'package:demo/pages/statefull_counter/statefull_counter_page.dart';
import 'package:demo/pages/stream_counter/stream_counter_page.dart';
import 'package:demo/utils/global_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(GlobalContext.of(context).title),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _getGridCrossAxisCount(context),
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: const [
          HomeGridTile(
            title: 'Statefull Counter',
            navigateTo: StatefullCounterPage(),
          ),
          HomeGridTile(
            title: 'Inherited Notifier Counter',
            navigateTo: InheritedNotifierCounterPage(),
          ),
          HomeGridTile(
            title: 'Stream Counter',
            navigateTo: StreamCounterPage(),
          ),
        ],
      ),
    );
  }

  _getGridCrossAxisCount(BuildContext context) {
    final breakpoints = GlobalContext.of(context).breakpoints;
    if (breakpoints.isDownXs(context)) return 1;
    if (breakpoints.isDownSm(context)) return 2;
    if (breakpoints.isDownMd(context)) return 3;
    if (breakpoints.isDownLg(context)) return 4;
    if (breakpoints.isUpXl(context)) return 5;
  }
}
