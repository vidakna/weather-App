import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/getlocation.dart';
import 'package:weatherapp/weatherData.dart';

var dayInfo=DateTime.now();
var dateFormat=DateFormat('EEEE, d MMM, yyyy').format(dayInfo);

class MyHomePage extends StatelessWidget {

  var client=WeatherData();
  var data;

  info()async{
    //var position=await GetPosition();
    data = await client.getData('8.9', '80.83');
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body:FutureBuilder(
        future: info(),
        builder: ((context, snapshot) {
          return Container(
            child: Column(
              children: [
                Container(
                  height:size.height*0.7,
                  width: size.width,
                  padding: EdgeInsets.only(top: 60),
                  margin: EdgeInsets.only(right: 12,left: 12),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                        colors: [
                          Colors.lightBlueAccent,
                          Colors.blue
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.2,0.8]
                    ),
                  ),
                  child:Column(
                    children: [
                      Text('${data?.cityName}',
                        style: TextStyle(color: Colors.white.withOpacity(0.8),
                            fontSize: 35),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(dateFormat,
                        style: TextStyle(color: Colors.white.withOpacity(0.8),
                            fontSize: 12),
                      ),

                      // Image.network(
                      //   'http:${data.cityName}',
                      //   width: size.width*3.5,
                      //   fit: BoxFit.fill,
                      // ),

                      SizedBox(
                          height:10
                      ),

                      Text('${data?.condition}',
                        style: TextStyle(color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Text('${data?.temp}',
                        style: TextStyle(color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.w800,
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        children: [
                          Expanded(child: Column(
                            children: [
                              // Image.asset('assets/f'),
                              Text(
                                '${data?.wind} km/h',
                                style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Wind',
                                style: TextStyle(
                                    color:Colors.white.withOpacity(0.6),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          )),
                          Expanded(child: Column(
                            children: [
                              //image
                              Text(
                                '${data?.humidity}',
                                style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Humidity',
                                style: TextStyle(
                                    color:Colors.white.withOpacity(0.6),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          )),
                          Expanded(child: Column(
                            children: [
                              //image
                              Text(
                                '${data?.wind_dir}',
                                style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Wind Derection',
                                style: TextStyle(
                                    color:Colors.white.withOpacity(0.6),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),


                    ],
                  ) ,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Expanded(child: Column(
                    children: [
                      Text('Gust',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 17
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('${data?.gust} kp/h',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 22
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Pressure',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 17
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('${data?.pressure}hpa',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 22
                        ),
                      ),
                    ],
                  ),
                  ),
                  Expanded(child: Column(
                    children: [
                      Text('uv',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 17
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('${data?.uv}',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 22
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Preciptation',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 17
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('${data?.pricipe} mm',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 22
                        ),
                      ),
                    ],
                  ),
                  ),
                  Expanded(child: Column(
                    children: [
                      Text('Wind',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 17
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('${data?.wind} kp/h',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 22
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Last update',
                        style: TextStyle(color: Colors.white.withOpacity(0.5),
                            //font-family
                            fontSize: 17
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('${data?.last_update}',
                        style: TextStyle(color: Colors.lightGreenAccent,
                            //font-family
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                  ),
                ],
                )
              ],
            ),
          );
        }),),
      );

  }
}
