import 'package:flutter/material.dart';
import 'package:plataforma_demeter/pages/culture.dart';
import 'package:plataforma_demeter/pages/notifications.dart';
import 'package:plataforma_demeter/shared/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 320,
                    width: double.maxFinite,
                    decoration: BoxDecoration(color: AppColors.cor3, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36))),
                  ),
                  Positioned(top: 40, right: 30, child: IconButton(icon: Icon(Icons.notifications_none_outlined), onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                        return NotificationsPage();
                      })
                    );                  
                  },)),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 45, left: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.all(Radius.circular(50))),),
                            ),
                            Text("Bem Vindo, Antônio"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text("Hoje, 12 de Junho", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w300),),
                      ),
                      Text("29º", style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.w300),),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Ensolarado", style: TextStyle(color: Colors.white, fontSize: 14),),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Icon(Icons.wind_power_outlined, color: Colors.white, size: 15),
                        Text("Vento", style: TextStyle(color: Colors.white, fontSize: 11),),
                        Text("|", style: TextStyle(color: Colors.white, fontSize: 11)),
                        Text("10km/h", style: TextStyle(color: Colors.white, fontSize: 11))
                      ],),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Icon(Icons.water_drop_outlined, color: Colors.white, size: 15,),
                        Text("Umidade", style: TextStyle(color: Colors.white, fontSize: 11),),
                        Text("|", style: TextStyle(color: Colors.white, fontSize: 11)),
                        Text("54%", style: TextStyle(color: Colors.white, fontSize: 11))
                      ],)
                    ],
                  )
                ]
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text("Culturas", style: TextStyle(fontSize: 25)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) {
                        return CulturePage();
                      })
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        width: double.maxFinite,
                        decoration: BoxDecoration(color: AppColors.cor4, borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 5),
                            child: Stack(
                              children: [
                                Container(
                                  height: 105,
                                  width: 105,
                                  decoration: BoxDecoration(color: AppColors.cor11, borderRadius: BorderRadius.all(Radius.circular(15))),
                                ),
                                Image.asset("lib/assets/images/alface.png", width: 95,)
                              ]
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Alface", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                              Row(
                                children: [
                                  Text("Data de Plantio: ", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),
                                  Text("23/06/2023", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12))
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Proxima Irrigação: ", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12)),
                                  Text("5 hrs da Tarde", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12))
                                ],
                              ),
                              Container(
                                height: 18,
                                width: 120,
                                decoration: BoxDecoration(color: AppColors.cor5, borderRadius: BorderRadius.circular(30)),
                              )
                            ],
                          )
                        ],
                      ),
                      
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}