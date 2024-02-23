import '/flutter_flow/flutter_flow_util.dart';
import 'start_widget.dart' show StartWidget;
import 'package:flutter/material.dart';

class StartModel extends FlutterFlowModel<StartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - hasValidCredentials] action in Start widget.
  bool? isLoggedIn;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
