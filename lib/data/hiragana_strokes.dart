import '../models/character_data.dart';

const List<HiraganaStroke> _strokesA1 = [
  HiraganaStroke([
    StrokePoint(200, 380),
    StrokePoint(350, 400),
    StrokePoint(500, 410),
    StrokePoint(650, 400),
    StrokePoint(800, 380),
  ]),
  HiraganaStroke([
    StrokePoint(480, 150),
    StrokePoint(480, 280),
    StrokePoint(480, 380),
    StrokePoint(480, 420),
    StrokePoint(460, 530),
    StrokePoint(420, 620),
    StrokePoint(350, 700),
    StrokePoint(260, 750),
  ]),
  HiraganaStroke([
    StrokePoint(600, 260),
    StrokePoint(670, 220),
    StrokePoint(750, 210),
    StrokePoint(820, 250),
    StrokePoint(840, 320),
    StrokePoint(800, 380),
    StrokePoint(720, 400),
    StrokePoint(660, 370),
    StrokePoint(630, 330),
  ]),
];

const List<HiraganaStroke> _strokesI2 = [
  HiraganaStroke([
    StrokePoint(280, 180),
    StrokePoint(270, 280),
    StrokePoint(250, 380),
    StrokePoint(230, 480),
    StrokePoint(220, 540),
  ]),
  HiraganaStroke([
    StrokePoint(520, 150),
    StrokePoint(530, 260),
    StrokePoint(540, 370),
    StrokePoint(570, 460),
    StrokePoint(610, 530),
    StrokePoint(650, 570),
  ]),
];

const List<HiraganaStroke> _strokesU3 = [
  HiraganaStroke([
    StrokePoint(400, 180),
    StrokePoint(480, 190),
    StrokePoint(560, 195),
    StrokePoint(640, 190),
  ]),
  HiraganaStroke([
    StrokePoint(640, 195),
    StrokePoint(620, 290),
    StrokePoint(580, 390),
    StrokePoint(510, 490),
    StrokePoint(420, 570),
    StrokePoint(350, 630),
    StrokePoint(310, 660),
  ]),
];

const List<HiraganaStroke> _strokesE4 = [
  HiraganaStroke([
    StrokePoint(280, 200),
    StrokePoint(400, 210),
    StrokePoint(520, 215),
    StrokePoint(600, 210),
  ]),
  HiraganaStroke([
    StrokePoint(500, 280),
    StrokePoint(530, 340),
    StrokePoint(580, 390),
    StrokePoint(650, 430),
    StrokePoint(720, 440),
    StrokePoint(760, 420),
    StrokePoint(740, 470),
    StrokePoint(680, 530),
    StrokePoint(600, 570),
    StrokePoint(500, 580),
    StrokePoint(420, 560),
    StrokePoint(390, 520),
  ]),
];

const List<HiraganaStroke> _strokesO5 = [
  HiraganaStroke([
    StrokePoint(200, 400),
    StrokePoint(350, 410),
    StrokePoint(500, 415),
    StrokePoint(650, 410),
    StrokePoint(780, 395),
  ]),
  HiraganaStroke([
    StrokePoint(480, 150),
    StrokePoint(480, 280),
    StrokePoint(480, 380),
    StrokePoint(480, 420),
    StrokePoint(460, 530),
    StrokePoint(410, 630),
    StrokePoint(340, 710),
  ]),
  HiraganaStroke([
    StrokePoint(720, 320),
    StrokePoint(740, 380),
    StrokePoint(750, 450),
    StrokePoint(740, 520),
    StrokePoint(710, 570),
  ]),
];

const List<HiraganaCharacter> hiraganaA = [
  HiraganaCharacter(
    character: 'あ',
    romanji: 'a',
    group: 'a',
    strokes: _strokesA1,
  ),
  HiraganaCharacter(
    character: 'い',
    romanji: 'i',
    group: 'a',
    strokes: _strokesI2,
  ),
  HiraganaCharacter(
    character: 'う',
    romanji: 'u',
    group: 'a',
    strokes: _strokesU3,
  ),
  HiraganaCharacter(
    character: 'え',
    romanji: 'e',
    group: 'a',
    strokes: _strokesE4,
  ),
  HiraganaCharacter(
    character: 'お',
    romanji: 'o',
    group: 'a',
    strokes: _strokesO5,
  ),
];

const List<HiraganaStroke> _strokesKa6 = [
  HiraganaStroke([
    StrokePoint(200, 350),
    StrokePoint(350, 360),
    StrokePoint(500, 365),
    StrokePoint(650, 355),
  ]),
  HiraganaStroke([
    StrokePoint(460, 150),
    StrokePoint(460, 280),
    StrokePoint(460, 350),
    StrokePoint(450, 470),
    StrokePoint(410, 570),
    StrokePoint(350, 640),
    StrokePoint(280, 670),
  ]),
  HiraganaStroke([
    StrokePoint(640, 180),
    StrokePoint(700, 280),
    StrokePoint(740, 380),
    StrokePoint(770, 480),
    StrokePoint(790, 560),
  ]),
];

