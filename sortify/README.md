# Sortify ♻️

> Stop guessing. Recycle correctly in seconds.

Sortify is a mobile application that helps young adults identify the correct
recycling bin for everyday items and track their environmental impact over time.

---

## Team Members

| Name | Role |
|---|---|
| Zineb Barakat | UI Design & User Research |
| Pablo Canales | Flutter Development |
| Ricky Zheng | User Research & Testing |

**Course:** User Interface — 2026  
**Institution:** Uinevrsidad Europea de Madrid 

---

## About the App

### The Problem
Most people want to recycle correctly, but feel uncertain about which bin
to use for specific items. This confusion leads to contaminated recycling
batches that end up in landfill instead of being recycled.

### Our Solution
Sortify provides instant, reliable answers to the question "which bin does
this go in?" — making correct recycling as simple as a 5-second search.

### Target Users
Young adults (18–30) living independently for the first time — university
students in shared housing who want to recycle but lack the knowledge to
do so confidently.

---

## Features

- **Instant search** — type any item and get the correct bin immediately
- **Category browsing** — browse items by Plastic, Paper, Glass, or Organic
- **Preparation tips** — each item includes a tip on how to prepare it
- **Did you know?** — educational facts to build recycling knowledge
- **Mark as recycled** — log items to track your personal impact
- **Live counter** — see how many items you have sorted this week
- **Weekly chart** — visualize your recycling activity day by day
- **Badges** — earn rewards for recycling milestones
- **Impact stat** — see your effort translated into plastic bottle equivalents

---

## Screens

| Screen | Description |
|---|---|
| **Home** | Greeting, search bar, category buttons, last item, weekly counter |
| **Category** | Filtered list of items by bin type |
| **Result** | Bin answer, preparation tip, educational fact, mark as recycled |
| **Progress** | Weekly bar chart, badges, monthly impact statistic |

---

## Tech Stack

| Technology | Purpose |
|---|---|
| Flutter 3.41.6 | Mobile UI framework |
| Dart 3.11.4 | Programming language |
| Provider 6.1.2 | State management |
| Mock data | Item database (no backend required) |

---

## How to Run

### Prerequisites
- Flutter SDK 3.41.6 or higher
- Dart SDK 3.11.4 or higher
- Chrome browser (for web) or Android emulator

### Steps

**1. Clone the repository**
```bash
git clone https://github.com/zinebbarakat/Sortify.git
cd Sortify
```

**2. Install dependencies**
```bash
flutter pub get
```

**3. Run in Chrome**
```bash
flutter run -d chrome
```

**4. Run on Android emulator**  
Make sure the emulator is running, then:
```bash
flutter run
```

---

## Project Structure
sortify/
├── lib/
│   └── main.dart          # All screens, widgets, data model, state
├── pubspec.yaml           # Dependencies
├── web/                   # Web configuration
└── README.md              # This file

---

## Item Database

The app includes 30 pre-loaded items across 4 categories:

| Category | Bin | Items |
|---|---|---|
| Plastic | Yellow bin | Yogurt cup, Plastic bottle, Coffee cup, Shampoo bottle, Plastic bag, Detergent bottle, Food tray, Milk carton |
| Paper | Blue bin | Newspaper, Cardboard box, Pizza box, Office paper, Cereal box, Egg carton, Magazine, Paper bag |
| Glass | Green bin | Glass bottle, Wine bottle, Glass jar, Beer bottle, Perfume bottle |
| Organic | Brown bin | Banana peel, Coffee grounds, Apple core, Eggshells, Bread, Vegetable scraps, Tea bags, Leftover food |

---

## Design Decisions

### Color System
The app uses Spain's real bin color system so users build genuine knowledge:
- **Yellow** — plastic packaging
- **Blue** — paper and cardboard
- **Green** — glass
- **Brown** — organic waste

### Usability Principles Applied
- **Consistency** — same card style, typography, and spacing across all screens
- **Feedback** — snackbar confirmation when an item is marked as recycled
- **Error prevention** — unknown items default to gray bin with a clear message
- **Learnability** — "Did you know?" facts reinforce correct behavior over time
- **Visibility** — live counter and progress chart make impact immediately visible

### Sustainability Focus
- Aligned with UN SDGs 11, 12, and 13
- Supports Spain's EU recycling target of 55% by 2025
- Behavior change through gamification (badges, streaks, impact stats)

---

## Known Limitations

- Data does not persist between sessions (resets on page refresh in Chrome)
- Item database is mock data — not connected to a real recycling authority API
- Search is text-based only — no barcode or image scanning
- Currently supports Spain's bin system only (not localized for other countries)
- Badge system uses item count, not actual daily streaks

---

## Future Improvements

- Persistent storage so data survives between sessions
- Barcode scanning to identify items automatically
- Localization for different countries and bin systems
- Push notifications to remind users to recycle
- Social features — compare impact with friends
- Integration with local council recycling data

---

## Usability Evaluation

A usability test was conducted with 3 participants performing 3 representative tasks:

1. **T1** — Find which bin a yogurt cup goes in
2. **T2** — Log a recycled item and check the counter updated
3. **T3** — Navigate to Progress and find how many items were recycled this week

*(Results and identified issues documented in the project presentation)*

---

## Sustainability Impact

Every correctly sorted item reduces recycling contamination and supports
a more sustainable future. Sortify makes the right choice the easy choice.

---

*Sortify — User Interface Final Project · 2026*