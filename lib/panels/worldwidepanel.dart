import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {

  final Map worldData;

  const WorldWidePanel({Key key, this.worldData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2),
        children: <Widget>[
          Statuspanel(
            title: 'Confirmed',
            panelColor: Colors.red[900],
            textColor: Colors.grey[200],
            borderColor: Colors.redAccent[400],
            count: worldData['cases'].toString(),
          ),
          Statuspanel(
            title: 'Active',
            panelColor: Color(0xff1b5e20),
            textColor: Colors.grey[200],
            borderColor: Colors.green[300],
            count: worldData['active'].toString(),
          ),
          Statuspanel(
            title: 'Recovered',
            panelColor: Color(0xff283593),
            textColor: Colors.grey[200],
            borderColor: Colors.blue[400],
            count: worldData['recovered'].toString(),
          ),
          Statuspanel(
            title: 'Affected Countries',
            panelColor: Colors.amber[900],
            textColor: Colors.grey[200],
            borderColor: Colors.amber[700],
            count: worldData['affectedCountries'].toString(),
          ),
          Statuspanel(
            title: 'Tests',
            panelColor: Colors.pink[600],
            textColor: Colors.grey[200],
            borderColor: Colors.pink[200],
            count: worldData['tests'].toString(),
          ),
          Statuspanel(
            title: 'Deaths',
            panelColor: Colors.blueGrey[800],
            textColor: Colors.grey[200],
            borderColor: Colors.grey[500],
            count: worldData['deaths'].toString(),
          ),
        ],
      ),
    );
  }


}

class Statuspanel extends StatelessWidget {

  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;
  final Color borderColor;

  const Statuspanel({Key key, this.panelColor, this.textColor, this.title, this.count,this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: panelColor,
        border: Border.all(
          color: borderColor,
          width: 3,
        ),
        borderRadius: BorderRadius.only(topRight: Radius.circular(15.0),bottomLeft: Radius.circular(15.0),topLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0)),
      ),
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(12.0),
      height: 80,


      child: Column(
        children: <Widget>[
          Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize:16,color: textColor),),Text(count,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey[400]),),
        ],
      ),
    );
  }
}