const List<HiraganaStroke> _strokesKi7 = [
  HiraganaStroke([
    StrokePoint(220, 250),
    StrokePoint(380, 260),
    StrokePoint(540, 265),
    StrokePoint(700, 250),
  ]),
  HiraganaStroke([
    StrokePoint(250, 400),
    StrokePoint(400, 410),
    StrokePoint(550, 415),
    StrokePoint(700, 400),
  ]),
  HiraganaStroke([
    StrokePoint(580, 250),
    StrokePoint(560, 340),
    StrokePoint(530, 430),
    StrokePoint(490, 520),
    StrokePoint(430, 600),
    StrokePoint(370, 660),
  ]),
  HiraganaStroke([
    StrokePoint(580, 410),
    StrokePoint(630, 480),
    StrokePoint(690, 530),
    StrokePoint(740, 560),
  ]),
];

const List<HiraganaStroke> _strokesKu8 = [
  HiraganaStroke([
    StrokePoint(680, 160),
    StrokePoint(600, 280),
    StrokePoint(500, 380),
    StrokePoint(400, 440),
    StrokePoint(320, 470),
    StrokePoint(240, 480),
  ]),
];

const List<HiraganaStroke> _strokesKe9 = [
  HiraganaStroke([
    StrokePoint(260, 160),
    StrokePoint(260, 280),
    StrokePoint(260, 380),
    StrokePoint(260, 480),
    StrokePoint(260, 580),
    StrokePoint(260, 680),
    StrokePoint(275, 730),
  ]),
  HiraganaStroke([
    StrokePoint(320, 400),
    StrokePoint(440, 410),
    StrokePoint(560, 415),
    StrokePoint(680, 405),
    StrokePoint(760, 385),
  ]),
  HiraganaStroke([
    StrokePoint(700, 160),
    StrokePoint(700, 280),
    StrokePoint(700, 380),
    StrokePoint(700, 410),
    StrokePoint(700, 510),
    StrokePoint(700, 610),
    StrokePoint(700, 720),
  ]),
];

const List<HiraganaStroke> _strokesKo10 = [
  HiraganaStroke([
    StrokePoint(280, 280),
    StrokePoint(420, 290),
    StrokePoint(560, 295),
    StrokePoint(700, 280),
  ]),
  HiraganaStroke([
    StrokePoint(300, 520),
    StrokePoint(420, 530),
    StrokePoint(540, 530),
    StrokePoint(660, 510),
    StrokePoint(740, 480),
  ]),
];

const List<HiraganaCharacter> hiraganaKa = [
  HiraganaCharacter(
    character: 'か',
    romanji: 'ka',
    group: 'ka',
    strokes: _strokesKa6,
  ),
  HiraganaCharacter(
    character: 'き',
    romanji: 'ki',
    group: 'ka',
    strokes: _strokesKi7,
  ),
  HiraganaCharacter(
    character: 'く',
    romanji: 'ku',
    group: 'ka',
    strokes: _strokesKu8,
  ),
  HiraganaCharacter(
    character: 'け',
    romanji: 'ke',
    group: 'ka',
    strokes: _strokesKe9,
  ),
  HiraganaCharacter(
    character: 'こ',
    romanji: 'ko',
    group: 'ka',
    strokes: _strokesKo10,
  ),
];

const List<HiraganaStroke> _strokesSa11 = [
  HiraganaStroke([
    StrokePoint(260, 250),
    StrokePoint(400, 260),
    StrokePoint(540, 265),
    StrokePoint(680, 250),
  ]),
  HiraganaStroke([
    StrokePoint(560, 260),
    StrokePoint(540, 340),
    StrokePoint(510, 430),
    StrokePoint(470, 520),
    StrokePoint(420, 600),
    StrokePoint(370, 660),
  ]),
  HiraganaStroke([
    StrokePoint(500, 510),
    StrokePoint(550, 560),
    StrokePoint(610, 590),
    StrokePoint(680, 600),
    StrokePoint(740, 580),
  ]),
];

const List<HiraganaStroke> _strokesShi12 = [
  HiraganaStroke([
    StrokePoint(440, 150),
    StrokePoint(440, 260),
    StrokePoint(440, 370),
    StrokePoint(450, 470),
    StrokePoint(480, 550),
    StrokePoint(530, 620),
    StrokePoint(600, 660),
    StrokePoint(680, 660),
    StrokePoint(740, 630),
  ]),
];

const List<HiraganaStroke> _strokesSu13 = [
  HiraganaStroke([
    StrokePoint(200, 380),
    StrokePoint(350, 390),
    StrokePoint(500, 395),
    StrokePoint(650, 390),
    StrokePoint(800, 375),
  ]),
  HiraganaStroke([
    StrokePoint(520, 230),
    StrokePoint(520, 330),
    StrokePoint(520, 395),
    StrokePoint(530, 460),
    StrokePoint(570, 510),
    StrokePoint(620, 520),
    StrokePoint(650, 490),
    StrokePoint(630, 450),
    StrokePoint(580, 440),
    StrokePoint(530, 460),
    StrokePoint(520, 520),
    StrokePoint(510, 600),
    StrokePoint(500, 700),
  ]),
];

