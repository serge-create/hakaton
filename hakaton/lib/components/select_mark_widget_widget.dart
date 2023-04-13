import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_mark_widget_model.dart';
export 'select_mark_widget_model.dart';

class SelectMarkWidgetWidget extends StatefulWidget {
  const SelectMarkWidgetWidget({Key? key}) : super(key: key);

  @override
  _SelectMarkWidgetWidgetState createState() => _SelectMarkWidgetWidgetState();
}

class _SelectMarkWidgetWidgetState extends State<SelectMarkWidgetWidget> {
  late SelectMarkWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectMarkWidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 250.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(25.0, 20.0, 25.0, 0.0),
        child: StreamBuilder<List<CarsRecord>>(
          stream: queryCarsRecord(),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    color: Color(0xFFED500E),
                  ),
                ),
              );
            }
            List<CarsRecord> listViewCarsRecordList = snapshot.data!;
            return ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: listViewCarsRecordList.length,
              itemBuilder: (context, listViewIndex) {
                final listViewCarsRecord =
                    listViewCarsRecordList[listViewIndex];
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: InkWell(
                    onTap: () async {
                      setState(() {
                        FFAppState().mark = listViewCarsRecord.mark!;
                      });
                      Navigator.pop(context);
                    },
                    child: Text(
                      listViewCarsRecord.mark!,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).displayMedium,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
