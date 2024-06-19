// 17.	Utilisation de async et await

import 'dart:async';

Future fetchData() async {
 return Future.delayed(Duration(seconds: 2), () {
     return 'Data fetched successfully!';
 });
}

Future main() async {
 String result = await fetchData();
 print(result);


 
}