const List<HiraganaStroke> _strokesSe14 = [
  HiraganaStroke([
    StrokePoint(200, 350),
    StrokePoint(350, 360),
    StrokePoint(500, 365),
    StrokePoint(650, 355),
    StrokePoint(780, 335),
  ]),
  HiraganaStroke([
    StrokePoint(300, 200),
    StrokePoint(300, 300),
    StrokePoint(300, 350),
    StrokePoint(300, 430),
    StrokePoint(300, 520),
    StrokePoint(300, 620),
    StrokePoint(300, 700),
  ]),
  HiraganaStroke([
    StrokePoint(660, 200),
    StrokePoint(660, 290),
    StrokePoint(660, 360),
    StrokePoint(650, 440),
    StrokePoint(620, 510),
    StrokePoint(570, 560),
    StrokePoint(510, 580),
    StrokePoint(450, 570),
  ]),
];

const List<HiraganaStroke> _strokesSo15 = [
  HiraganaStroke([
    StrokePoint(200, 200),
    StrokePoint(370, 200),
    StrokePoint(480, 250),
    StrokePoint(370, 310),
    StrokePoint(250, 310),
    StrokePoint(400, 320),
    StrokePoint(560, 380),
    StrokePoint(660, 470),
    StrokePoint(710, 570),
    StrokePoint(720, 660),
  ]),
];

const List<HiraganaCharacter> hiraganaSa = [
  HiraganaCharacter(
    character: 'さ',
    romanji: 'sa',
    group: 'sa',
    strokes: _strokesSa11,
  ),
  HiraganaCharacter(
    character: 'し',
    romanji: 'shi',
    group: 'sa',
    strokes: _strokesShi12,
  ),
  HiraganaCharacter(
    character: 'す',
    romanji: 'su',
    group: 'sa',
    strokes: _strokesSu13,
  ),
  HiraganaCharacter(
    character: 'せ',
    romanji: 'se',
    group: 'sa',
    strokes: _strokesSe14,
  ),
  HiraganaCharacter(
    character: 'そ',
    romanji: 'so',
    group: 'sa',
    strokes: _strokesSo15,
  ),
];

const List<HiraganaStroke> _strokesTa16 = [
  HiraganaStroke([
    StrokePoint(200, 350),
    StrokePoint(350, 360),
    StrokePoint(500, 365),
    StrokePoint(650, 360),
  ]),
  HiraganaStroke([
    StrokePoint(300, 200),
    StrokePoint(300, 280),
    StrokePoint(300, 350),
    StrokePoint(300, 430),
    StrokePoint(300, 520),
    StrokePoint(300, 590),
  ]),
  HiraganaStroke([
    StrokePoint(350, 530),
    StrokePoint(480, 540),
    StrokePoint(610, 545),
    StrokePoint(700, 535),
  ]),
  HiraganaStroke([
    StrokePoint(700, 535),
    StrokePoint(710, 580),
    StrokePoint(730, 640),
    StrokePoint(760, 680),
    StrokePoint(800, 700),
    StrokePoint(840, 690),
  ]),
];

const List<HiraganaStroke> _strokesChi17 = [
  HiraganaStroke([
    StrokePoint(220, 320),
    StrokePoint(380, 330),
    StrokePoint(540, 335),
    StrokePoint(680, 325),
  ]),
  HiraganaStroke([
    StrokePoint(480, 150),
    StrokePoint(480, 240),
    StrokePoint(480, 330),
    StrokePoint(490, 430),
    StrokePoint(530, 510),
    StrokePoint(590, 570),
    StrokePoint(660, 610),
    StrokePoint(740, 620),
    StrokePoint(800, 590),
  ]),
];

const List<HiraganaStroke> _strokesTsu18 = [
  HiraganaStroke([
    StrokePoint(280, 250),
    StrokePoint(400, 260),
    StrokePoint(520, 290),
    StrokePoint(620, 340),
    StrokePoint(680, 400),
    StrokePoint(700, 470),
    StrokePoint(680, 530),
    StrokePoint(620, 570),
    StrokePoint(540, 580),
    StrokePoint(460, 570),
  ]),
];

const List<HiraganaStroke> _strokesTe19 = [
  HiraganaStroke([
    StrokePoint(200, 350),
    StrokePoint(380, 360),
    StrokePoint(560, 365),
    StrokePoint(720, 345),
    StrokePoint(800, 300),
    StrokePoint(830, 240),
  ]),
];

const List<HiraganaStroke> _strokesTo20 = [
  HiraganaStroke([
    StrokePoint(300, 160),
    StrokePoint(310, 280),
    StrokePoint(330, 380),
    StrokePoint(360, 470),
    StrokePoint(400, 540),
  ]),
  HiraganaStroke([
    StrokePoint(400, 540),
    StrokePoint(460, 520),
    StrokePoint(540, 470),
    StrokePoint(620, 400),
    StrokePoint(670, 320),
    StrokePoint(690, 230),
    StrokePoint(680, 170),
  ]),
];

