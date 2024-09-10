import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime{
  String get formattedDate => DateFormat("yyyy-MM-dd").format(this);
  String get formattedTime => "$hour:$minute";
  String get formattedDateTime => "$formattedDate $formattedTime";

  /// Returns the current time in milliseconds
  ///  from the epoch 
  int get currentTimeInMilliseconds => millisecondsSinceEpoch;
}