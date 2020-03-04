import 'package:ezfine/ui/widgets/progress-indicator.widget.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final object;
  final Function callback;

  Loader({@required this.object, this.callback});

  @override
  Widget build(BuildContext context) {
    if (object == null) {
      return Center(
        child: GenericProgressIndicator(),
      );
    }

    return callback();
  }
}
