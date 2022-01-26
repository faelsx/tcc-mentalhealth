import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';
import 'package:mentalhealth_app/shared/themes/widgets/lobby/message_widget.dart';
import 'package:mentalhealth_app/shared/themes/widgets/lobby/messagebar_widget.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class LobbyPage extends StatefulWidget {
  const LobbyPage({Key? key}) : super(key: key);

  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  final Stream<QuerySnapshot> message = FirebaseFirestore.instance
      .collection('messages')
      .orderBy('sendAt', descending: true)
      .snapshots();

  final rnd = math.Random();
  Color getRandomColor() => Color(rnd.nextInt(0xffffffff));

  late Color color = getRandomColor();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            MenuBar(),
            Padding(
              padding: const EdgeInsets.only(top: 29, bottom: 14),
              child: Text(
                "Chat",
                style: AppTextStyles.titleMenu,
              ),
            ),
            Container(
                constraints: BoxConstraints(
                  maxHeight: size.height * 0.7,
                  maxWidth: size.width * 0.8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Expanded(
                        child: StreamBuilder<QuerySnapshot>(
                            stream: message,
                            builder: (BuildContext context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.hasError) {
                                return Text("Um erro ocorreu.");
                              }

                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }

                              final data = snapshot.requireData;

                              return ListView.builder(
                                reverse: true,
                                itemCount: data.size,
                                itemBuilder: (context, index) {
                                  final timestamp = data.docs[index]['sendAt'];
                                  final DateTime dateTime = timestamp.toDate();
                                  final dateString =
                                      DateFormat('H:mm').format(dateTime);
                                  final dateStr =
                                      DateFormat('d/M').format(dateTime);
                                  return MessageWidget(
                                    message: data.docs[index]['message'],
                                    color: data.docs[index]['colorUser'],
                                    currentColor: color,
                                    timestamp: dateString,
                                    date: dateStr,
                                  );
                                },
                              );
                            })),
                    MessageBarWidget(color: color),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
