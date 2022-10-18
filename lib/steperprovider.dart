import 'package:flutter/material.dart';

class stepperProvider extends ChangeNotifier{

  int i=0;

  void add()
  {
    if(i<5)
    {
      i++;
    }
    notifyListeners();

  }
  void decriment(){
    if(i>0){
      i--;
    }
    notifyListeners();
  }
  void stepcliclk(int i)
  {
    this.i=i;
    notifyListeners();
  }

}