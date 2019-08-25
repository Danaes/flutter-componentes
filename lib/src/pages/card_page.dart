import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Card Page'), ),
      body: ListView(
        padding: EdgeInsets.all( 10.0 ),
        children: <Widget>[ 
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
         ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(

        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(

                child: Text('Cancelar'),
                onPressed: (){},

              ),
              FlatButton(

                child: Text('Ok'),
                onPressed: (){},

              ),
            ],
          )
        ],

      ),

    );

  }

  Widget _cardTipo2() {

    final card = Container(
      
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://www.nationalgeographic.com/content/dam/travel/rights-exempt/2019-travel-photo-contest/epic-landscapes/2019-travel-photo-contest-epic-landscapes035.ngsversion.1555645554283.adapt.1900.1.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo ni idea de que poner')
          )
        ],
      ),

    );

    return Container( 
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow( color: Colors.black26, blurRadius: 10.0, spreadRadius: 2.0, offset: Offset( 2.0, 10.0 ))
        ],
      ),
    );

  }
}