import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final userNameController = TextEditingController();
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: SingleChildScrollView(
        child: Form
        (

key: _formKey,
child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Text("Name"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: profileField(
                  controller: nameController,
                  validator: (val) {
                    if (val != null) {
                      if (val.isEmpty) {
                        return "Please enter email";
                      }else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val)){
                        return "Enter valid email address";
                      }
                    }
                  },
                ),
              ),
              Text("User Name"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: profileField(
                  controller: userNameController,
                  validator: (val) {
                    if (val != null) {
                      if (val.isEmpty) {
                        return "Please enter user name";
                      }
                    }
                  },
                ),
              ),
               Text("Mobile Number"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: profileField(
                  controller: numberController,
                  validator: (val) {
                    if (val != null) {
                      if (val.isEmpty) {
                        return "Please enter mobile";
                      }else if(val.length!=10){
                        return "Please enter valid number";
                      }
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  if(_formKey.currentState!.validate()){

                  }
                },
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileField({
    required TextEditingController controller,
    required String? Function(String?)? validator,
  }) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
          ),
        ),
    ),);
  }
}
