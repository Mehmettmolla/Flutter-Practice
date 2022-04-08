import 'package:first/doc/core/enum/duration_enum.dart';

class DurationException implements Exception {
 final DurationEnums data;
 
 DurationException(this.data);
  @override
  String toString() {
    // TODO: implement toString
    return "Duration not found $data";
  }
  
}