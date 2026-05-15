import 'package:flutter/material.dart';

void main() {
  runApp(const SortifyApp());
}

class SortifyApp extends StatelessWidget {
  const SortifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sortify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFAF7F0)),
      home: const MainShell(),
    );
  }
}

// ─── COLORS ───────────────────────────────────────────
const kDarkGreen = Color(0xFF1B3A2F);
const kYellow = Color(0xFFFFE066);
const kCream = Color(0xFFFAF7F0);
const kCardBg = Color(0xFFF0F0EB);

// ─── DATA MODEL ───────────────────────────────────────
class RecycleItem {
  final String name;
  final String bin;
  final String binColor;
  final Color color;
  final Color textColor;
  final String tip;
  final String didYouKnow;

  const RecycleItem({
    required this.name,
    required this.bin,
    required this.binColor,
    required this.color,
    required this.textColor,
    required this.tip,
    required this.didYouKnow,
  });
}

// ─── MOCK DATABASE ────────────────────────────────────
const List<RecycleItem> itemDatabase = [
  // ── PLASTIC (Yellow bin) ──
  RecycleItem(
    name: 'Yogurt cup',
    bin: 'Yellow bin',
    binColor: 'Plastic packaging',
    color: Color(0xFFFFE066),
    textColor: Color(0xFF5C4500),
    tip: 'Rinse it first. Remove the foil lid before tossing.',
    didYouKnow: 'Yogurt cups can become new packaging or even park benches.',
  ),
  RecycleItem(
    name: 'Plastic bottle',
    bin: 'Yellow bin',
    binColor: 'Plastic packaging',
    color: Color(0xFFFFE066),
    textColor: Color(0xFF5C4500),
    tip: 'Crush it to save space. Leave the cap on.',
    didYouKnow: 'A recycled plastic bottle can become a fleece jacket.',
  ),
  RecycleItem(
    name: 'Coffee cup',
    bin: 'Yellow bin',
    binColor: 'Plastic packaging',
    color: Color(0xFFFFE066),
    textColor: Color(0xFF5C4500),
    tip: 'Empty and rinse. Remove the plastic lid separately.',
    didYouKnow:
        'Most disposable coffee cups are lined with plastic, making them hard to recycle.',
  ),
  RecycleItem(
    name: 'Shampoo bottle',
    bin: 'Yellow bin',
    binColor: 'Plastic packaging',
    color: Color(0xFFFFE066),
    textColor: Color(0xFF5C4500),
    tip: 'Rinse thoroughly before recycling.',
    didYouKnow:
        'Shampoo bottles are usually made of HDPE, one of the most recyclable plastics.',
  ),
  RecycleItem(
    name: 'Plastic bag',
    bin: 'Yellow bin',
    binColor: 'Plastic packaging',
    color: Color(0xFFFFE066),
    textColor: Color(0xFF5C4500),
    tip: 'Make sure it is clean and dry before recycling.',
    didYouKnow:
        'Recycled plastic bags can be turned into new bags or outdoor furniture.',
  ),
  RecycleItem(
    name: 'Detergent bottle',
    bin: 'Yellow bin',
    binColor: 'Plastic packaging',
    color: Color(0xFFFFE066),
    textColor: Color(0xFF5C4500),
    tip: 'Rinse out any remaining detergent before recycling.',
    didYouKnow:
        'Detergent bottles are often made from recycled plastic themselves.',
  ),
  RecycleItem(
    name: 'Food tray',
    bin: 'Yellow bin',
    binColor: 'Plastic packaging',
    color: Color(0xFFFFE066),
    textColor: Color(0xFF5C4500),
    tip: 'Rinse off any food residue before placing in the bin.',
    didYouKnow:
        'Plastic trays can be recycled into new containers or garden furniture.',
  ),
  RecycleItem(
    name: 'Milk carton',
    bin: 'Yellow bin',
    binColor: 'Plastic packaging',
    color: Color(0xFFFFE066),
    textColor: Color(0xFF5C4500),
    tip: 'Rinse and flatten before recycling.',
    didYouKnow:
        'Milk cartons are made of layers of paper, plastic and aluminium.',
  ),

  // ── PAPER (Blue bin) ──
  RecycleItem(
    name: 'Newspaper',
    bin: 'Blue bin',
    binColor: 'Paper',
    color: Color(0xFFA4C8E1),
    textColor: Color(0xFF1A3A52),
    tip: 'Keep it dry. Wet paper cannot be recycled.',
    didYouKnow: 'Recycling one ton of paper saves 17 trees.',
  ),
  RecycleItem(
    name: 'Cardboard box',
    bin: 'Blue bin',
    binColor: 'Cardboard',
    color: Color(0xFFA4C8E1),
    textColor: Color(0xFF1A3A52),
    tip: 'Flatten it before putting it in the bin.',
    didYouKnow: 'Cardboard is one of the most recycled materials in the world.',
  ),
  RecycleItem(
    name: 'Pizza box',
    bin: 'Blue bin',
    binColor: 'Cardboard',
    color: Color(0xFFA4C8E1),
    textColor: Color(0xFF1A3A52),
    tip: 'Only if it is not greasy. Greasy boxes go in the gray bin.',
    didYouKnow:
        'Recycled cardboard uses 75% less energy than making new cardboard.',
  ),
  RecycleItem(
    name: 'Office paper',
    bin: 'Blue bin',
    binColor: 'Paper',
    color: Color(0xFFA4C8E1),
    textColor: Color(0xFF1A3A52),
    tip: 'Remove any staples or paper clips before recycling.',
    didYouKnow:
        'Recycling one sheet of paper saves enough energy to power a light bulb for an hour.',
  ),
  RecycleItem(
    name: 'Cereal box',
    bin: 'Blue bin',
    binColor: 'Cardboard',
    color: Color(0xFFA4C8E1),
    textColor: Color(0xFF1A3A52),
    tip: 'Remove the plastic inner bag first. Flatten the box.',
    didYouKnow:
        'Cereal boxes are made of paperboard, which is highly recyclable.',
  ),
  RecycleItem(
    name: 'Egg carton',
    bin: 'Blue bin',
    binColor: 'Cardboard',
    color: Color(0xFFA4C8E1),
    textColor: Color(0xFF1A3A52),
    tip: 'Make sure it is clean and dry before recycling.',
    didYouKnow: 'Egg cartons are often made from recycled paper pulp.',
  ),
  RecycleItem(
    name: 'Magazine',
    bin: 'Blue bin',
    binColor: 'Paper',
    color: Color(0xFFA4C8E1),
    textColor: Color(0xFF1A3A52),
    tip: 'Remove any plastic covers or inserts before recycling.',
    didYouKnow:
        'Magazines are printed on coated paper, which is still fully recyclable.',
  ),
  RecycleItem(
    name: 'Paper bag',
    bin: 'Blue bin',
    binColor: 'Paper',
    color: Color(0xFFA4C8E1),
    textColor: Color(0xFF1A3A52),
    tip: 'Remove any handles or staples before recycling.',
    didYouKnow: 'Paper bags decompose much faster than plastic bags.',
  ),

  // ── GLASS (Green bin) ──
  RecycleItem(
    name: 'Glass bottle',
    bin: 'Green bin',
    binColor: 'Glass',
    color: Color(0xFFB5D5A7),
    textColor: Color(0xFF2A4D1F),
    tip: 'Remove the cap first. Rinse before recycling.',
    didYouKnow: 'Glass can be recycled endlessly without losing quality.',
  ),
  RecycleItem(
    name: 'Wine bottle',
    bin: 'Green bin',
    binColor: 'Glass',
    color: Color(0xFFB5D5A7),
    textColor: Color(0xFF2A4D1F),
    tip: 'Remove the cork and foil before placing in the bin.',
    didYouKnow:
        'Recycling one glass bottle saves enough energy to power a TV for 20 minutes.',
  ),
  RecycleItem(
    name: 'Glass jar',
    bin: 'Green bin',
    binColor: 'Glass',
    color: Color(0xFFB5D5A7),
    textColor: Color(0xFF2A4D1F),
    tip: 'Rinse it out. Remove the metal lid and recycle separately.',
    didYouKnow: 'Glass jars can be recycled into new jars within 30 days.',
  ),
  RecycleItem(
    name: 'Beer bottle',
    bin: 'Green bin',
    binColor: 'Glass',
    color: Color(0xFFB5D5A7),
    textColor: Color(0xFF2A4D1F),
    tip: 'Empty and rinse. Remove the bottle cap first.',
    didYouKnow: 'The average glass bottle contains about 30% recycled glass.',
  ),
  RecycleItem(
    name: 'Perfume bottle',
    bin: 'Green bin',
    binColor: 'Glass',
    color: Color(0xFFB5D5A7),
    textColor: Color(0xFF2A4D1F),
    tip: 'Remove the pump or spray top before recycling.',
    didYouKnow:
        'Glass perfume bottles can be melted and reshaped into new glass products.',
  ),

  // ── ORGANIC (Brown bin) ──
  RecycleItem(
    name: 'Banana peel',
    bin: 'Brown bin',
    binColor: 'Organic waste',
    color: Color(0xFFC9B49A),
    textColor: Color(0xFF4A3520),
    tip: 'Goes straight into the organic bin. No bag needed.',
    didYouKnow: 'Organic waste becomes compost that enriches soil naturally.',
  ),
  RecycleItem(
    name: 'Coffee grounds',
    bin: 'Brown bin',
    binColor: 'Organic waste',
    color: Color(0xFFC9B49A),
    textColor: Color(0xFF4A3520),
    tip: 'Let them cool before placing in the bin.',
    didYouKnow:
        'Coffee grounds are rich in nitrogen, making excellent compost.',
  ),
  RecycleItem(
    name: 'Apple core',
    bin: 'Brown bin',
    binColor: 'Organic waste',
    color: Color(0xFFC9B49A),
    textColor: Color(0xFF4A3520),
    tip: 'Goes directly into the organic bin.',
    didYouKnow:
        'Fruit scraps decompose in as little as 2 weeks in a compost bin.',
  ),
  RecycleItem(
    name: 'Eggshells',
    bin: 'Brown bin',
    binColor: 'Organic waste',
    color: Color(0xFFC9B49A),
    textColor: Color(0xFF4A3520),
    tip: 'Rinse lightly and place directly in the organic bin.',
    didYouKnow:
        'Eggshells add calcium to compost, which helps plants grow stronger.',
  ),
  RecycleItem(
    name: 'Bread',
    bin: 'Brown bin',
    binColor: 'Organic waste',
    color: Color(0xFFC9B49A),
    textColor: Color(0xFF4A3520),
    tip: 'Place directly in the organic bin, even if moldy.',
    didYouKnow:
        'Food waste in landfills produces methane, a powerful greenhouse gas.',
  ),
  RecycleItem(
    name: 'Vegetable scraps',
    bin: 'Brown bin',
    binColor: 'Organic waste',
    color: Color(0xFFC9B49A),
    textColor: Color(0xFF4A3520),
    tip: 'Collect scraps in a small container and empty daily.',
    didYouKnow:
        'Vegetable compost can replace chemical fertilizers in gardens.',
  ),
  RecycleItem(
    name: 'Tea bags',
    bin: 'Brown bin',
    binColor: 'Organic waste',
    color: Color(0xFFC9B49A),
    textColor: Color(0xFF4A3520),
    tip: 'Remove any staples or plastic tags before composting.',
    didYouKnow: 'Used tea leaves are a great addition to compost for nitrogen.',
  ),
  RecycleItem(
    name: 'Leftover food',
    bin: 'Brown bin',
    binColor: 'Organic waste',
    color: Color(0xFFC9B49A),
    textColor: Color(0xFF4A3520),
    tip: 'Avoid placing meat or fish in home compost bins.',
    didYouKnow: 'One third of all food produced globally is wasted every year.',
  ),
];

