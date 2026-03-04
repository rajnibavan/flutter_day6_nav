import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: SecondScreen()),
  );
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool isExpanded = false; // Read More control karne ke liye variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: CustomScrollView(
        slivers: [
          // --- 1. THE ANIMATED HEADER ---
          SliverAppBar(
            expandedHeight: 450.0,
            pinned: true,
            backgroundColor: Colors.red[900],
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'ISHQ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  letterSpacing: 3,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('assets/ishq.jpg', fit: BoxFit.cover),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Color(0xFF1A1A1A),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // --- 2. THE CONTENT ---
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(23.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOVEL TITLE
                  Text(
                    'Ishq',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 45,
                      color: Colors.red[600],
                      letterSpacing: -1,
                    ),
                  ),

                  // STORY STATS (Professional Footer/Bar)
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStat("4.8 ★", "Rating"),
                      _buildStat("3k+", "Views"),
                      _buildStat("Hindi", "Language"),
                      _buildStat("Romance", "Genre"),
                    ],
                  ),
                  const SizedBox(height: 25),

                  // ACTION BUTTONS
                  Row(
                    children: [
                      _buildActionButton(
                        Icons.home,
                        'HomePage',
                        () => Navigator.pop(context),
                      ),
                      const SizedBox(width: 15),
                      _buildActionButton(
                        Icons.subscriptions,
                        'Subscribe',
                        () async {
                          final Uri url = Uri.parse(
                            'https://pocketfm.comn/show/ishq-hindi/1aab123c2lsda612014dc46eb9626723a554a45fd9',
                          );
                          await launchUrl(
                            url,
                            mode: LaunchMode.externalApplication,
                          );
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 35),

                  // SYNOPSIS WITH READ MORE
                  const Text(
                    "Synopsis",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.justify,
                        maxLines: isExpanded
                            ? null
                            : 4, // 4 lines dikhayega ya pura
                        overflow: isExpanded
                            ? TextOverflow.visible
                            : TextOverflow.ellipsis,
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 16,
                            height: 1.8,
                            color: Colors.white,
                            fontFamily: 'serif',
                          ),
                          children: [
                            const TextSpan(text: 'वो मोहरा नहीं — '),
                            _highlight('शतरंज की रानी'),
                            const TextSpan(text: ' है, '),
                            _highlight('इश्क़तारा'),
                            const TextSpan(
                              text:
                                  ': एक ऐसी कहानी जिसके नाम में ही इश्क़ है। और जब इश्क़ का नाम आया था तो ',
                            ),
                            _highlight('जुनून'),
                            const TextSpan(
                              text: ' कैसे पीछे रह सकता। है। ये कहानी है ',
                            ),
                            _highlight('इश्का मुल्तानी'),
                            const TextSpan(text: ' और '),
                            _highlight('तारा प्रताप सिंह'),
                            const TextSpan(
                              text:
                                  ' की। इश्क़ा मुल्तानी!, इंप्रेक्टिकल और ड्रीमी गर्ल। जो भोपाल की सर्द हवाओं में, बेसब्री से बस टूटते तारों की गवाही में, सच्चे और अटूट प्रेम का संसार बुनना चाहती थी. उसकी दुनिया, उसके कल्पना के घर की हर नींव, उस अदृश्य साथी के लिए रखी गई थी, जिसके साथ wo जीवन की सबसे अनमोल सुंदरता साझा करेगी, पर नियति ने उसे प्रेम नहीं, युद्ध दिया, Rajasthan की ',
                            ),
                            _highlight('गर्म क्रूर हवा'),
                            const TextSpan(
                              text:
                                  ' ने उसके सपनों को एक पल में ध्वस्त कर दिया, और उसे उस साम्राज्य की दीवारों में कैद कर दिया गया, जहाँ मोहब्बत नहीं, केवल ',
                            ),
                            _highlight('सत्ता के जहरीले सौदे'),
                            const TextSpan(
                              text:
                                  ' होते थे. तारा प्रताप सिंह— Rajasthan का हुकुम, और एक ऐसा नाम जिसके आगे पूरा बिज़नेस एम्पायर झुकता था। उसे पाने के लिए तारा ने केवल नियमों को तोडा नहीं, उसने उन्हें जलाकर राख कर दिया। उसने इश्का की सबसे बड़ी कमज़ोरी का फ़ायदा उठा कर उसे जबरन शादी की। और उसे अपनी दादी के बर्थडे गिफ्ट बना दिया। जिसे सबने केवल एक सजावट समझा. वो डरी हुई है, इश्का जो एक खुशमिजाज इंडिपेंडेंट लड़की थी। इस एक हादसे ने उसे एक बेचारी सहमी सी सजावट की चीज़ बना दिया। पर नियति ने एक बार फिर खेल बदला और खेल का रुख बदला , इश्का के सामने आया ऐसा राज़ जिसके सामने आने से तारा का साम्राज्य की नींव ही उखड़ जाएगी । यह कहानी है मौन विद्रोह की, दो टूटी हुई आत्माओं के बीच की उस आग की, जहाँ नफरत और प्रेम की लकीरें इतनी धुंधली हैं कि एक को छूते ही दूसरा जल जाता है, अब सवाल ये है क्या इश्का उन धोखेबाजों को सामने लाएगी या खुद उनके साथ मिल कर तारा की नींव हिला देगी। क्या इस सफ़र में इश्का पा पाएगी अपना ishqtara ?... जाने के लिए सुनते रहिए Ishqtara सिर्फ Pocket FM पर।',
                            ),
                          ],
                        ),
                      ),
                      // READ MORE / LESS BUTTON
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Text(
                          isExpanded ? "Show Less" : "Read More...",
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper: Highlight Text
  TextSpan _highlight(String text) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.red[400],
        backgroundColor: Colors.red.withOpacity(0.1),
      ),
    );
  }

  // Helper: Professional Stats
  Widget _buildStat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white54, fontSize: 12),
        ),
      ],
    );
  }

  // Helper: Action Button
  Widget _buildActionButton(IconData icon, String label, VoidCallback onTap) {
    return Expanded(
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 18, color: Colors.white),
        label: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 13,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 18),
          backgroundColor: const Color(0xFFC62828),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
