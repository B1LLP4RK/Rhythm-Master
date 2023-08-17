import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PolyRhythmPage(
        initialBeat: 4,
      ),
      title: 'Rhythm Master',
    );
  }
}

class PolyRhythmPage extends StatefulWidget {
  final int initialBeat;
  const PolyRhythmPage({super.key, required this.initialBeat});

  @override
  State<PolyRhythmPage> createState() => _PolyRhythmPageState();
}

class _PolyRhythmPageState extends State<PolyRhythmPage> {
  int bpm = 60;
  late TextEditingController _firstBeatController;
  late TextEditingController _secondBeatController;
  late int firstBeatNo;
  late int secondBeatNO;

  @override
  void initState() {
    super.initState();
    _firstBeatController =
        TextEditingController(text: widget.initialBeat.toString());
    _secondBeatController =
        TextEditingController(text: widget.initialBeat.toString());
  }

  @override
  void dispose() {
    _firstBeatController.dispose();
    _secondBeatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PolyRhythm'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: TextField(
                        controller: _firstBeatController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'No. of beats',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: TextField(
                        controller: _secondBeatController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'No. of beats',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text('hello'),
            ),
          ],
        ),
      ),
    );
  }
}