const List<HiraganaCharacter> hiraganaTa = [
  HiraganaCharacter(
    character: 'た',
    romanji: 'ta',
    group: 'ta',
    strokes: _strokesTa16,
  ),
  HiraganaCharacter(
    character: 'ち',
    romanji: 'chi',
    group: 'ta',
    strokes: _strokesChi17,
  ),
  HiraganaCharacter(
    character: 'つ',
    romanji: 'tsu',
    group: 'ta',
    strokes: _strokesTsu18,
  ),
  HiraganaCharacter(
    character: 'て',
    romanji: 'te',
    group: 'ta',
    strokes: _strokesTe19,
  ),
  HiraganaCharacter(
    character: 'と',
    romanji: 'to',
    group: 'ta',
    strokes: _strokesTo20,
  ),
];

const List<HiraganaStroke> _strokesNa21 = [
  HiraganaStroke([
    StrokePoint(200, 350),
    StrokePoint(350, 360),
    StrokePoint(500, 365),
    StrokePoint(650, 360),
    StrokePoint(780, 345),
  ]),
  HiraganaStroke([
    StrokePoint(480, 150),
    StrokePoint(480, 280),
    StrokePoint(480, 365),
    StrokePoint(480, 470),
    StrokePoint(480, 570),
    StrokePoint(480, 670),
  ]),
  HiraganaStroke([
    StrokePoint(680, 200),
    StrokePoint(710, 260),
    StrokePoint(730, 330),
    StrokePoint(730, 390),
    StrokePoint(720, 430),
  ]),
  HiraganaStroke([
    StrokePoint(580, 500),
    StrokePoint(640, 530),
    StrokePoint(700, 580),
    StrokePoint(740, 640),
    StrokePoint(740, 700),
    StrokePoint(710, 740),
    StrokePoint(650, 750),
    StrokePoint(600, 730),
  ]),
];

const List<HiraganaStroke> _strokesNi22 = [
  HiraganaStroke([
    StrokePoint(280, 160),
    StrokePoint(280, 280),
    StrokePoint(280, 380),
    StrokePoint(280, 480),
    StrokePoint(280, 580),
    StrokePoint(280, 680),
  ]),
  HiraganaStroke([
    StrokePoint(340, 300),
    StrokePoint(460, 310),
    StrokePoint(580, 315),
    StrokePoint(700, 305),
    StrokePoint(780, 285),
  ]),
  HiraganaStroke([
    StrokePoint(340, 520),
    StrokePoint(460, 530),
    StrokePoint(580, 535),
    StrokePoint(700, 525),
    StrokePoint(780, 505),
  ]),
];

const List<HiraganaStroke> _strokesNu23 = [
  HiraganaStroke([
    StrokePoint(220, 180),
    StrokePoint(380, 240),
    StrokePoint(500, 340),
    StrokePoint(550, 440),
    StrokePoint(510, 510),
    StrokePoint(440, 550),
    StrokePoint(390, 560),
    StrokePoint(400, 610),
    StrokePoint(480, 670),
    StrokePoint(580, 700),
    StrokePoint(680, 690),
    StrokePoint(760, 640),
    StrokePoint(790, 560),
    StrokePoint(770, 480),
    StrokePoint(700, 440),
    StrokePoint(620, 430),
  ]),
];

const List<HiraganaStroke> _strokesNe24 = [
  HiraganaStroke([
    StrokePoint(280, 160),
    StrokePoint(280, 280),
    StrokePoint(280, 380),
    StrokePoint(280, 480),
    StrokePoint(280, 580),
    StrokePoint(280, 680),
  ]),
  HiraganaStroke([
    StrokePoint(280, 380),
    StrokePoint(400, 380),
    StrokePoint(550, 370),
    StrokePoint(700, 330),
    StrokePoint(760, 260),
    StrokePoint(740, 320),
    StrokePoint(650, 390),
    StrokePoint(500, 430),
    StrokePoint(400, 480),
    StrokePoint(380, 550),
    StrokePoint(420, 600),
    StrokePoint(500, 610),
    StrokePoint(570, 570),
    StrokePoint(600, 520),
  ]),
];

const List<HiraganaStroke> _strokesNo25 = [
  HiraganaStroke([
    StrokePoint(450, 180),
    StrokePoint(560, 230),
    StrokePoint(640, 310),
    StrokePoint(680, 400),
    StrokePoint(680, 490),
    StrokePoint(650, 570),
    StrokePoint(580, 630),
    StrokePoint(490, 660),
    StrokePoint(400, 660),
    StrokePoint(320, 630),
    StrokePoint(260, 570),
    StrokePoint(240, 490),
    StrokePoint(250, 420),
    StrokePoint(300, 360),
    StrokePoint(370, 320),
    StrokePoint(440, 300),
  ]),
];

const List<HiraganaCharacter> hiraganaNa = [
  HiraganaCharacter(
    character: 'な',
    romanji: 'na',
    group: 'na',
    strokes: _strokesNa21,
  ),
  HiraganaCharacter(
    character: 'に',
    romanji: 'ni',
    group: 'na',
    strokes: _strokesNi22,
  ),
  HiraganaCharacter(
    character: 'ぬ',
    romanji: 'nu',
    group: 'na',
    strokes: _strokesNu23,
  ),
  HiraganaCharacter(
    character: 'ね',
    romanji: 'ne',
    group: 'na',
    strokes: _strokesNe24,
  ),
  HiraganaCharacter(
    character: 'の',
    romanji: 'no',
    group: 'na',
    strokes: _strokesNo25,
  ),
];

