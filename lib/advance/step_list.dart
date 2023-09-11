import 'package:flutter/material.dart';
import '../model/step.dart';

class StepList extends StatefulWidget {
  final List<StepEx> steps;

  const StepList({super.key, required this.steps});

  @override
  State<StepList> createState() => _StepListState(steps: steps);
}

class _StepListState extends State<StepList> {
  final List<StepEx> _steps;

  _StepListState({required List<StepEx> steps}) : _steps = steps;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
        expansionCallback: (int index, bool isExpand) {
          setState(() {
            _steps[index].isExpandable = isExpand;
          });
        },
        children: _steps.map<ExpansionPanel>((StepEx stepEx) {
          return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(stepEx.title),
                );
              },
              body: ListTile(
                title: Text(stepEx.body),
              ),
              isExpanded: stepEx.isExpandable);
        }).toList());
  }
}
