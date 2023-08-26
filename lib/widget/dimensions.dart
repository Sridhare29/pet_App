import 'package:get/get.dart';

class Dimensions{
     
     static double screenHeight = Get.context!.height; 
     static double screenWidth = Get.context!.width;  
     static double imgHeight = screenHeight/1.24; 

     //dynamic height for padding and margin
     static double height10 = screenHeight/93.2;
     static double height15 = screenHeight/62.1;
     static double height20 = screenHeight/46.6;
     static double height32 = screenHeight/29.1;
     static double height45 = screenHeight/20.7;
     static double height30 = screenHeight/31.0;

     //dynamic weight for padding and margin
    static double width5 = screenHeight/186.4;
     static double width10 = screenHeight/93.2;
     static double width15 = screenHeight/62.1;
     static double width20 = screenHeight/46.6;
     static double width32 = screenHeight/29.1;

     static double font16 = screenHeight/58.2;
     static double font20 = screenHeight/46.6;
     static double font26 = screenHeight/35.8;

     //radius
     static double radius13 = screenHeight/71.6;
     static double radius14 = screenHeight/66.5;
     static double radius20 = screenHeight/42.2;
     static double radius12 = screenHeight/77.6;

}