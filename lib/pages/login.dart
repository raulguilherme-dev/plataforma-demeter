import 'package:flutter/material.dart';
import 'package:plataforma_demeter/pages/register.dart';
import 'package:plataforma_demeter/shared/app_colors.dart';
import 'package:plataforma_demeter/widgets/menu_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
                borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(120, 70), bottomRight: Radius.elliptical(240, 90))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text('Bem Vindo', style: TextStyle(color: AppColors.cor2, fontSize: 30, fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Faça login na sua conta', style: TextStyle(color: Colors.grey, fontSize: 12),),
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
              padding: const EdgeInsets.only(top: 7, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}, ),
                      Text('Lembrar-me'),
                    ],
                  ),
                  Text('Esqueceu sua senha?')
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('OU', style: TextStyle(fontWeight: FontWeight.w100),),
            ),
            Container(
              width: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("lib/assets/images/google-png.png", width: 35),
                  Image.asset("lib/assets/images/facebook-png.png", width: 45)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ElevatedButton(onPressed: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                        return MenuWidget();
                      })
                    );}, style: ElevatedButton.styleFrom(backgroundColor: AppColors.cor2, fixedSize: const Size(210, 48), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))), child: const Text('Entrar', style: TextStyle(color: Colors.white)), ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Não possui uma conta? '),
                  GestureDetector(onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                        return RegisterPage();
                      })
                    );
                  }, child: Text('Cadastre-se aqui', style: TextStyle(color: AppColors.cor6),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}