// ─── MAIN SHELL (bottom nav) ──────────────────────────
class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [HomeScreen(), ProgressScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: Colors.white,
        selectedItemColor: kDarkGreen,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            activeIcon: Icon(Icons.bar_chart),
            label: 'Progress',
          ),
        ],
      ),
    );
  }
}

// ─── HOME SCREEN ──────────────────────────────────────
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  void _search() {
    final query = _controller.text.trim().toLowerCase();
    if (query.isEmpty) return;

    final result = itemDatabase.firstWhere(
      (item) => item.name.toLowerCase().contains(query),
      orElse: () => const RecycleItem(
        name: 'Unknown item',
        bin: 'Gray bin',
        binColor: 'General waste',
        color: Color(0xFFD0D0D0),
        textColor: Color(0xFF333333),
        tip: 'When in doubt, use the gray bin.',
        didYouKnow: 'Sorting correctly reduces landfill waste significantly.',
      ),
    );

    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => ResultScreen(item: result)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCream,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello, Lucia',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: kDarkGreen,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'What do you want to recycle?',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: kDarkGreen, width: 1),
                    ),
                    child: TextField(
                      controller: _controller,
                      onSubmitted: (_) => _search(),
                      decoration: InputDecoration(
                        hintText: 'Search an item...',
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: kDarkGreen,
                          ),
                          onPressed: _search,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'CATEGORIES',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 12),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 2.4,
                    children: const [
                      CategoryButton(
                        label: 'Plastic',
                        icon: Icons.delete_outline,
                        color: const Color(0xFFFFE066),
                        textColor: const Color(0xFF5C4500),
                        filterKey: 'yellow',
                      ),
                      CategoryButton(
                        label: 'Paper',
                        icon: Icons.article_outlined,
                        color: const Color(0xFFA4C8E1),
                        textColor: const Color(0xFF1A3A52),
                        filterKey: 'blue',
                      ),
                      CategoryButton(
                        label: 'Glass',
                        icon: Icons.wine_bar_outlined,
                        color: const Color(0xFFB5D5A7),
                        textColor: const Color(0xFF2A4D1F),
                        filterKey: 'green',
                      ),
                      CategoryButton(
                        label: 'Organic',
                        icon: Icons.eco_outlined,
                        color: const Color(0xFFC9B49A),
                        textColor: const Color(0xFF4A3520),
                        filterKey: 'brown',
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: kCardBg,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'LAST ITEM',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                            letterSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: const [
                            Text(
                              'Coffee cup',
                              style: TextStyle(
                                fontSize: 15,
                                color: kDarkGreen,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward,
                              size: 14,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Yellow bin',
                              style: TextStyle(
                                fontSize: 15,
                                color: kDarkGreen,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      color: kDarkGreen,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      '23 items sorted this week',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kYellow,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ─── RESULT SCREEN ────────────────────────────────────
class ResultScreen extends StatelessWidget {
  final RecycleItem item;
  const ResultScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCream,
      appBar: AppBar(
        backgroundColor: kCream,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: kDarkGreen),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: kDarkGreen,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: item.color,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: item.textColor.withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'GOES IN',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: item.textColor,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        item.bin,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: item.textColor,
                        ),
                      ),
                      Text(
                        item.binColor,
                        style: TextStyle(
                          fontSize: 14,
                          color: item.textColor.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: kCardBg,
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      left: BorderSide(color: Color(0xFFC2410C), width: 3),
                    ),
                  ),
                  child: Text(
                    item.tip,
                    style: const TextStyle(
                      fontSize: 14,
                      color: kDarkGreen,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8F0E2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'DID YOU KNOW?',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF5B8C5A),
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        item.didYouKnow,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF2A4D1F),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kDarkGreen,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Mark as recycled',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ─── PROGRESS SCREEN ──────────────────────────────────
class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
    const heights = [0.55, 0.78, 0.38, 0.50, 0.65, 0.45, 0.60];
    const barColors = [
      Color(0xFFFFE066),
      Color(0xFFA4C8E1),
      Color(0xFFB5D5A7),
      Color(0xFFC9B49A),
      Color(0xFFFFE066),
      Color(0xFFA4C8E1),
      Color(0xFFB5D5A7),
    ];

    return Scaffold(
      backgroundColor: kCream,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── TITLE ──
                  const Text(
                    'Your impact',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: kDarkGreen,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Keep up the good work!',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(height: 24),

                  // ── THIS WEEK CARD ──
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: kDarkGreen.withOpacity(0.15),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'This week',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kDarkGreen,
                          ),
                        ),
                        const SizedBox(height: 16),

                        // BAR CHART
                        SizedBox(
                          height: 120,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: List.generate(7, (i) {
                              return Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 3,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Flexible(
                                        child: FractionallySizedBox(
                                          heightFactor: heights[i],
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: barColors[i],
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              border: Border.all(
                                                color: kDarkGreen.withOpacity(
                                                  0.2,
                                                ),
                                                width: 0.5,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        days[i],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: kDarkGreen,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // ── BADGES ──
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: kDarkGreen.withOpacity(0.15),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'BADGES EARNED',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                            letterSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            BadgeWidget(
                              label: '01',
                              title: 'First plastic',
                              color: Color(0xFFFFE066),
                              textColor: Color(0xFF5C4500),
                            ),
                            BadgeWidget(
                              label: '07',
                              title: '7-day streak',
                              color: Color(0xFF5B8C5A),
                              textColor: Colors.white,
                            ),
                            BadgeWidget(
                              label: '25',
                              title: '25 items',
                              color: Color(0xFFA4C8E1),
                              textColor: Color(0xFF1A3A52),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // ── IMPACT STAT ──
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: kDarkGreen,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          '18',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: kYellow,
                            height: 1,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "plastic bottles' worth of\nwaste recycled this month",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFc8d8c8),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ─── BADGE WIDGET ─────────────────────────────────────
class BadgeWidget extends StatelessWidget {
  final String label;
  final String title;
  final Color color;
  final Color textColor;

  const BadgeWidget({
    super.key,
    required this.label,
    required this.title,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(color: kDarkGreen.withOpacity(0.2), width: 1),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

// ─── CATEGORY BUTTON WIDGET ───────────────────────────
// ─── CATEGORY BUTTON WIDGET ───────────────────────────
class CategoryButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final Color textColor;
  final String filterKey;

  const CategoryButton({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
    required this.textColor,
    required this.filterKey,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CategoryScreen(
              category: label,
              color: color,
              textColor: textColor,
              filterKey: filterKey,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kDarkGreen.withOpacity(0.3), width: 0.8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: textColor, size: 20),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── CATEGORY SCREEN ──────────────────────────────────
class CategoryScreen extends StatelessWidget {
  final String category;
  final Color color;
  final Color textColor;
  final String filterKey;

  const CategoryScreen({
    super.key,
    required this.category,
    required this.color,
    required this.textColor,
    required this.filterKey,
  });

  @override
  Widget build(BuildContext context) {
    final filtered = itemDatabase
        .where((item) => item.bin.toLowerCase().contains(filterKey))
        .toList();

    return Scaffold(
      backgroundColor: kCream,
      appBar: AppBar(
        backgroundColor: color,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: textColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          category,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── HEADER ──
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${filtered.length} items',
                        style: TextStyle(
                          fontSize: 13,
                          color: textColor.withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Tap any item for details',
                        style: TextStyle(
                          fontSize: 15,
                          color: textColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // ── ITEM LIST ──
                Expanded(
                  child: ListView.separated(
                    itemCount: filtered.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      final item = filtered[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ResultScreen(item: item),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: kDarkGreen.withOpacity(0.1),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: color,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: textColor.withOpacity(0.4),
                                    width: 1,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Text(
                                  item.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: kDarkGreen,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
