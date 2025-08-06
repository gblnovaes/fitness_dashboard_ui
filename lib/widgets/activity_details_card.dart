import 'package:fitness_dashboard_ui/data/health_details.dart';
import 'package:fitness_dashboard_ui/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healtDetails = HealthDetails();

    return GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: healtDetails.healthData.length,
      shrinkWrap: true,
      primary: false,
      physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 4.0,
      ),
      itemBuilder: (context, index) => CustomCardWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              healtDetails.healthData[index].icon,
              width: 30,
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                healtDetails.healthData[index].value,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              healtDetails.healthData[index].title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
