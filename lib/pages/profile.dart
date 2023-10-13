import 'package:flutter/material.dart';
import 'package:plataforma_demeter/shared/app_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 25, left: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(width: 50, height: 50, decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.all(Radius.circular(50))),),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nome", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),),
                            Text("Francisco Antônio", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 500,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
                        ),
                        Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Container(
                                            height: 52,
                                            width: 52,
                                            decoration: BoxDecoration(color: AppColors.cor8, borderRadius: BorderRadius.all(Radius.circular(15))),
                                          ),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.wallet_outlined, color: Colors.white, size: 30,))
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: Text("Conta", style: TextStyle(fontSize: 18),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
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