import '/flutter_flow/flutter_flow_util.dart';
import 'update_item_widget.dart' show UpdateItemWidget;
import 'package:flutter/material.dart';

class UpdateItemModel extends FlutterFlowModel<UpdateItemWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for item widget.
  FocusNode? itemFocusNode;
  TextEditingController? itemTextController;
  String? Function(BuildContext, String?)? itemTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    itemFocusNode?.dispose();
    itemTextController?.dispose();
  }
}
