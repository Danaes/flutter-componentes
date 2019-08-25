import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  int _valorSlider = 100;
  bool _valorCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            )
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider.toDouble(),
      min: 10,
      max: 400,
      onChanged: ( _valorCheckBox ) ? null : ( value ){
        setState(() {
          _valorSlider = value.round(); 
        });
      },
    );

  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://images8.alphacoders.com/100/thumb-1920-1003220.png'),
      width: _valorSlider.toDouble(),
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _valorCheckBox,
      onChanged: ( value ){
        setState(() {
          _valorCheckBox = value;
        }); 
      },
      activeColor: Colors.indigoAccent,
    );
  }

  Widget _crearSwitch() {
   return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _valorCheckBox,
      onChanged: ( value ){
        setState(() {
          _valorCheckBox = value;
        }); 
      },
      activeColor: Colors.indigoAccent,
    );
  }
}