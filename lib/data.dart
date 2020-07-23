import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_list.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import 'package:intl/intl.dart';
import 'constants.dart';

class PersonalData extends StatefulWidget {
  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {

  DateTime _currentdate = new DateTime.now();
  _selectdate(BuildContext context) async{
    final DateTime _seldate = await showDatePicker(
        context: context,
        initialDate: _currentdate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        builder: (context,child){
          return SingleChildScrollView(child: child,);
        }
    );
    if(_seldate!=null){
      setState(() {
        _currentdate = _seldate;
      });
    }
  }

  String _gender="";

  void _pilih(String value)
  {setState(() {
    _gender=value;
  });}

  List<String> _natioality = [
    "Indonesia",
    "Japan",
    "Malay",
    "China",
  ];

  List<String> _status = ["Single", "Married"];

  List<String> _education = [
    "Elementary School",
    "Middle School",
    "Hight School",
    "Associate (D3)",
    "Bachelor (S1)",
    "Master (S2)",
    "Doctoral (S3)",
  ];

  List<String> _religion = [
    "Moslem",
    "Christian Protestant",
    "Catholic Christian",
    "Buddha",
    "Hindu",
    "Other"
  ];

  List<String> _identity = [
    "KTP",
    "SIM",
    "Password",
  ];

  List<String> _occupation = ["1.0", "2.0", "3.0", "4.0", "5.0", "6.0", "7.0"];

  List<String> _income = ["1.0", "2.0", "3.0", "4.0", "5.0", "6.0", "7.0"];

  List<String> _source = ["1.0", "2.0", "3.0", "4.0", "5.0", "6.0", "7.0"];

  List<String> _investment = ["1.0", "2.0", "3.0", "4.0", "5.0", "6.0", "7.0"];

  int selectedNationality = 0;
  int selectedIdentity = 0;
  int selectedStatus = 0;
  int selectedEducation = 0;
  int selectedReligion = 0;
  int selectedOccupation = 0;
  int selectedIncome = 0;
  int selectedSource = 0;
  int selectedInvestment = 0;

  DirectSelectItem<String> getDropDownMenuItem(String value) {
    return DirectSelectItem<String>(
        itemHeight: 56,
        value: value,
        itemBuilder: (context, value) {
          return Text(value);
        });
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    String  _formatdate = new DateFormat.yMMMd().format(_currentdate);
    SizeConfig().init(context);
    return Scaffold(
      key: scaffoldKey,
      body: DirectSelectContainer(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(),
                        child: Text(
                          'Sales Reference',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(),
                        child: Text(
                          'Personal Information',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      TextFieldDefault(
                        text: ('User Name'),
                      ),SizedBox(height: 20.0),
                      TextFieldDefault(
                        text: ('First Name'),
                      ),SizedBox(height: 20.0),
                      TextFieldDefault(
                        text: ('Middle Name'),
                      ),SizedBox(height: 20.0),
                      TextFieldDefault(
                        text: ('Last Name'),
                      ), SizedBox(height: 20.0),

                      MealSelector(data: _natioality, label: "Natioality"),
                      SizedBox(height: 20.0),
                      MealSelector(data: _identity, label: "Identity Type"),
                      SizedBox(height: 20.0),
                      TextFieldDefault(
                        text: ('Identity Number'),
                      ),SizedBox(height: 20.0),
                      TextFieldDefault(
                        text: ('$_formatdate'),
                        icon: Icons.calendar_today
                      ),SizedBox(height: 20.0),
                      MealSelector(data: _status, label: "Status"),
                      SizedBox(height: 20.0),
                      TextFieldDefault(
                        text: ('Place of Birth'),
                      ),SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.symmetric(),
                        child: Text(
                          'Gender',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      RadioListTile(
                        value: "Male",
                        title: Text("Male"),
                        groupValue: _gender,
                        onChanged: (String value){
                          _pilih(value);
                          },
                        activeColor: kSecondaryColor,
                      ),
                      RadioListTile(value: "Female", title: Text("Female"), groupValue: _gender, onChanged: (String value) {_pilih(value);}, activeColor: kSecondaryColor,),
                      MealSelector(data: _education, label: "Education"),
                      SizedBox(height: 20.0),
                      MealSelector(data: _religion, label: "Religion"),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.symmetric(),
                        child: Text(
                          'Occupation Info',
                          style: TextStyle(
                            fontSize: 14,
                            color:kPrimaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      MealSelector(data: _occupation, label: "Occupation"),
                      SizedBox(height: 20.0),
                      MealSelector(data: _income, label: "Income"),
                      SizedBox(height: 20.0),
                      MealSelector(data: _source, label: "Source"),
                      SizedBox(height: 20.0),
                      MealSelector(data: _investment, label: "Investment"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class MealSelector extends StatelessWidget {
  final buttonPadding = const EdgeInsets.fromLTRB(0, 8, 0, 0);

  final List<String> data;
  final String label;

  MealSelector({@required this.data, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: AlignmentDirectional.centerStart,
            margin: EdgeInsets.only(left: 4),
            child: Text(label)),
        Padding(
          padding: buttonPadding,
          child: Container(
            decoration: _getShadowDecoration(),
            child: Card(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                            child: DirectSelectList<String>(
                              values: data,
                              defaultItemIndex: 0,
                              itemBuilder: (String value) =>
                                  getDropDownMenuItem(value),
                              focusedItemDecoration: _getDslDecoration(),
                            ),
                            padding: EdgeInsets.only(left: 12))),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: _getDropdownIcon(),
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }
  DirectSelectItem<String> getDropDownMenuItem(String value) {
    return DirectSelectItem<String>(
        itemHeight: SizeConfig.blockVertical * 7,
        value: value,
        itemBuilder: (context, value) {
          return Text(value);
        });
  }

  _getDslDecoration() {
    return BoxDecoration(
      border: BorderDirectional(
        bottom: BorderSide(width: 1, color: Colors.black12),
        top: BorderSide(width: 1, color: Colors.black12),
      ),
    );
  }

  BoxDecoration _getShadowDecoration() {
    return BoxDecoration(
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.black.withOpacity(0.06),
          spreadRadius: 4,
          offset: new Offset(0.0, 0.0),
          blurRadius: 15.0,
        ),
      ],
    );
  }

  Icon _getDropdownIcon() {
    return Icon(
      Icons.unfold_more,
      color: Colors.black12,
    );
  }
}

