import 'package:flutter/material.dart';
import 'package:plataforma_demeter/shared/app_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

class CulturePage extends StatefulWidget {
  const CulturePage({super.key});

  @override
  State<CulturePage> createState() => _CulturePageState();
}

class _CulturePageState extends State<CulturePage> {

  int _pagina = 0;
  final List<String> _dias = ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sab"];

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: AppColors.cor12),
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
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _pagina = 0;
                          });
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(color: _pagina == 0? AppColors.cor13: Colors.transparent, border: Border.all(color: Colors.black), borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15))),
                            ),
                            Text("Geral", style: TextStyle(fontWeight: FontWeight.w600),)
                          ]
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _pagina = 1;
                          });
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(color: _pagina == 1? AppColors.cor13: Colors.transparent, border: Border.all(color: Colors.black), borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15))),
                            ),
                            Text("Gráficos", style: TextStyle(fontWeight: FontWeight.w600),)
                          ]
                        ),
                      )
                    ],
                  ),
                ),
              ]
            ),
            if (_pagina == 0)
            Stack(
              children: [
                Container(
                  height: 510,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alface", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                      Text("Plantado dia 23/06/2023", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                height: 170,
                                width: double.maxFinite,
                                decoration: BoxDecoration(color: AppColors.cor11, borderRadius: BorderRadius.all(Radius.circular(10)), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), spreadRadius: .2, blurRadius: 5, offset: Offset(2, 2))]),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text("QUANTIDADE DE IRRIGAÇÃO", style: TextStyle(fontWeight: FontWeight.w600 ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      CircularPercentIndicator(
                                        radius: 50,
                                        lineWidth: 10.0,
                                        percent: 0.75,
                                        // progressColor: AppColors.cor9,
                                        linearGradient: LinearGradient(colors: [AppColors.cor9, AppColors.cor17]),
                                        rotateLinearGradient: true,
                                        reverse: true,
                                        animation: true,
                                        circularStrokeCap: CircularStrokeCap.round,
                                        center: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("25 L de"),
                                            Text("40 Litros")
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Irrigado: 25 Litros"),
                                          Text("Vai irrigar: 15 Litros")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  height: 110,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: AppColors.cor15,
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), spreadRadius: .2, blurRadius: 5, offset: Offset(2, 2))]
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Icon(Icons.calendar_month_outlined, size: 26),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("12", style: TextStyle(fontSize: 25),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text("Dias para a colheita", style: TextStyle(fontSize: 11),),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  height: 110,
                                  width: 105,
                                  decoration: BoxDecoration(
                                    color: AppColors.cor16,
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), spreadRadius: .2, blurRadius: 5, offset: Offset(2, 2))]
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Icon(Icons.device_thermostat_outlined, size: 26),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("28ºC", style: TextStyle(fontSize: 25),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text("Temperatura", style: TextStyle(fontSize: 11),),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  height: 110,
                                  width: 105,
                                  decoration: BoxDecoration(
                                    color: AppColors.cor15,
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), spreadRadius: .2, blurRadius: 5, offset: Offset(2, 2))]
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Icon(Icons.water_drop_outlined, size: 26),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("45%", style: TextStyle(fontSize: 25),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text("Umidade", style: TextStyle(fontSize: 11),),
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
                ),
              ]
            ),
            if (_pagina == 0)
            Positioned(
              top: 150,
              child: Image.asset(
                "lib/assets/images/alface.png",
                width: 200,  
              ),
            ),
            if (_pagina == 1)
            Positioned(
              top: 80,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("Alface", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text("Consumo de água da semana"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 180,
                          width: (MediaQuery.of(context).size.width - 50),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                        ),
                        Container(
                          height: 170,
                          width: (MediaQuery.of(context).size.width - 50),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                for(var i=0; i<7; i++)
                                Column(
                                  children: [
                                    RotatedBox(
                                      quarterTurns: -1,
                                      child: LinearPercentIndicator(
                                        width: 145,
                                        animation: true,
                                        percent: random.nextDouble(),
                                        lineHeight: 13,
                                        backgroundColor: Colors.transparent,
                                        barRadius: Radius.circular(5),
                                        linearGradient: LinearGradient(colors: [AppColors.cor11, AppColors.cor9]),
                                      ),
                                    ),
                                    Text("${_dias[i]}"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text("Evapotranspiração e Volume aplicado", style: TextStyle(fontSize: 14),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                      height: 200,
                      width: (MediaQuery.of(context).size.width - 50),
                      child: LineChart(
                        LineChartData(
                          gridData: FlGridData(show: true, drawVerticalLine: false),
                          titlesData: FlTitlesData(
                            show: true,
                            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                            bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: (value, meta) {
                              const style = TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              );
                              String text;
                              switch (value.toInt()) {
                                case 0:
                                  text = 'Dom';
                                  break;
                                case 1:
                                  text = 'Seg';
                                  break;
                                case 2:
                                  text = 'Ter';
                                  break;
                                case 3:
                                  text = 'Qua';
                                  break;
                                case 4:
                                  text = 'Qui';
                                  break;
                                case 5:
                                  text = 'Sex';
                                  break;
                                case 6:
                                  text = 'Sab';
                                  break;
                                default:
                                  return Container();
                              }
                  
                              return Text(text, style: style, textAlign: TextAlign.left);
                            },)),
                            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: (value, meta) {
                              const style = TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                              );
                              String text;
                              switch (value.toInt()) {
                                case 0:
                                  text = '0h';
                                  break;
                                case 2:
                                  text = '2h';
                                  break;
                                case 4:
                                  text = '4h';
                                  break;
                                case 6:
                                  text = '6h';
                                  break;
                                case 8:
                                  text = '8h';
                                  break;
                                case 10:
                                  text = '10h';
                                  break;
                                default:
                                  return Container();
                              }
                  
                              return Text(text, style: style, textAlign: TextAlign.left);
                            },)),
                          ),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          minX: 0,
                          maxX: 6,
                          minY: 0,
                          maxY: 10,
                          lineBarsData: [
                            LineChartBarData(
                              spots: [
                                for (var i=0; i < 7; i++)
                                FlSpot(i.toDouble(), (random.nextInt(10)).toDouble()),
                              ],
                              isCurved: true,
                              isStrokeCapRound: true,
                              dotData: FlDotData(show: false),
                              color: AppColors.cor9,
                              barWidth: 3,
                              belowBarData: BarAreaData(
                                show: true,
                                gradient: LinearGradient(colors: [Colors.white.withOpacity(0.5), AppColors.cor18.withOpacity(1)], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                              ),
                            ),
                          ],
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]
        ),
      )
    );
  }
}