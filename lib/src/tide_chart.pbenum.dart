///
//  Generated code. Do not modify.
//  source: tide_chart.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class TideChartLogLevel extends $pb.ProtobufEnum {
  static const TideChartLogLevel none = TideChartLogLevel._(0, 'none');
  static const TideChartLogLevel fatal = TideChartLogLevel._(1, 'fatal');
  static const TideChartLogLevel error = TideChartLogLevel._(2, 'error');
  static const TideChartLogLevel exception = TideChartLogLevel._(3, 'exception');
  static const TideChartLogLevel warning = TideChartLogLevel._(4, 'warning');
  static const TideChartLogLevel info = TideChartLogLevel._(5, 'info');
  static const TideChartLogLevel message = TideChartLogLevel._(6, 'message');
  static const TideChartLogLevel debug = TideChartLogLevel._(7, 'debug');
  static const TideChartLogLevel check = TideChartLogLevel._(8, 'check');
  static const TideChartLogLevel verbose = TideChartLogLevel._(9, 'verbose');
  static const TideChartLogLevel trace = TideChartLogLevel._(10, 'trace');
  static const TideChartLogLevel all = TideChartLogLevel._(11, 'all');

  static const $core.List<TideChartLogLevel> values = <TideChartLogLevel> [
    none,
    fatal,
    error,
    exception,
    warning,
    info,
    message,
    debug,
    check,
    verbose,
    trace,
    all,
  ];

  static final $core.Map<$core.int, TideChartLogLevel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TideChartLogLevel valueOf($core.int value) => _byValue[value];

  const TideChartLogLevel._($core.int v, $core.String n) : super(v, n);
}

