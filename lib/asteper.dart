import 'package:flutter/material.dart';
import 'package:projectt/steperprovider.dart';
import 'package:provider/provider.dart';

class A_Steper extends StatefulWidget {
  const A_Steper({Key? key}) : super(key: key);

  @override
  State<A_Steper> createState() => _HomeState();
}

class _HomeState extends State<A_Steper> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Steper"),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
        body: Theme(
          data: ThemeData(
              colorScheme: ColorScheme.light(
                  primary: Colors.deepOrange,
                ),
          ),
          child: Stepper(
            type: StepperType.vertical,
            physics: BouncingScrollPhysics(),
            currentStep: Provider.of<stepperProvider>(context,listen: true).i,
            onStepCancel: (){
              Provider.of<stepperProvider>(context,listen: false).decriment();

            },
            onStepContinue: (){
              Provider.of<stepperProvider>(context,listen: false).add();

            },
            onStepTapped: (valu){
              Provider.of<stepperProvider>(context,listen: true).stepcliclk(valu);

            },
            steps: [
              Step(title: Text("Singup"),
                  content: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Full Name",
                            prefixIcon: Icon(Icons.person)
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Email id",
                            prefixIcon: Icon(Icons.email)
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Pasword",
                            prefixIcon: Icon(Icons.lock)
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Conform Pasword",
                            prefixIcon: Icon(Icons.lock)
                        ),
                      ),

                    ],
                  )
              ),
              Step(title: Text("Login"),
                  content: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            labelText: "User Name",
                            prefixIcon: Icon(Icons.person)
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Pasword",
                          prefixIcon: Icon(Icons.password),
                        ),
                      ),

                    ],
                  )

              ),
              Step(title: Text("Home"),
                content: TextField(
                  decoration: InputDecoration(label: Text("surname")),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}