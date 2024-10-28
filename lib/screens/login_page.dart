import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  late final bool say;
  late String inner;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: Image.asset(
              'assets/images/insta.png',
              width: 200,
            ),
          ),
          SizedBox(height: 20),
          _buildEmailField(email, Icons.email,'Enter email', false),
          SizedBox(height: 10,),
          _buildEmailField(password, Icons.lock,'Enter Password', true),
          SizedBox(height: 4,),
          forgot(),
          SizedBox(height: 4,),
          login(),
          SizedBox(height: 4,),
          // Signup option
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Don\'t have an account?'),
                SizedBox(width: 7,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage())
                    );

                  },
                  child:Text('SignUp', style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 15),) ,
                ),


              ],
            ),
          )

          // Call the renamed method here
        ],
      ),
    );
  }

  Widget _buildEmailField(TextEditingController _controller, IconData icon, String inner, bool say) { // Renamed the method
    return Padding(
      padding: EdgeInsets.all(7),
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
  Widget forgot(){
    return Padding(padding:EdgeInsets.symmetric(horizontal: 10),
      child:  Text('Forgot your password?', style: TextStyle(
        color: Theme.of(context).colorScheme.secondary
      ),) ,


    );

  }
  Widget login() {
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
            'Log In',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white)

          ),
        ),
      ),
    );
  }

}

