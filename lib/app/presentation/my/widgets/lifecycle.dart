import 'package:flutter/material.dart';

class Lifecycle extends StatefulWidget {
  final void Function()? dispose;
  final void Function()? init;
  final Widget? child;

  const Lifecycle({
    super.key,
    this.dispose,
    this.init,
    this.child,
  });

  @override
  LifecycleState createState() {
    return LifecycleState();
  }
}

class LifecycleState extends State<Lifecycle> {
  @override
  void initState() {
    // if (widget.init != null) {
    //   widget.init!();
    // }
    widget.init?.call();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? SizedBox.shrink();
  }

  @override
  void dispose() {
    if (widget.dispose != null) {
      widget.dispose!();
    }
    super.dispose();
  }
}
