// ignore_for_file: avoid_print, avoid_unnecessary_containers, use_super_parameters, sized_box_for_whitespace, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple, useMaterial3: false),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      backgroundColor: Colors.black,
      body: Calc(),
    );
  }
}

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String calc = "";
  double num1 = 0;
  String num_1 = "";
  double num2 = 0;
  String num_2 = "";
  String op = "";
  String char = "";
  String ans = "";
  int op_1 = 0;

  String fmt(double x) {
  if (x == x.toInt()) {
    return x.toInt().toString();   
  }
  return double.parse(x.toStringAsFixed(4)).toString();
}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.all(15),
            width: 600,
            height: 110,

            child: Center(
              child: Text(
                calc,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 35),
              ),
            ),
          ),

          Text(""),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 38, 0, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),

                  onPressed: () {
                    setState(() {
                      if (calc.isNotEmpty && calc.contains("=") == false) {
                        calc = calc.substring(0, calc.length - 1);
                      }
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 50,

                    child: Center(
                      child: Icon(Icons.disabled_by_default_sharp, size: 50),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 38, 0, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      calc = "";
                    });
                  },

                  child: Center(
                    child: Container(
                      width: 50,
                      height: 80,
                      child: Center(
                        child: Text("AC", style: TextStyle(fontSize: 35)),
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 38, 0, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.isNotEmpty &&
                          calc.contains("%") == false &&
                          calc.contains("+") == false &&
                          calc.contains("−") == false &&
                          calc.contains("×") == false &&
                          calc.contains("÷") == false) {
                        calc += "%";
                      }
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 50,
                    child: Center(child: Icon(Icons.percent, size: 50)),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 217, 196, 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    foregroundColor: Colors.black,
                  ),

                  onPressed: () {
                    setState(() {
                      if (calc.isNotEmpty &&
                          calc.contains("÷") == false &&
                          calc.contains("×") == false &&
                          calc.contains("+") == false &&
                          calc.contains("−") == false &&
                          calc.contains("%") == false) {
                        calc += "÷";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("÷", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Text(""),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        calc += "7";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("7", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        calc += "8";
                      }
                    });
                  },
                  child: Center(
                    child: Container(
                      width: 50,
                      height: 80,
                      child: Center(
                        child: Text("8", style: TextStyle(fontSize: 50)),
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        calc += "9";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("9", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 217, 196, 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.isNotEmpty &&
                          calc.contains("÷") == false &&
                          calc.contains("×") == false &&
                          calc.contains("+") == false &&
                          calc.contains("−") == false &&
                          calc.contains("%") == false) {
                        calc += "×";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("×", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(""),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        calc += "4";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("4", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        calc += "5";
                      }
                    });
                  },

                  child: Center(
                    child: Container(
                      width: 50,
                      height: 80,
                      child: Center(
                        child: Text("5", style: TextStyle(fontSize: 50)),
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        calc += "6";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("6", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 217, 196, 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("+") == false &&
                          calc.contains("−") == false &&
                          calc.contains("×") == false &&
                          calc.contains("÷") == false &&
                          calc.isNotEmpty) {
                        calc += "−";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("−", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(""),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        calc += "1";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("1", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        calc += "2";
                      }
                    });
                  },
                  child: Center(
                    child: Container(
                      width: 50,
                      height: 80,
                      child: Center(
                        child: Text("2", style: TextStyle(fontSize: 50)),
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        calc += "3";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("3", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 217, 196, 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.isNotEmpty &&
                          calc.contains("÷") == false &&
                          calc.contains("×") == false &&
                          calc.contains("+") == false &&
                          calc.contains("−") == false &&
                          calc.contains("%") == false) {
                        calc += "+";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("+", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(""),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.isEmpty ||
                          calc.substring(calc.length - 1) == "+" ||
                          calc.substring(calc.length - 1) == "×" ||
                          calc.substring(calc.length - 1) == "÷") {
                        calc += "-";
                      } else if (calc.substring(calc.length - 1) == "−") {
                        calc = calc.substring(0, calc.length - 1);
                        calc += "+";
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("-1", style: TextStyle(fontSize: 35)),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        calc += "0";
                      }
                    });
                  },
                  child: Center(
                    child: Container(
                      width: 50,
                      height: 80,
                      child: Center(
                        child: Text("0", style: TextStyle(fontSize: 50)),
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 35, 35, 33),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.isNotEmpty &&
                          calc.substring(calc.length - 1) != "+" &&
                          calc.substring(calc.length - 1) != "−" &&
                          calc.substring(calc.length - 1) != "-" &&
                          calc.substring(calc.length - 1) != "×" &&
                          calc.substring(calc.length - 1) != "÷" &&
                          calc.substring(calc.length - 1) != "." &&
                          calc.substring(calc.length - 1) != "%") {
                        bool hasPoint = false;

                        for (int i = calc.length - 1; i >= 0; i--) {
                          String c = calc.substring(i, i + 1);

                          if (c == "+" ||
                              c == "−" ||
                              c == "×" ||
                              c == "÷" ||
                              c == "%") {
                            break;
                          }
                          if (c == ".") {
                            hasPoint = true;
                            break;
                          }
                        }

                        if (hasPoint == false) {
                          calc += ".";
                        }
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text(".", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 238, 69, 31),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (calc.contains("=") == false) {
                        num_1 = "";
                        num_2 = "";
                        op = "";
                        op_1 = 0;
                        char = "";

                        for (int i = 0; i < calc.length; i++) {
                          String c = calc[i];

                          bool isOp =
                              c == "+" ||
                              c == "−" ||
                              c == "×" ||
                              c == "÷" ||
                              c == "%";
                          bool isSign =
                              c == "−" &&
                              (i == 0 || "+−×÷%".contains(calc[i - 1]));

                          if (isOp && !isSign) {
                            op_1 = 1;
                            op = c;
                            char = "";
                          } else {
                            char += c;
                            if (op_1 == 0) {
                              num_1 = char;
                            } else {
                              num_2 = char;
                            }
                          }
                        }

                        num1 = double.tryParse(num_1) ?? 0;
                        num2 = double.tryParse(num_2) ?? 0;
                        double sum = num1 + num2;
                        double sub = num1 - num2;
                        double multiply = num1 * num2;
                        double div = num1 / num2;
                        double mod = num1 % num2;

                        switch (op) {
                          case "+":
                            ans = sum.toString();
                            calc = "$num_1 + $num_2 = \n$sum";
                            break;

                          case "−":
                            ans = sub.toString();
                            calc = "$num_1 − $num_2 = \n$sub";
                            break;

                          case "×":
                            ans = multiply.toString();
                            calc = "$num_1 × $num_2 = \n$multiply";
                            break;

                          case "÷":
                            if (num2 == 0) {
                              calc = "Does Not Exist !";
                              ans = "";
                            } else if (num2 != 0) {
                              ans = div.toString();
                              calc = "$num_1 ÷ $num_2 = \n$div";
                              break;
                            }

                          case "%":
                            if (num2 == 0) {
                              calc = "Does Not Exist !";
                              ans = "";
                            } else if (num2 != 0) {
                              ans = mod.toString();
                              calc = "$num_1 % $num_2 = \n$mod";
                              break;
                            }
                        }
                      }
                    });
                  },

                  child: Container(
                    width: 50,
                    height: 80,
                    child: Center(
                      child: Text("=", style: TextStyle(fontSize: 50)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Text(""),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 80,
                  width: 360,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 38, 0, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("ANS", style: TextStyle(fontSize: 50)),

                    onPressed: () {
                      setState(() {
                        if (ans.isNotEmpty) {
                          calc = ans;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
