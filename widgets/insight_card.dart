import 'package:flutter/material.dart';

class InsightCard extends StatefulWidget {
  const InsightCard({
    Key? key,
    required this.insightNumber,
    required this.insightTitle,
    this.backgroundColor = Colors.deepOrangeAccent,
  }) : super(key: key);

  final String insightNumber;
  final String insightTitle;
  final Color backgroundColor;

  @override
  InsightCardState createState() => InsightCardState();
}

class InsightCardState extends State<InsightCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: SizedBox(
        height: 180,
        width: 180,
        child: Card(
          elevation: _isHovering ? 20 : 1, // Change elevation on hover
          color: widget.backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.insightNumber,
                  style: TextStyle(fontSize: _isHovering ? 31 : 30)),
              const SizedBox(height: 5),
              Text(widget.insightTitle,
                  style: TextStyle(fontSize: _isHovering ? 19 : 18)),
            ],
          ),
        ),
      ),
    );
  }
}
