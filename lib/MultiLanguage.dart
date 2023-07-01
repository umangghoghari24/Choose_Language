import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MultiLanguage extends StatefulWidget {
  const MultiLanguage({Key? key}) : super(key: key);

  @override
  State<MultiLanguage> createState() => _MultiLanguageState();
}

class _MultiLanguageState extends State<MultiLanguage> {
  @override
  Widget build(BuildContext context) {

    final List locale = [
      {'name' : 'ENGLISH','locale':Locale('en','US') },
      {'name' : 'हिंदी','locale':Locale('hi','IN') },
      {'name' : 'ગુજરાતી','locale':Locale('guj','gu') },
    ];

    // Update Language

    UpdateLanguage(Locale locale) {
      Get.back();
      Get.updateLocale(locale);
    }

    builddialog(BuildContext context) {
      showDialog(context: context, builder: (builder){

        // Choose a language

        return AlertDialog(
          title: Text('Choose a language'),
          content: Container(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context,index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        // print(locale[index]['name']);
                        UpdateLanguage(locale[index]['locale']);
                      },
                        child: Text(locale [index] ['name'])),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.blue,
                  );
                },
                itemCount: locale.length)
          ),
        );
      });
    }
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('title'.tr,
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),

        backgroundColor: Colors.yellowAccent,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr,style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white
            ),),

            SizedBox(height: 15,),

            Text('message'.tr,style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,

            ),),

            SizedBox(height: 15,),

            Text('sub'.tr,style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white
            ),),

            SizedBox(height: 20,),

            ElevatedButton(onPressed: () {
              builddialog(context);
            },
                child: Text('changelang'.tr))

          ],
        ),
      ),
    );
  }
}
