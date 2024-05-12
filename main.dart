import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Mayo 11', style: TextStyle(color: Colors.black54)),
              Text('Col. Pizzaty',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10),
                  Text('21°C',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 48,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Text('Soleado',
                  style: TextStyle(color: Colors.black54, fontSize: 18)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('HOY',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Text('ESTA SEMANA',
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                ],
              ),
              SizedBox(height: 20),
              Text('Temperaturas',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildWeatherInfo('6 AM', '33°C', Icons.cloud),
                  _buildWeatherInfo('11:59 PM', '34°C',
                      Icons.cloud_queue), // Different cloud icon for variety
                ],
              ),
              SizedBox(height: 20),
              Text('Detalles',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildDetailInfo('Minimo', '39°C'),
                  _buildDetailInfo('Maximo', '31°C'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildDetailInfo('Precipitacion', '320 Pa'),
                  _buildDetailInfo('Humedad', '0%'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeatherInfo(String time, String temp, IconData icon) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blueGrey),
        SizedBox(height: 5),
        Text(time, style: TextStyle(fontSize: 16, color: Colors.blue)),
        SizedBox(height: 5),
        Text(temp, style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget _buildDetailInfo(String title, String value) {
    return Column(
      children: <Widget>[
        Text(title, style: TextStyle(fontSize: 16, color: Colors.black54)),
        SizedBox(height: 5),
        Text(value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}