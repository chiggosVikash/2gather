
import 'package:intl/intl.dart';

const String dateTimeFormatPattern = 'dd-MM-yyyy';

extension DateTimeExtension on DateTime {
  String format({String pattern = dateTimeFormatPattern,String? locale}) {
    return DateFormat(pattern, locale).format(this);
  }
}