const List<HiraganaStroke> _strokesHa26 = [
  HiraganaStroke([
    StrokePoint(260, 160),
    StrokePoint(260, 280),
    StrokePoint(260, 380),
    StrokePoint(260, 480),
    StrokePoint(260, 580),
    StrokePoint(260, 680),
    StrokePoint(275, 730),
  ]),
  HiraganaStroke([
    StrokePoint(320, 380),
    StrokePoint(440, 390),
    StrokePoint(560, 395),
    StrokePoint(680, 385),
    StrokePoint(760, 370),
  ]),
  HiraganaStroke([
    StrokePoint(680, 160),
    StrokePoint(680, 280),
    StrokePoint(680, 380),
    StrokePoint(680, 390),
    StrokePoint(680, 490),
    StrokePoint(680, 590),
    StrokePoint(680, 690),
  ]),
];

const List<HiraganaStroke> _strokesHi27 = [
  HiraganaStroke([
    StrokePoint(280, 280),
    StrokePoint(360, 260),
    StrokePoint(460, 260),
    StrokePoint(560, 300),
    StrokePoint(630, 360),
    StrokePoint(660, 430),
    StrokePoint(660, 500),
    StrokePoint(630, 560),
    StrokePoint(570, 600),
    StrokePoint(490, 610),
    StrokePoint(410, 600),
    StrokePoint(340, 570),
    StrokePoint(300, 510),
    StrokePoint(280, 450),
  ]),
];

const List<HiraganaStroke> _strokesFu28 = [
  HiraganaStroke([
    StrokePoint(420, 140),
    StrokePoint(470, 180),
    StrokePoint(520, 200),
    StrokePoint(560, 180),
    StrokePoint(600, 140),
  ]),
  HiraganaStroke([
    StrokePoint(300, 320),
    StrokePoint(320, 380),
    StrokePoint(340, 440),
    StrokePoint(350, 490),
  ]),
  HiraganaStroke([
    StrokePoint(440, 300),
    StrokePoint(490, 350),
    StrokePoint(530, 420),
    StrokePoint(550, 490),
    StrokePoint(540, 550),
    StrokePoint(500, 600),
    StrokePoint(440, 630),
    StrokePoint(380, 640),
  ]),
  HiraganaStroke([
    StrokePoint(660, 320),
    StrokePoint(650, 380),
    StrokePoint(630, 440),
    StrokePoint(620, 490),
  ]),
];

const List<HiraganaStroke> _strokesHe29 = [
  HiraganaStroke([
    StrokePoint(200, 420),
    StrokePoint(320, 380),
    StrokePoint(440, 320),
    StrokePoint(500, 270),
    StrokePoint(540, 270),
    StrokePoint(600, 330),
    StrokePoint(700, 410),
    StrokePoint(800, 460),
  ]),
];

const List<HiraganaStroke> _strokesHo30 = [
  HiraganaStroke([
    StrokePoint(280, 160),
    StrokePoint(280, 280),
    StrokePoint(280, 380),
    StrokePoint(280, 480),
    StrokePoint(280, 580),
    StrokePoint(280, 680),
  ]),
  HiraganaStroke([
    StrokePoint(340, 300),
    StrokePoint(460, 310),
    StrokePoint(580, 315),
    StrokePoint(700, 305),
    StrokePoint(780, 285),
  ]),
  HiraganaStroke([
    StrokePoint(340, 520),
    StrokePoint(460, 530),
    StrokePoint(580, 535),
    StrokePoint(700, 525),
    StrokePoint(780, 505),
  ]),
  HiraganaStroke([
    StrokePoint(700, 160),
    StrokePoint(700, 280),
    StrokePoint(700, 300),
    StrokePoint(700, 400),
    StrokePoint(700, 500),
    StrokePoint(700, 600),
    StrokePoint(700, 720),
  ]),
];

const List<HiraganaCharacter> hiraganaHa = [
  HiraganaCharacter(
    character: 'は',
    romanji: 'ha',
    group: 'ha',
    strokes: _strokesHa26,
  ),
  HiraganaCharacter(
    character: 'ひ',
    romanji: 'hi',
    group: 'ha',
    strokes: _strokesHi27,
  ),
  HiraganaCharacter(
    character: 'ふ',
    romanji: 'fu',
    group: 'ha',
    strokes: _strokesFu28,
  ),
  HiraganaCharacter(
    character: 'へ',
    romanji: 'he',
    group: 'ha',
    strokes: _strokesHe29,
  ),
  HiraganaCharacter(
    character: 'ほ',
    romanji: 'ho',
    group: 'ha',
    strokes: _strokesHo30,
  ),
];

const List<HiraganaStroke> _strokesMa31 = [
  HiraganaStroke([
    StrokePoint(280, 250),
    StrokePoint(420, 260),
    StrokePoint(560, 265),
    StrokePoint(700, 250),
  ]),
  HiraganaStroke([
    StrokePoint(280, 500),
    StrokePoint(420, 510),
    StrokePoint(560, 515),
    StrokePoint(700, 500),
  ]),
  HiraganaStroke([
    StrokePoint(480, 150),
    StrokePoint(480, 250),
    StrokePoint(480, 370),
    StrokePoint(480, 500),
    StrokePoint(480, 600),
    StrokePoint(480, 710),
  ]),
];

