import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../../constants.dart';

class Report2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Report - Historical Transaction")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
          children: <Widget>[
            Material(
                child: InkWell(
                  onTap: () {
                    SearchField.exit(context);
                  },
                  child: SearchBtn(),
                )
            ),
          ],
        ),
        )
      )
    );
  }
}

class SearchField{
  static exit(context) => showDialog(
      context: context,
      builder: (context) => Field()
  );
}

class Field extends StatefulWidget {
  @override
  _FieldState createState() => _FieldState();
}

Contact newContact = new Contact();

class _FieldState extends State<Field> {

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));



  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _banks = <String>['', 'Bank1', 'Bank2', 'Bank3', 'Bank4'];
  String _bank = '';


  DateTime _date = DateTime.now();
  Future <Null> _selectDate (BuildContext context) async{
    DateTime _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(DateTime.now().year-20),
      lastDate: DateTime(DateTime.now().year+20),
    );
    if(_datePicker != null && _datePicker != _date){
      setState(() {
        _date = _datePicker;
      });
    }
  }

  DateTime _dateTo = DateTime.now().add(Duration(days: 7));
  Future <Null> _selectDateTo (BuildContext context) async{
    DateTime _datePickerTo = await showDatePicker(
      context: context,
      initialDate: _dateTo,
      firstDate: DateTime(DateTime.now().year-20),
      lastDate: DateTime(DateTime.now().year+20),
    );
    if(_datePickerTo != null && _datePickerTo != _dateTo){
      setState(() {
        _dateTo = _datePickerTo;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
    height: SizeConfig.blockVertical * 60,
    decoration: BoxDecoration(
        color: kBackgroundColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Column(
      children: <Widget>[
        Container(
          child: Padding(padding: const EdgeInsets.all(25.0),
            child: Text("Historical Transaction \n \n Search Filter", style: TextStyle(color: kBackgroundColor), textAlign: TextAlign.center,),
          ),
          width: double.infinity,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Product", style: TextStyle(color: kTextColor)),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: FormField(
                builder: (FormFieldState state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      fillColor: kPrimaryColor,
                      hintText: 'Select Bank',
                      labelText: 'Bank',
                    ),
                    isEmpty: _bank == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton(
                        value: _bank,
                        isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            newContact.bank = newValue;
                            _bank = newValue;
                            state.didChange(newValue);
                          });
                        },
                        items: _banks.map((String value) {
                          return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                readOnly: true,
                onTap: (){
                  setState(() {
                    _selectDate(context);
                  });
                },
                decoration: InputDecoration(
                  labelText: "From",
                  suffixIcon: Icon(Icons.calendar_today),
                  hintText: (_date.toString()),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  fillColor: kPrimaryColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                readOnly: true,
                onTap: (){
                  setState(() {
                    _selectDateTo(context);
                  });
                },
                decoration: InputDecoration(
                  labelText: "To",
                  suffixIcon: Icon(Icons.calendar_today),
                  hintText: (_dateTo.toString()),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  fillColor: kPrimaryColor,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: SizeConfig.blockHorizontal * 90,
                    height: SizeConfig.blockVertical * 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Material(
                        borderRadius: BorderRadius.circular(10),
                        child: RaisedButton(
                          color: kAccButton,
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: Center(
                            child: new Text("View Report",
                              style: TextStyle(
                                  color: kBackgroundColor
                              ),
                            ),
                          ),
                        )
                    ),
                  ),
                )
            )
          ],
        ),
      ],
    ),
  );
}

class Contact {
  String bank = '';
}


