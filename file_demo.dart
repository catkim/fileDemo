import 'dart:io';
import 'dart:convert';

void main() async {
  var file = File('www.hagerty.com.har'); //get the file
  var harLines = await file.readAsLinesSync(); //convert it to List String
  var str = harLines.join(); //convert it to string

  final hardata = jsonDecode(str) as Map;
  for (var k in hardata.keys) {
    print("Key : $k, VaLue:$hardata[k]");
  }
  //print(hardata.entries.forEach((element) {print(element.key);}));
  //hardata['entries'].forEach((k, v) => print('${k}'));
  //final Map convertIt = hardata['log']['entries'];
  //for (var key in hardata.keys) print(key);
}
