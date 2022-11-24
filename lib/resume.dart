import 'package:flutter/material.dart';

class resume extends StatefulWidget {
  const resume({Key? key}) : super(key: key);

  @override
  State<resume> createState() => _resumeState();
}

class _resumeState extends State<resume> {
  String? gender = "Male";
  bool learning = false;
  bool reading = false;
  bool writing = false;
  bool coding = false;
  bool dancing = false;
  List countycode = [
    "+91",
    "+93",
    "+355",
    "+213",
    "+1-684",
    "+376",
    "+244",
    "+1-264",
    "+672",
    "+1-268",
    "+54",
    "+374",
    "+297",
    "+61",
    "+43",
    "+994",
    "1-242",
    "+973",
    "+880",
    "1-246",
    "+375",
    "+32",
    "+501",
    "+229",
    "+1-441",
    "+975",
    "591",
    "+387",
    "+267",
    "+55",
    "+246",
    "+1-284",
    "+673",
    "+359",
    "+226",
    "+257",
    "+855",
    "+237",
    "+1",
    "+238",
    "+1-345",
    "+236",
    "+56",
    "+86",
    "+61",
    "+61",
    "+57",
    "+269",
    "+682",
    "+506",
    "+385",
    "+53",
    "+599",
    "+357",
    "+420",
    "+243",
    "+45",
    "+253",
    "+1-767",
    "+1-809",
    "670",
    "593",
    "+20",
    "503",
    "240",
    "291",
    "372",
    "251",
    "500",
    "298",
    "679",
    "358",
    "33",
    "689",
    "241",
    "220",
    "995",
    "49",
    "233",
    "350",
    "30",
    "299",
    "1-473",
    "1-671",
    "502",
    "224",
    "245",
    "592",
    "509",
    "504",
    "852",
    "36",
    "354",
    "62",
    "98"
        "964",
    "353",
    "972",
    "39",
    "225",
    "1-876",
    "81",
    "962",
    "7",
    "254",
    "686",
    "383",
    "965",
    "996",
    "856",
    "371",
    "961",
    "266",
    "231",
    "218",
    "423",
    "370",
    "352",
    "853",
    "389",
    "261",
    "265",
    "60",
    "960",
    "223",
    "356",
    "692",
    "222",
    "230",
    "262",
    "52",
    "691",
    "373",
    "377",
    "976",
    "382",
    "1-664",
    "212",
    "258",
    "95",
    "264",
    "674",
    "977",
    "31",
    "599",
    "687",
    "64",
    "505",
    "227",
    "234",
    "683",
    "850",
    "1-670",
    "47",
    "968",
    "92",
    "680",
    "970",
    "507",
    "675",
    "595",
    "51",
    "63",
    "64",
    "58",
    "351",
    "1-787",
    "974",
    "242",
    "262",
    "40",
    "7",
    "250",
    "590",
    "290",
    "1-869",
    "1-758",
    "590",
    "508",
    "1-784",
    "685",
    "378",
    "239",
    "966",
    "221",
    "381",
    "248",
    "232",
    "65",
    "1-721",
    "421",
    "386",
    "677",
    "252",
    "27",
    "82",
    "211",
    "34",
    "94",
    "249",
    "597",
    "47",
    "268",
    "46",
    "41",
    "963",
    "886",
    "992",
    "225",
    "66",
    "228",
    "690",
    "676",
    "1-868",
    "216",
    "90",
    "993",
    "1-649",
    "688",
    "1-340",
    "256",
    "380",
    "971",
    "44",
    "1",
    "598",
    "998",
    "678",
    "379",
    "58",
    "84",
    "681",
    "212",
    "967",
    "260",
    "263"
  ];
  String pin = "+91";
  TextEditingController txtfname = TextEditingController();
  TextEditingController txtcontact = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtbirthdate = TextEditingController();
  TextEditingController txtoccupation = TextEditingController();
  TextEditingController txtlanguages = TextEditingController();
  TextEditingController txtpassed = TextEditingController();
  TextEditingController txtskill = TextEditingController();
  TextEditingController txtother = TextEditingController();
  String? fname,
      contact,
      email,
      birthdate,
      occupation,
      languagues,
      passed,
      skill,
      other;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade500,
          centerTitle: true,
          title: Text(
            "Resume",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Personal Information :-",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 15,
                ),
                get("Full Name"),
                SizedBox(
                  height: 10,
                ),
                box("Full Name", Icons.edit, Text(""), TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                get("Contact Number"),
                SizedBox(
                  height: 10,
                ),
                box(
                    "Contact Number",
                    Icons.phone,
                    DropdownButton(
                      items: countycode
                          .map((e) => DropdownMenuItem(
                                child: Text("$e"),
                                value: "$e",
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          pin = value as String;
                        });
                      },
                      value: pin,
                    ),
                    TextInputType.phone),
                SizedBox(
                  height: 15,
                ),
                get("Email"),
                SizedBox(
                  height: 10,
                ),
                box("Email", Icons.email_outlined, Text(""),
                    TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                get("Gendar"),
                Row(children: [
                  Radio(
                      value: "MAle",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value as String;
                        });
                      }),
                  information("Male"),
                  Radio(
                      activeColor: Colors.blue,
                      value: "Female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value as String;
                        });
                      }),
                  information("female")
                ]),
                SizedBox(
                  height: 15,
                ),
                get("Birth Date"),
                SizedBox(
                  height: 10,
                ),
                box("DD/MM/YYYY", Icons.calendar_month, Text(""),
                    TextInputType.phone),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Eduction & Skills :-",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 15,
                ),
                get("Occupation"),
                SizedBox(
                  height: 10,
                ),
                box("Occupation", Icons.work, Text(""), TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                get("Languages"),
                SizedBox(
                  height: 10,
                ),
                box("Languages", Icons.language, Text(""), TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                get("Recently Passed"),
                SizedBox(
                  height: 10,
                ),
                box("Recently Passed", Icons.school, Text(""),
                    TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                get("Skill"),
                SizedBox(
                  height: 10,
                ),
                box("Skill", Icons.computer, Text(""), TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                get("Other"),
                SizedBox(
                  height: 10,
                ),
                box("Other", Icons.edit, Text(""), TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                get("Hobbies"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: learning,
                        onChanged: (value) {
                          setState(() {
                            learning = value!;
                          });
                        }),
                    information("Learning"),

                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: reading,
                        onChanged: (value) {
                          setState(() {
                            reading = value!;
                          });
                        }),
                    information("Reading"),
                  ],
                ),

                Row(
                  children: [
                    Checkbox(
                        value: writing,
                        onChanged: (value) {
                          setState(() {
                            writing = value!;
                          });
                        }),
                    information("Writing"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: coding,
                        onChanged: (value) {
                          setState(() {
                            coding = value!;
                          });
                        }),
                    information("Coding"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: dancing,
                        onChanged: (value) {
                          setState(() {
                            dancing = value!;
                          });
                        }),
                    information("Dancing"),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      'f',
                      arguments: [
                        fname,
                        contact,
                        email,
                        birthdate,
                        occupation,
                        languagues,
                        passed,
                        skill,
                        other
                      ],
                    );
                  },
                  child: Text("Next"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get(String T) {
    return Text(
      "$T",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  Widget information(String data) {
    return Text(
      "$data",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget box(String b, icon, Widget prefix, input) {
    return Container(
      height: 50,
      width: double.infinity,
      child: TextField(
        cursorColor: Colors.indigo.shade500,
        keyboardType: input,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          label: Text("$b"),
          prefix: prefix,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
