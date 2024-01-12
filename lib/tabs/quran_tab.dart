import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../models/sura_models.dart';
import '../sura_details.dart';
import '../themeData.dart';

class QuranTab extends StatefulWidget {


  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<String> suraName = [
    "الفاتحه", "البقرة", "آل عمران", "النساء", "المائدة",
    "الأنعام", "الأعراف", "الأنفال", "التوبة", "يونس", "هود", "يوسف",
    "الرعد", "إبراهيم",
    "الحجر", "النحل", "الإسراء",
    "الكهف", "مريم", "طه",
    "الأنبياء", "الحج",
    "المؤمنون", "النّور", "الفرقان", "الشعراء",
    "النّمل", "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/qur2an_screen_logo.png"),
          const Divider(
            color: MyThemeData.primary,
            thickness: 3,
          ),
          Text(
            AppLocalizations.of(context)!.suraName,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Divider(
            color: MyThemeData.primary,
            thickness: 3,
          ),
          Expanded(
            child: ListView.separated(

              separatorBuilder: (context, index) {

                return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SuraDetails.routeName,
                      arguments: SuraModel(suraName[index],index));

                       },

                    child: Center(
                        child: Text(
                      "${suraName[index]} ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                    ));
              },
              itemCount: suraName.length,
              itemBuilder: (BuildContext context, int index) {
                return const Divider(
                  color: MyThemeData.primary,
                  thickness: 1,
                  endIndent: 40,
                  indent: 40,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
