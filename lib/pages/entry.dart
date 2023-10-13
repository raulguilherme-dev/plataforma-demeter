import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plataforma_demeter/pages/login.dart';
import 'package:plataforma_demeter/pages/register.dart';
import 'package:plataforma_demeter/shared/app_colors.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Cor de fundo da barra de notificações
      statusBarBrightness:
          Brightness.dark, // Brilho do texto na barra de notificações
    ));
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.topEnd,
                    end: AlignmentDirectional.bottomEnd,
                    colors: [
                    AppColors.cor9, 
                    AppColors.cor10
                  ],)
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Image.asset('lib/assets/images/logo.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text("PLATAFORMA DEMETER", style: TextStyle(fontFamily: 'Mohave', color: Colors.white, fontSize: 35),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: ElevatedButton(onPressed: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      })
                    );}, style: ElevatedButton.styleFrom(backgroundColor: AppColors.cor2, fixedSize: const Size(210, 48), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))), child: const Text('Entrar', style: TextStyle(color: Colors.white),),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(onPressed: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                        return RegisterPage();
                      })
                    );}, style: ElevatedButton.styleFrom(backgroundColor: Colors.white, fixedSize: const Size(210, 48), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))), child: const Text('Registre-se', style: TextStyle(color: AppColors.cor1)), ),
                    ),
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}