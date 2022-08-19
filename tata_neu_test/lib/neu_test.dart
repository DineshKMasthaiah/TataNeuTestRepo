import 'package:flutter/material.dart';

class NeuHomeWidget extends StatefulWidget {
  const NeuHomeWidget({Key? key}) : super(key: key);

  @override
  State<NeuHomeWidget> createState() => _NeuHomeWidgetState();
}

class _NeuHomeWidgetState extends State<NeuHomeWidget> {
  @override
  Widget build(BuildContext context) {

    ///Question 1:Refactor the code below so that the children will wrap to the next line when
    /// the display width is small for them to fit.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Neu coding test"),
      ),
      body: Wrap( ///Wrap widget will move the children to next line if there is not enough space to render them all in single line
        children: const [
          Chip(label: Text("I")),
          Chip(label: Text("am")),
          Chip(label: Text("looking")),
          Chip(label: Text("for")),
          Chip(label: Text("a")),
          Chip(label: Text("job")),
          Chip(label: Text("and")),
          Chip(label: Text("I")),
          Chip(label: Text("need")),
          Chip(label: Text("a")),
          Chip(label: Text("job")),
        ],
      ),
    );
  }

  ///Question 2:Identify the problem in the following code block and correct it.
  String longOperationMethod() {
    ///method name should have started with a lower case. so corrected it.
    var counting = 0;

    ///If we are expecting this method to run for long time
    for (var i = 1; i <= 1000000000; i++) {
      counting = i;
    }
    return "$counting! times I print the value!";

    ///NOT SURE if there should be print statement with in for loop as per the message printed here.
  }

  ///Question 3:In the below code, list1 declared with var, list2 with final and list3 with const.
  /// What is the difference between these lists? Will the last two lines compile?
  void listQuestion() {
    var list1 = ['I', 'Love', 'Flutter'];
    final list2 = list1;
    list2[2] = "Dart";
    //const list3 = list1;

    ///This line doesn't compile as list1 is not a constant reference (where as list3 is). so, list1 can be assigned with any of the new list types
    ///So, variables declared with const should be assigned with constant values (compile time binding)
  }
}
