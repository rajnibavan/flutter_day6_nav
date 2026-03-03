import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY APP',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.white, Colors.red],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Card(
            color: Colors.white,
            elevation: 15,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

            child: Column(
              children: [
                SizedBox(height: 30, width: 30),
                SizedBox(height: 50, width: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),

                    children: [
                      TextSpan(text: 'This is My Novel\n'),
                      TextSpan(
                        text: 'Ishq',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40, width: 30),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image(image: AssetImage('assets/ishqtara.jpg')),
                ),
                SizedBox(height: 30, width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        'वो मोहरा नहीं — शतरंज की रानी है, इश्क़तारा: एक ऐसी कहानी जिसके नाम में ही इश्क़ है। और जब इश्क़ का नाम आया था तो जुनून कैसे पीछे रह सकता। है। ये कहानी है इश्का मुल्तानी और तारा प्रताप सिंह की। इश्क़ा मुल्तानी!, इंप्रेक्टिकल और ड्रीमी गर्ल। जो भोपाल की सर्द हवाओं में, बेसब्री से बस टूटते तारों की गवाही में, सच्चे और अटूट प्रेम का संसार बुनना चाहती थी. उसकी दुनिया, उसके कल्पना के घर की हर नींव, उस अदृश्य साथी के लिए रखी गई थी, जिसके साथ वो जीवन की सबसे अनमोल सुंदरता साझा करेगी, पर नियति ने उसे प्रेम नहीं, युद्ध दिया, राजस्थान की गर्म क्रूर हवा ने उसके सपनों को एक पल में ध्वस्त कर दिया, और उसे उस साम्राज्य की दीवारों में कैद कर दिया गया, जहाँ मोहब्बत नहीं, केवल सत्ता के जहरीले सौदे होते थे. तारा प्रताप सिंह— राजस्थान का हुकुम, और एक ऐसा नाम जिसके आगे पूरा बिज़नेस एम्पायर झुकता था। उसे पाने के लिए तारा ने केवल नियमों को तोडा नहीं, उसने उन्हें जलाकर राख कर दिया। उसने इश्का की सबसे बड़ी कमज़ोरी का फ़ायदा उठा कर उसे जबरन शादी की। और उसे अपनी दादी के बर्थडे गिफ्ट बना दिया। जिसे सबने केवल एक सजावट समझा. वो डरी हुई है, इश्का जो एक खुशमिजाज इंडिपेंडेंट लड़की थी। इस एक हादसे ने उसे एक बेचारी सहमी सी सजावट की चीज़ बना दिया। पर नियति ने एक बार फिर खेल बदला और खेल का रुख बदला , इश्का के सामने आया ऐसा राज़ जिसके सामने आने से तारा का साम्राज्य की नींव ही उखड़ जाएगी । यह कहानी है मौन विद्रोह की, दो टूटी हुई आत्माओं के बीच की उस आग की, जहाँ नफरत और प्रेम की लकीरें इतनी धुंधली हैं कि एक को छूते ही दूसरा जल जाता है, अब सवाल ये है क्या इश्का उन धोखेबाजों को सामने लाएगी या खुद उनके साथ मिल कर तारा की नींव हिला देगी। क्या इस सफ़र में इश्का पा पाएगी अपना ishqtara ?... जाने के लिए सुनते रहिए Ishqtara सिर्फ pocket FM पर।',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.red,
                        ),
                        child: Text(
                          'Link',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.red,
                        ),
                        child: Text(
                          'Listening',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // child: ElevatedButton(
  //   onPressed: () {
  //     Navigator.pop(context);
  //   },
  //   child: const Text('Go to HOME'),
  // ),
}