const List<HiraganaStroke> _strokesMi32 = [
  HiraganaStroke([
    StrokePoint(200, 300),
    StrokePoint(320, 310),
    StrokePoint(440, 325),
    StrokePoint(540, 350),
    StrokePoint(620, 390),
    StrokePoint(670, 440),
    StrokePoint(690, 490),
    StrokePoint(680, 530),
    StrokePoint(640, 540),
  ]),
  HiraganaStroke([
    StrokePoint(700, 150),
    StrokePoint(700, 260),
    StrokePoint(700, 370),
    StrokePoint(700, 490),
    StrokePoint(700, 590),
    StrokePoint(700, 690),
  ]),
];

const List<HiraganaStroke> _strokesMu33 = [
  HiraganaStroke([
    StrokePoint(200, 350),
    StrokePoint(350, 360),
    StrokePoint(500, 365),
    StrokePoint(650, 355),
    StrokePoint(780, 335),
  ]),
  HiraganaStroke([
    StrokePoint(500, 200),
    StrokePoint(500, 290),
    StrokePoint(500, 365),
    StrokePoint(510, 440),
    StrokePoint(550, 490),
    StrokePoint(600, 510),
    StrokePoint(630, 490),
    StrokePoint(620, 440),
    StrokePoint(580, 420),
    StrokePoint(540, 440),
    StrokePoint(510, 480),
    StrokePoint(500, 540),
    StrokePoint(500, 620),
    StrokePoint(500, 720),
  ]),
  HiraganaStroke([
    StrokePoint(700, 400),
    StrokePoint(720, 450),
    StrokePoint(740, 510),
    StrokePoint(750, 560),
  ]),
];

const List<HiraganaStroke> _strokesMe34 = [
  HiraganaStroke([
    StrokePoint(220, 200),
    StrokePoint(340, 280),
    StrokePoint(460, 370),
    StrokePoint(540, 450),
    StrokePoint(560, 530),
    StrokePoint(520, 590),
    StrokePoint(440, 620),
    StrokePoint(360, 620),
  ]),
  HiraganaStroke([
    StrokePoint(680, 200),
    StrokePoint(580, 290),
    StrokePoint(480, 390),
    StrokePoint(420, 470),
    StrokePoint(400, 540),
    StrokePoint(420, 600),
    StrokePoint(480, 650),
    StrokePoint(560, 680),
    StrokePoint(640, 680),
    StrokePoint(710, 650),
    StrokePoint(760, 590),
    StrokePoint(770, 510),
  ]),
];

const List<HiraganaStroke> _strokesMo35 = [
  HiraganaStroke([
    StrokePoint(300, 250),
    StrokePoint(420, 260),
    StrokePoint(540, 265),
    StrokePoint(660, 255),
    StrokePoint(760, 235),
  ]),
  HiraganaStroke([
    StrokePoint(500, 150),
    StrokePoint(500, 250),
    StrokePoint(500, 350),
    StrokePoint(500, 450),
    StrokePoint(500, 550),
    StrokePoint(500, 650),
    StrokePoint(500, 730),
  ]),
  HiraganaStroke([
    StrokePoint(350, 450),
    StrokePoint(450, 460),
    StrokePoint(550, 465),
    StrokePoint(650, 455),
  ]),
];

const List<HiraganaCharacter> hiraganaMa = [
  HiraganaCharacter(
    character: 'ま',
    romanji: 'ma',
    group: 'ma',
    strokes: _strokesMa31,
  ),
  HiraganaCharacter(
    character: 'み',
    romanji: 'mi',
    group: 'ma',
    strokes: _strokesMi32,
  ),
  HiraganaCharacter(
    character: 'む',
    romanji: 'mu',
    group: 'ma',
    strokes: _strokesMu33,
  ),
  HiraganaCharacter(
    character: 'め',
    romanji: 'me',
    group: 'ma',
    strokes: _strokesMe34,
  ),
  HiraganaCharacter(
    character: 'も',
    romanji: 'mo',
    group: 'ma',
    strokes: _strokesMo35,
  ),
];

const List<HiraganaStroke> _strokesYa36 = [
  HiraganaStroke([
    StrokePoint(250, 200),
    StrokePoint(370, 210),
    StrokePoint(480, 230),
    StrokePoint(560, 260),
    StrokePoint(600, 300),
  ]),
  HiraganaStroke([
    StrokePoint(220, 300),
    StrokePoint(320, 360),
    StrokePoint(430, 430),
    StrokePoint(540, 500),
    StrokePoint(650, 560),
    StrokePoint(740, 600),
  ]),
  HiraganaStroke([
    StrokePoint(620, 250),
    StrokePoint(630, 340),
    StrokePoint(640, 430),
    StrokePoint(650, 520),
    StrokePoint(660, 610),
    StrokePoint(670, 690),
  ]),
];

