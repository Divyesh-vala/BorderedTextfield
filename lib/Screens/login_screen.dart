import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            //   Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 20),
            //     child: SizedBox(height:10,
            //     child:
            // Image.asset("assets/Welcome.png",fit: BoxFit.fill,),
            //     ),
            //   ),
            // Text("Wellcome",style: TextStyle(fontSize: 22,),),
            // Center(
            //   child: SizedBox(
            //     height: 20,
            //     child: Image.asset("assets/Welcome.png",fit: BoxFit.fill,)),
            // ),
            //         Image.asset("assets/Explore coworking spaces.png"),
            const Center(
                child: Text(
              "Wellcome",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            )),
            const SizedBox(
              height: 10,
            ),
            const Center(
                child: Text(
              "Explore coworking spaces",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            )),
            const SizedBox(
              height: 10,
            ),
            const Center(
                child: Text(
              "CWN APP",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
                color: Colors.amber,
              ),
              overflow: TextOverflow.ellipsis,
            )),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email Id",
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.02),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.02),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
