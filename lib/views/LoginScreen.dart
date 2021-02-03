import 'package:flutter/material.dart';
import 'package:yowl/config/Palette.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _renemberMe = false;

  Widget _buildPhoneTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Téléphone",
          style: TextStyle(
            color: Palette.YowlBlue,
            fontFamily: 'Marianne',
            fontSize: 10.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 45.0,
          width: 250.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(color: Palette.YowlBlue),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.phone,
                color: Palette.YowlBlue,
              ),
              hintText: "Ajouter votre téléphone",
              hintStyle: TextStyle(color: Palette.YowlBlue, fontFamily: 'Marianne'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Mot de passe",
          style: TextStyle(
            color: Palette.YowlBlue,
            fontFamily: 'Marianne',
            fontSize: 10.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 45.0,
          width: 250.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Palette.YowlBlue),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Palette.YowlBlue,
              ),
              hintText: "Ajouter votre téléphone",
              hintStyle: TextStyle(color: Palette.YowlBlue, fontFamily: 'Marianne'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      height: 50.0,
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Mot de passe oublié'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Mot de passe oublié ?',
          style: TextStyle(color: Palette.YowlBlue, fontFamily: 'Marianne'),
        ),
      ),
    );
  }

  Widget _buildRenemberMe() {
  return Container(
    height: 30.0,
    child: Row(
      children: <Widget>[
        Theme(
          data: ThemeData(unselectedWidgetColor: Palette.YowlBlue),
          child: Checkbox(
            value: _renemberMe,
            checkColor: Colors.green,
            activeColor: Palette.YowlBlue,
            onChanged: (value) {
              setState(() {
                _renemberMe = value;
              });
            },
          ),
        ),
        Text(
          "Se souvenir de moi",
          style: TextStyle(color: Palette.YowlBlue, fontFamily: 'Marianne' ,fontSize: 12.0,),
        ),
      ],
    ),
  );
  }

  Widget _buildLoginBtn() {
    return Container(
      width: 200.0,
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print("Bouton Connexion activé"),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Palette.YowlBlue,
        child: Text(
          'CONNEXION',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lemon Milk',
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: 600.0,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    "Se Connecter",
                    style: TextStyle(
                      color: Palette.YowlBlue,
                      fontFamily: 'Marianne',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                SizedBox(height: 30.0),
                _buildPhoneTF(),
                SizedBox(height: 30.0,),
                _buildPasswordTF(),
                _buildForgotPasswordBtn(),
                _buildRenemberMe(),
                _buildLoginBtn(),
                Column(
                  children: <Widget>[
                    Text(
                      '- OR -',
                      style: TextStyle(
                        color: Palette.YowlBlue,
                        fontSize: 15.0
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      "S'inscrire",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Palette.YowlBlue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}