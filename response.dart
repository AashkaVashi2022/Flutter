class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Map<String, dynamic> data;

  @override
  void initState() {
    super.initState();
    fetchData().then((value) {
      setState(() {
        data = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return CircularProgressIndicator();
    } else {
      return Text("Data: $data");
    }
  }
}
