import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selec_model_widget_model.dart';
export 'selec_model_widget_model.dart';

class SelecModelWidgetWidget extends StatefulWidget {
  const SelecModelWidgetWidget({Key? key}) : super(key: key);

  @override
  _SelecModelWidgetWidgetState createState() => _SelecModelWidgetWidgetState();
}

class _SelecModelWidgetWidgetState extends State<SelecModelWidgetWidget> {
  late SelecModelWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelecModelWidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<CarsRecord>>(
      stream: queryCarsRecord(
        queryBuilder: (carsRecord) =>
            carsRecord.where('mark', isEqualTo: FFAppState().mark),
        singleRecord: true,
      ),
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
        List<CarsRecord> containerCarsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerCarsRecord = containerCarsRecordList.isNotEmpty
            ? containerCarsRecordList.first
            : null;
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
            child: Builder(
              builder: (context) {
                final model = containerCarsRecord!.model!.toList();
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: model.length,
                  itemBuilder: (context, modelIndex) {
                    final modelItem = model[modelIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: InkWell(
                        onTap: () async {
                          setState(() {
                            FFAppState().model = modelItem;
                          });
                          Navigator.pop(context);
                        },
                        child: Text(
                          modelItem,
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
      },
    );
  }
}
