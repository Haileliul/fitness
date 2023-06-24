import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import '../translations/local_keys.g.dart';

class Lang extends StatelessWidget {
  const Lang({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.name.tr(),
            ),
            Text(
              LocaleKeys.age.tr(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () async {
                    await context.setLocale(Locale("en"));
                  },
                  child: Text("english"),
                ),
                TextButton(
                  onPressed: () async {
                    await context.setLocale(Locale("am"));
                  },
                  child: Text("Amharic"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
