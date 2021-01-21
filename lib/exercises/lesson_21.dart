import 'package:flutter/material.dart';

class MyHomePage21E1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 21 - E1"),
      ),
      body: Container(
        child: Center(
          child: Text("Default Scaffold Body"),
        ),
      ),
      floatingActionButton: _myBasicFAB(),

      /// Posizione FAB.
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Widget _myBasicFAB() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        print("Basic FAB");
      },
      elevation: 10,
    );
  }
}

class MyHomePage21E2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 21 - E2"),
      ),
      body: Container(
        child: Center(
          child: Text("Default Scaffold Body"),
        ),
      ),
      floatingActionButton: _myBasicFABMini(),

      /// Posizione FAB.
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Widget _myBasicFABMini() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        print("Basic FAB Mini");
      },
      elevation: 10,

      /// Size.
      mini: true,
    );
  }
}

class MyHomePage21E3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 21 - E3"),
      ),
      body: Container(
        child: Center(
          child: Text("Default Scaffold Body"),
        ),
      ),
      floatingActionButton: _myBasicFABCustomShape(),

      /// Posizione FAB.
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Widget _myBasicFABCustomShape() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        print("Basic FAB Custom Shape");
      },
      elevation: 10,

      /// Custom Shape.
      shape: RoundedRectangleBorder(),
    );
  }
}

class MyHomePage21E4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 21 - E4"),
      ),
      body: Container(
        child: Center(
          child: Text("Default Scaffold Body"),
        ),
      ),
      floatingActionButton: _myExtendFAB(),

      /// Posizione FAB.
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Widget _myExtendFAB() {
    /// Questo costruttore, FloatingActionButton.extended(), ci permette
    /// di creare un FAB con la forma di uno StadiumBorder.
    return FloatingActionButton.extended(
      icon: Icon(Icons.email),
      label: Text("New Email"),
      onPressed: () {
        print("Extend FAB");
      },
      elevation: 10,
    );
  }
}

class MyHomePage21E5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 21 - E5"),
      ),
      body: Container(
        child: Center(
          child: Text("Default Scaffold Body"),
        ),
      ),
      floatingActionButton: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        SnackBar mySnackBar = SnackBar(
          content: Text("New Item Add!"),
          action: SnackBarAction(
            label: "CLOSE",
            textColor: Colors.red,
            onPressed: () {
              print("SnackBar CLOSE");
            },
          ),
          duration: Duration(seconds: 5),

          /// Posizione e comportamento SnackBar.
          behavior: SnackBarBehavior.floating,
          elevation: 5,
        );
        Scaffold.of(context).showSnackBar(mySnackBar);
      },
    );
  }
}
