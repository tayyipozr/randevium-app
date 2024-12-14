import 'package:flutter/material.dart';

class CreateAppointmentPage extends StatefulWidget {
  const CreateAppointmentPage({super.key});

  @override
  State<CreateAppointmentPage> createState() => _CreateAppointmentPageState();
}

class _CreateAppointmentPageState extends State<CreateAppointmentPage> {
  final PageController _pageController = PageController();
  int _currentStep = 0;

  final List<String> steps = [
    "Step 1: Introduction",
    "Step 2: Details",
    "Step 3: Confirmation",
    "Step 4: Completion",
  ];

  void _goToStep(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              setState(() {
                _currentStep = index;
              });
            },
            itemCount: steps.length,
            itemBuilder: (context, index) {
              return StepPage(
                _goToStep,
                index: index,
              );
            },
          ),
          StepperColumn(
            currentStep: _currentStep,
            steps: steps,
            onStepTapped: _goToStep,
            title: '',
          ),
        ],
      ),
    );
  }
}

class StepperColumn extends StatelessWidget {
  final int currentStep;
  final List<String> steps;
  final Function(int) onStepTapped;
  final String title;

  const StepperColumn(
      {super.key, required this.currentStep, required this.steps, required this.onStepTapped, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(steps.length, (index) {
          final isCurrentStep = currentStep == index;
          final isCompleted = currentStep > index;

          return Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: isCurrentStep ? 40 : 24,
                height: isCurrentStep ? 40 : 24,
                decoration: BoxDecoration(
                  color: isCurrentStep
                      ? Colors.blue
                      : isCompleted
                          ? Colors.green
                          : Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: isCurrentStep ? 16 : 12,
                    ),
                  ),
                ),
              ),
              if (index < steps.length - 1)
                Container(
                  width: 2,
                  height: screenHeight / steps.length - 50,
                  color: isCurrentStep || isCompleted ? Colors.blue : Colors.grey,
                ),
            ],
          );
        }),
      ),
    );
  }
}

class StepPage extends StatelessWidget {
  final int index;
  final Function(int) onStepTapped;

  const StepPage(this.onStepTapped, {super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50),
      child: Builder(
        builder: (context) {
          switch (index) {
            case 0:
              return CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 7)),
                onDateChanged: (date) {
                  onStepTapped.call(1);
                },
              );
            case 1:
              return const TimePickerDialog(
                initialTime: TimeOfDay(hour: 12, minute: 0)
              );
            default:
              return const SizedBox(); // Return an empty widget if no case matches
          }
        },
      ),
    );
  }
}