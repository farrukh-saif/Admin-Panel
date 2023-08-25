import 'package:admin_panel/widgets/insight_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Key Insights:",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                InsightCard(
                    insightNumber: "0",
                    insightTitle: "Active Users",
                    backgroundColor: Colors.deepPurpleAccent),
                const SizedBox(
                  width: 30,
                ),
                InsightCard(
                  insightNumber: "0",
                  insightTitle: "Total Users",
                  backgroundColor: Colors.deepOrangeAccent,
                ),
                const SizedBox(
                  width: 30,
                ),
                InsightCard(
                  insightNumber: "0",
                  insightTitle: "Total Orders",
                  backgroundColor: Colors.indigoAccent,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Table:",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black26),
                  ),
                  child: const Icon(Icons.download),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black26),
                  ),
                  child: const Icon(Icons.replay_outlined),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                color: Colors.black12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
