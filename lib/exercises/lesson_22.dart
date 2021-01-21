import 'package:flutter/material.dart';

class MyHomePage22E1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 22 - E1"),
      ),
      body: _mySimpleDialog(),
    );
  }

  Widget _mySimpleDialog() {
    return SimpleDialog(
      title: Text(
        "Simple Dialog Title",
        textAlign: TextAlign.center,
      ),
      children: [
        Divider(),
        Text(
          "Children Text",
          textAlign: TextAlign.center,
        ),
      ],
      titlePadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class MyHomePage22E2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 22 - E2"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              myShowAlertDialog(context);
            },
            child: Text("Open Alert Dialog from void Function"),
          ),
        ),
      ),
    );
  }

  void myShowAlertDialog(BuildContext context) {
    var dialog = SimpleDialog(
      title: Text(
        "Simple Dialog Title",
        textAlign: TextAlign.center,
      ),
      children: [
        Divider(),
        Text(
          "Children Text",
          textAlign: TextAlign.center,
        ),
      ],
      titlePadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      },
    );
  }
}

class MyHomePage22E3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 22 - E3"),
      ),
      body: _myAlertDialog(),
    );
  }

  Widget _myAlertDialog() {
    Widget buttonCancel = FlatButton(
      onPressed: () {
        print("Cancel");
      },
      child: Text("Cancel"),
    );
    Widget buttonConfirm = FlatButton(
      onPressed: () {
        print("Confirm");
      },
      child: Text("Confirm"),
    );

    AlertDialog basicAlertDialog = AlertDialog(
      title: Text("Basic Alert Dialog Title"),
      content: Text("Content"),
      actions: [
        buttonConfirm,
        buttonCancel,
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10,
    );
    return basicAlertDialog;
  }
}