const List<HiraganaStroke> _strokesYu37 = [
  HiraganaStroke([
    StrokePoint(380, 150),
    StrokePoint(380, 260),
    StrokePoint(380, 360),
    StrokePoint(400, 450),
    StrokePoint(440, 520),
    StrokePoint(500, 580),
    StrokePoint(580, 610),
    StrokePoint(660, 600),
  ]),
  HiraganaStroke([
    StrokePoint(680, 150),
    StrokePoint(680, 260),
    StrokePoint(680, 370),
    StrokePoint(680, 480),
    StrokePoint(680, 580),
    StrokePoint(680, 670),
    StrokePoint(680, 730),
  ]),
];

const List<HiraganaStroke> _strokesYo38 = [
  HiraganaStroke([
    StrokePoint(250, 350),
    StrokePoint(370, 360),
    StrokePoint(490, 365),
    StrokePoint(610, 360),
    StrokePoint(700, 340),
  ]),
  HiraganaStroke([
    StrokePoint(550, 200),
    StrokePoint(550, 280),
    StrokePoint(550, 350),
    StrokePoint(550, 365),
    StrokePoint(550, 470),
    StrokePoint(550, 570),
    StrokePoint(550, 670),
    StrokePoint(550, 730),
  ]),
];

const List<HiraganaCharacter> hiraganaYa = [
  HiraganaCharacter(
    character: 'や',
    romanji: 'ya',
    group: 'ya',
    strokes: _strokesYa36,
  ),
  HiraganaCharacter(
    character: 'ゆ',
    romanji: 'yu',
    group: 'ya',
    strokes: _strokesYu37,
  ),
  HiraganaCharacter(
    character: 'よ',
    romanji: 'yo',
    group: 'ya',
    strokes: _strokesYo38,
  ),
];

const List<HiraganaStroke> _strokesRa39 = [
  HiraganaStroke([
    StrokePoint(320, 180),
    StrokePoint(430, 190),
    StrokePoint(540, 195),
    StrokePoint(620, 190),
  ]),
  HiraganaStroke([
    StrokePoint(500, 250),
    StrokePoint(500, 340),
    StrokePoint(500, 410),
    StrokePoint(500, 470),
    StrokePoint(510, 530),
    StrokePoint(540, 580),
    StrokePoint(600, 610),
    StrokePoint(660, 620),
    StrokePoint(740, 600),
  ]),
];

const List<HiraganaStroke> _strokesRi40 = [
  HiraganaStroke([
    StrokePoint(320, 160),
    StrokePoint(320, 270),
    StrokePoint(320, 370),
    StrokePoint(320, 470),
    StrokePoint(320, 530),
  ]),
  HiraganaStroke([
    StrokePoint(620, 160),
    StrokePoint(620, 270),
    StrokePoint(620, 370),
    StrokePoint(620, 470),
    StrokePoint(610, 540),
    StrokePoint(580, 600),
    StrokePoint(530, 640),
    StrokePoint(470, 660),
    StrokePoint(410, 650),
  ]),
];

const List<HiraganaStroke> _strokesRu41 = [
  HiraganaStroke([
    StrokePoint(650, 160),
    StrokePoint(630, 240),
    StrokePoint(590, 310),
    StrokePoint(540, 370),
    StrokePoint(480, 410),
    StrokePoint(420, 430),
    StrokePoint(360, 430),
    StrokePoint(320, 410),
    StrokePoint(300, 380),
    StrokePoint(310, 350),
    StrokePoint(340, 330),
    StrokePoint(380, 320),
    StrokePoint(430, 340),
    StrokePoint(470, 380),
    StrokePoint(500, 430),
    StrokePoint(520, 490),
    StrokePoint(530, 560),
    StrokePoint(520, 620),
    StrokePoint(490, 670),
    StrokePoint(450, 700),
    StrokePoint(400, 720),
  ]),
];

const List<HiraganaStroke> _strokesRe42 = [
  HiraganaStroke([
    StrokePoint(280, 160),
    StrokePoint(280, 270),
    StrokePoint(280, 370),
    StrokePoint(280, 470),
    StrokePoint(280, 570),
    StrokePoint(280, 680),
  ]),
  HiraganaStroke([
    StrokePoint(280, 370),
    StrokePoint(400, 380),
    StrokePoint(550, 370),
    StrokePoint(700, 320),
    StrokePoint(750, 250),
    StrokePoint(730, 320),
    StrokePoint(660, 400),
    StrokePoint(560, 460),
    StrokePoint(460, 500),
    StrokePoint(400, 520),
  ]),
  HiraganaStroke([
    StrokePoint(400, 520),
    StrokePoint(470, 560),
    StrokePoint(550, 580),
    StrokePoint(630, 570),
    StrokePoint(700, 530),
    StrokePoint(750, 470),
  ]),
];

const List<HiraganaStroke> _strokesRo43 = [
  HiraganaStroke([
    StrokePoint(650, 160),
    StrokePoint(630, 240),
    StrokePoint(580, 310),
    StrokePoint(520, 370),
    StrokePoint(460, 410),
    StrokePoint(400, 430),
    StrokePoint(350, 430),
    StrokePoint(310, 410),
    StrokePoint(290, 380),
    StrokePoint(300, 350),
    StrokePoint(330, 330),
    StrokePoint(370, 320),
    StrokePoint(420, 340),
    StrokePoint(460, 380),
    StrokePoint(500, 430),
    StrokePoint(520, 490),
    StrokePoint(530, 560),
    StrokePoint(540, 640),
    StrokePoint(540, 720),
  ]),
];

