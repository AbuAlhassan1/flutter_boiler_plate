import 'package:flutter/material.dart';

class Guard extends StatelessWidget {
  final BuildContext context;
  final bool Function(BuildContext) predicate;
  final Widget Function(BuildContext) onPass;
  final Widget Function(BuildContext) onFail;

  const Guard({
    super.key, 
    required this.context,
    required this.predicate,
    required this.onPass,
    required this.onFail,
  });

  @override
  Widget build(BuildContext context) {
    return predicate(context) ? onPass(context) : onFail(context);
  }
}