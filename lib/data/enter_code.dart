
import 'package:hive/hive.dart';
part 'enter_code.g.dart';
@HiveType(typeId: 0)
class EnterCode {
  EnterCode({required this.email,required this.number});
  
  @HiveField(0)
  String email;

  @HiveField(1)
  int number;
  
}