import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/src/classes/constants.class.dart';
import 'package:quran/src/providers/audio.provider.dart';
import 'package:quran/src/shared/widgets/icon_botton.widget.dart';

class BottomPlayer extends StatelessWidget {
  const BottomPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AudioProvider>(
      builder: (provider) {
        return SafeArea(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.only(top: 10),
            height: !provider.playerVisibility ? 0 : 80,
            width: double.infinity,
            child: !provider.playerVisibility
                ? const SizedBox()
                : Column(
                    children: [
                      LinearProgressIndicator(
                        color: Constants.foreground(context).withOpacity(.5),
                        backgroundColor:
                            Constants.secondary(context).withOpacity(.1),
                        value: .50,
                        minHeight: 2,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              IconButtonWidget(
                                onPressed: provider.closePlayer,
                                icon: Icons.close_rounded,
                                theme: IconThemeData(
                                    color: Constants.secondary(context)),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButtonWidget(
                                      onPressed: () {},
                                      icon: Icons.skip_previous_rounded,
                                      theme: IconThemeData(
                                          color: Constants.secondary(context)),
                                    ),
                                    const SizedBox(width: 10),
                                    GestureDetector(
                                      onTap: Feedback.wrapForTap(
                                        provider.togglePlayer,
                                        context,
                                      ),
                                      child: AnimatedSwitcher(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        child: Icon(
                                          provider.icon,
                                          key: ValueKey(provider.icon),
                                          size: 50,
                                          color: Constants.foreground(context),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    IconButtonWidget(
                                      onPressed: () {},
                                      icon: Icons.skip_next_rounded,
                                      theme: IconThemeData(
                                        color: Constants.secondary(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '59:10',
                                style: TextStyle(
                                    color: Constants.secondary(context)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
