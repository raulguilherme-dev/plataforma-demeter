import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plataforma_demeter/pages/login.dart';
import 'package:plataforma_demeter/shared/app_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('lib/assets/images/login_background.jpg', ), fit: BoxFit.cover,),
                borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(240, 90), bottomRight: Radius.elliptical(120, 70))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text('Crie sua conta', style: TextStyle(color: AppColors.cor2, fontSize: 30, fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextFormField(cursorColor: AppColors.cor10, decoration: InputDecoration(labelText: 'Nome Completo', prefixIcon: Icon(Icons.person_2_outlined,), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.cor10, )),),),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextFormField(cursorColor: AppColors.cor10, decoration: InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.mail_outline_rounded,), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.cor10, )),),),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextFormField(cursorColor: AppColors.cor10, keyboardType: TextInputType.visiblePassword, decoration: InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.lock_outline,), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.cor10, )),),),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 30, left: 30),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}, ),
                  Text('Aceito os termos de uso e a política de privacidade', style: TextStyle(fontSize: 10),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(onPressed: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      })
                    );}, style: ElevatedButton.styleFrom(backgroundColor: AppColors.cor2, fixedSize: const Size(210, 48), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))), child: const Text('Cadastre-se', style: TextStyle(color: Colors.white)), ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Ja tem uma conta? '),
                  GestureDetector(onTap: (() {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      })
                    );
                  }), child: Text('Entre aqui', style: TextStyle(color: AppColors.cor6),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}