import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _emailcontroller = TextEditingController();
  final _usernamecontroller = TextEditingController();
  final _biocontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _confirmpasswordcontroller = TextEditingController();
  late final String inner;
  late final bool say;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/insta.png', width: 200,),
            SizedBox(height: 20,),
            CircleAvatar(

              radius: 30,
            ),
            SizedBox(height: 20,),
            _buildfield(_emailcontroller, Icons.email, 'Email', false),
            SizedBox(height: 20,),
            _buildfield(_usernamecontroller, Icons.man, 'Username', false),
            SizedBox(height: 20,),
            _buildfield(_biocontroller, Icons.password, 'Bio',false),
            SizedBox(height: 20,),
            _buildfield(_passwordcontroller, Icons.lock, 'Password', true),
            SizedBox(height: 20,),
            _buildfield(_confirmpasswordcontroller, Icons.lock_outline, 'Confirm Password',true),
            SizedBox(height: 20,),
            signup(),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Already have an Account?', style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text('LogIn', style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 15),),
                  )
                ],
              ),
            )

          ],
        ),
      ),

    );
  }

  Widget _buildfield(TextEditingController _controller, IconData icon, String inner, bool say){
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          obscureText: say,
      controller: _controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.grey[600],
        ),
        hintText: inner,
        hintStyle: TextStyle(color: Colors.grey[600], fontSize: 15),
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            width: 2.0,
          ),
        ),
      ),
    ),

    );
  }

  Widget signup() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity, // Full-width button
        child: ElevatedButton(
          onPressed: () {
            // Add your login action here
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16.0),
          ),
          child: Text(
              'Sign Up',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white)

          ),
        ),
      ),
    );
  }
}