const List<HiraganaCharacter> hiraganaRa = [
  HiraganaCharacter(
    character: 'ら',
    romanji: 'ra',
    group: 'ra',
    strokes: _strokesRa39,
  ),
  HiraganaCharacter(
    character: 'り',
    romanji: 'ri',
    group: 'ra',
    strokes: _strokesRi40,
  ),
  HiraganaCharacter(
    character: 'る',
    romanji: 'ru',
    group: 'ra',
    strokes: _strokesRu41,
  ),
  HiraganaCharacter(
    character: 'れ',
    romanji: 're',
    group: 'ra',
    strokes: _strokesRe42,
  ),
  HiraganaCharacter(
    character: 'ろ',
    romanji: 'ro',
    group: 'ra',
    strokes: _strokesRo43,
  ),
];

const List<HiraganaStroke> _strokesWa44 = [
  HiraganaStroke([
    StrokePoint(280, 160),
    StrokePoint(280, 270),
    StrokePoint(280, 370),
    StrokePoint(280, 470),
    StrokePoint(280, 570),
    StrokePoint(280, 680),
  ]),
  HiraganaStroke([
    StrokePoint(280, 370),
    StrokePoint(400, 380),
    StrokePoint(530, 380),
    StrokePoint(640, 350),
    StrokePoint(720, 290),
    StrokePoint(750, 230),
    StrokePoint(740, 290),
    StrokePoint(720, 360),
    StrokePoint(670, 430),
    StrokePoint(600, 490),
    StrokePoint(520, 540),
    StrokePoint(430, 570),
    StrokePoint(350, 580),
    StrokePoint(300, 560),
    StrokePoint(280, 520),
  ]),
];

const List<HiraganaStroke> _strokesWo45 = [
  HiraganaStroke([
    StrokePoint(200, 350),
    StrokePoint(350, 360),
    StrokePoint(500, 365),
    StrokePoint(650, 355),
    StrokePoint(780, 335),
  ]),
  HiraganaStroke([
    StrokePoint(480, 150),
    StrokePoint(480, 260),
    StrokePoint(480, 365),
    StrokePoint(480, 470),
    StrokePoint(480, 570),
    StrokePoint(480, 670),
  ]),
  HiraganaStroke([
    StrokePoint(480, 570),
    StrokePoint(540, 560),
    StrokePoint(600, 530),
    StrokePoint(650, 480),
    StrokePoint(680, 420),
    StrokePoint(680, 350),
    StrokePoint(650, 300),
    StrokePoint(600, 280),
    StrokePoint(540, 280),
    StrokePoint(500, 300),
  ]),
];

const List<HiraganaStroke> _strokesN46 = [
  HiraganaStroke([
    StrokePoint(300, 180),
    StrokePoint(340, 280),
    StrokePoint(380, 380),
    StrokePoint(420, 460),
    StrokePoint(460, 520),
    StrokePoint(510, 560),
    StrokePoint(570, 580),
    StrokePoint(630, 570),
    StrokePoint(690, 530),
    StrokePoint(740, 470),
    StrokePoint(770, 400),
    StrokePoint(780, 320),
    StrokePoint(770, 250),
    StrokePoint(740, 200),
  ]),
];

const List<HiraganaCharacter> hiraganaWa = [
  HiraganaCharacter(
    character: 'わ',
    romanji: 'wa',
    group: 'wa',
    strokes: _strokesWa44,
  ),
  HiraganaCharacter(
    character: 'を',
    romanji: 'wo',
    group: 'wa',
    strokes: _strokesWo45,
  ),
  HiraganaCharacter(
    character: 'ん',
    romanji: 'n',
    group: 'wa',
    strokes: _strokesN46,
  ),
];

const List<HiraganaGroup> hiraganaGroups = [
  HiraganaGroup(name: 'a', label: 'A Row', characters: hiraganaA),
  HiraganaGroup(name: 'ka', label: 'Ka Row', characters: hiraganaKa),
  HiraganaGroup(name: 'sa', label: 'Sa Row', characters: hiraganaSa),
  HiraganaGroup(name: 'ta', label: 'Ta Row', characters: hiraganaTa),
  HiraganaGroup(name: 'na', label: 'Na Row', characters: hiraganaNa),
  HiraganaGroup(name: 'ha', label: 'Ha Row', characters: hiraganaHa),
  HiraganaGroup(name: 'ma', label: 'Ma Row', characters: hiraganaMa),
  HiraganaGroup(name: 'ya', label: 'Ya Row', characters: hiraganaYa),
  HiraganaGroup(name: 'ra', label: 'Ra Row', characters: hiraganaRa),
  HiraganaGroup(name: 'wa', label: 'Wa Row', characters: hiraganaWa),
];

const List<HiraganaCharacter> allHiragana = [
  ...hiraganaA,
  ...hiraganaKa,
  ...hiraganaSa,
  ...hiraganaTa,
  ...hiraganaNa,
  ...hiraganaHa,
  ...hiraganaMa,
  ...hiraganaYa,
  ...hiraganaRa,
  ...hiraganaWa,
];
