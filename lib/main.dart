import 'package:exercises_app/exercises/lesson_21.dart';
import 'package:exercises_app/exercises/lesson_22.dart';
import 'package:exercises_app/exercises/lesson_24.dart';

/// Inizialmente importiamo la libreria di Flutter, nota anche come
/// Material Component, necessaria per lo sviluppo dell'app.
import 'package:flutter/material.dart';

/// Successivamente troviamo il punto main(), questo rappresenta
/// il punto d'ingresso della nostra app.
void main() {
  runApp(MyApp());
}

/// Una volta eseguito il codice, il compilatore creerà un'istanza
/// nella classe MyApp e la passerà alla funzione runApp che
/// eseguirà l'applicazione.

/// La classe MyApp è utilizzata per inizializzare l'applicazione
/// e per impostare il tema, il colore e la schermata iniziale
/// ed estende a sua volta la classe StatelessWidget
/// che rende l'app stessa un widget.
/// In Flutter, infatti, quasi tutto è un widget, inclusi allineamento,
/// riempimento e layout.
/// Il nome della classe MyApp può essere modificato
/// durante lo sviluppo dell'applicazione.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // theme: myCustomThemeDataE3(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      // home: MyHomePage22E3(),
    );
  }
}

/// Inoltre al suo interno viene invocato il costruttore
/// della classe MyHomePage definito così:
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/// Questa classe si occupa di inizializzare il codice per la prima schermata
/// ed estende la classe StatefulWidget in quanto gli elementi
/// in essa contenuti cambieranno in base alle azioni compiute dall'utente.
/// In particolare, viene sovrascritto il metodo createState()
/// per restituire un istanza appena creata dalla sottoclasse State associata,
/// in questo caso _MyHomePageState.
/// In particolare il metodo createState() crea lo stato mutabile
/// per questo widget in una determinata posizione dell'albero.

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
