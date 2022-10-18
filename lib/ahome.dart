import 'package:flutter/material.dart';

class A_home extends StatefulWidget {
  const A_home({Key? key}) : super(key: key);

  @override
  State<A_home> createState() => _A_homeState();
}

class _A_homeState extends State<A_home> {
  bool themeData = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Setting UI"),
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 30,),

                    Text("Common"),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            leading: Icon(Icons.language),
                            title: Text("Language"),
                            subtitle: Text("English"),
                          ),
                        ),
                      ],
                    ),
                    Container(height: 1,width: double.infinity,color: Colors.grey,),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            leading: Icon(Icons.terrain_rounded),
                            title: Text("Enveriment"),
                            subtitle: Text("Production"),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Column(
                children: [
                  Text("Account"),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: Icon(Icons.call),
                          title: Text("PhonNamber"),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 1,width: double.infinity,color: Colors.grey,),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: Icon(Icons.email),
                          title: Text("Email"),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 1,width: double.infinity,color: Colors.grey,),

                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: Icon(Icons.signpost_outlined),
                          title: Text("SingOut"),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              Column(
                children: [
                  Text("Security"),
                  SizedBox(height: 30,),

                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          trailing: Container(child: Switch(onChanged: (valu){}, value:themeData ,),),
                          leading: Icon(Icons.app_blocking),
                          title: Text("Lock App In Baground"),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 1,width: double.infinity,color: Colors.grey,),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          trailing: Container(child: Switch(onChanged: (valu){}, value:themeData ,),),
                          leading: Icon(Icons.fingerprint),
                          title: Text("Use in Fingarprint"),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 1,width: double.infinity,color: Colors.grey,),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          trailing: Container(child: Switch(onChanged: (valu){}, value:themeData ,),),
                          leading: Icon(Icons.lock),
                          title: Text("Change Pasword"),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 1,width: double.infinity,color: Colors.grey,),

                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  Text("Music"),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: Icon(Icons.file_copy),
                          title: Text("Trums Of Service"),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 1,width: double.infinity,color: Colors.grey,),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: Icon(Icons.file_copy_outlined),
                          title: Text("Open Sores Lines"),
                        ),
                      ),
                    ],
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
