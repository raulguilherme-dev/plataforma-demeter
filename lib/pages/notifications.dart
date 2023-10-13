import 'package:flutter/material.dart';
import 'package:plataforma_demeter/shared/app_colors.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.cor12
              ),
            ),
            Positioned(
              top: 35,
              left: 10,
              child: IconButton(
                icon: Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Column(
                children: [
                  Text("Notificações", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 70,
                              width: double.maxFinite,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(color: AppColors.cor1.withOpacity(0.3), borderRadius: BorderRadius.all(Radius.circular(35))),
                                      ),
                                      Image.asset('lib/assets/images/alface.png', width: 52,)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text("A irrigação de tomate começara em em 30min", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),),
                                        Text("2min atrás", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}