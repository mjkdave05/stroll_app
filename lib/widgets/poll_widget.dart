import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/bonfire_view_model.dart';

class PollWidget extends StatelessWidget {
  const PollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<BonfireViewModel>(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
                  '"Mine is definitely the peace in the morning."',
                style: TextStyle(
                  color: Color(0xFFCCC8FF),
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),
              )),
          SizedBox(height: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Poll Options in Grid View (2 per row)
                Expanded(
                  child: GridView.builder(
                    itemCount: viewModel.pollOptions.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 options per row
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                      childAspectRatio: 2.8, // Adjusted for proper option layout
                    ),
                    padding: const EdgeInsets.all(16.0),
                    itemBuilder: (context, index) {
                      final option = viewModel.pollOptions[index];
                      final isSelected = option.isSelected;

                      return GestureDetector(
                        onTap: () => viewModel.selectOption(index),
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[900], // Background of all options is grey
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: isSelected ? Color(0xFF7A75B8) : Colors.grey[700]!,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            children: [
                              // Circle for A, B, C, D with background color when selected
                              Container(
                                width: 24.0,
                                height: 24.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isSelected ? Color(0xFF7A75B8) : Colors.transparent, // Fill background if selected
                                  border: Border.all(
                                    color: isSelected ? Color(0xFF7A75B8) : Colors.grey[500]!,
                                    width: 2.0,
                                  ),
                                ),
                                child: Text(
                                  '${String.fromCharCode(65 + index)}', // A, B, C, D
                                  style: TextStyle(
                                    color: isSelected ? Colors.white : Colors.grey[500]!, // White text when selected
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12.0),
                              // Poll Option Text
                              Expanded(
                                child: Text(
                                  option.option,
                                  style: TextStyle(
                                    color: isSelected ? Colors.white : Colors.grey[300], // Text color for selected and unselected
                                    fontSize: 14.0,
                                    height: 1.3, // Line height for wrapping text
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Instruction Text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pick your option.',
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 12.0,
                              ),
                            ),
                            Text(
                              'See who has a similar mind.',
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.0), // Spacer between text and icons
                      // Microphone Icon
                      Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF7A75B8),
                            width: 2.0,
                          ),
                          color: Color(0xFF1A1A1A),
                        ),
                        child: Icon(
                          Icons.mic_outlined,
                          color: Color(0xFF7A75B8),
                          size: 26.0,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      // Send Icon
                      Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF7A75B8),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                          size: 24.0,
                        ),
                      ),
                    ],
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