import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyles.style
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyles.textButton,
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(width: 4,color: Colors.pinkAccent.shade100)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 4,color: Colors.greenAccent.shade100),

          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
       appBarTheme: AppBarTheme(
         backgroundColor: Colors.orange.shade50,
         foregroundColor: Colors.black,
         elevation: 7,
         centerTitle: true,
         titleTextStyle: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 20,

         )
       ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purpleAccent.shade200,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)),
    ),),
      ),
      themeMode: ThemeMode.light,
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Themedata",//style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200,)
        ),
        backgroundColor: Colors.orangeAccent.shade100,
        centerTitle: true,
        leading: Icon(Icons.home,color: Colors.black,),
        actions: [
          Icon(Icons.add,color: Colors.black,),
        ],

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){},
             // style: ButtonStyles.style,
        child: Text("Click Me!!"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent.shade100
              ),
              child: Text("Click Me!!"),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(onPressed: (){},
                style: TextButton.styleFrom(
                  //backgroundColor:  //Hexa---0xFF default vabe add korte hobe//custom color
                  foregroundColor: Color(0xFF009688),
                ),
                child: Text("TextButton")),
            SizedBox(
              height: 10,
            ),
            TextField(),
          ],
        ),
      ),
    );
  }

}

class ButtonStyles{
  static ButtonStyle style =  ElevatedButton.styleFrom(
  backgroundColor: Colors.pink.shade200,
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(8)
  ),
  ) as ButtonStyle; //as ButtonStyle;

static ButtonStyle textButton=TextButton.styleFrom(
  backgroundColor: Colors.greenAccent.shade100,
  foregroundColor: Colors.grey.shade50,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
    //side: BorderSide(width: 4),
  ),
  textStyle: TextStyle(
    fontSize: 20
  ),
  padding: EdgeInsets.symmetric(horizontal: 16,vertical:16 ),
);


}

