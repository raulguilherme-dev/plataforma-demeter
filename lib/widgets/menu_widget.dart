import 'package:flutter/material.dart';
import 'package:plataforma_demeter/pages/home.dart';
import 'package:plataforma_demeter/pages/profile.dart';
import 'package:plataforma_demeter/shared/app_colors.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {

  int paginaAtual = 0;
  late PageController pc;

  final pages = [HomePage(), ProfilePage()];

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        onPageChanged: setPaginaAtual,
        children: [
          pages[paginaAtual]
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 65,
        width: 200,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: NavigationBar(
              destinations: [
                NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home", selectedIcon: Icon(Icons.home_outlined, color: Colors.white,)),
                NavigationDestination(icon: Icon(Icons.person_outline), label: "Configurações", selectedIcon: Icon(Icons.person_outline, color: Colors.white,))
              ],
              selectedIndex: paginaAtual,
              backgroundColor: AppColors.cor12,
              indicatorColor: AppColors.cor2,
              indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              animationDuration: Duration(milliseconds: 400),
              onDestinationSelected: setPaginaAtual,
            ),
          ),
        ),
      ),
    );
  }
}