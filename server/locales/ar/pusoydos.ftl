game-name-pusoydos = بوسوي دوس (الاثنان الكبيران)

pusoydos-set-min-entry = الحد الأدنى لعملات الدخول: { $count }
pusoydos-enter-min-entry = أدخل الحد الأدنى لعملات الدخول (الأدنى: 100، الأقصى: 100000):
pusoydos-option-changed-min-entry = تم ضبط الحد الأدنى لعملات الدخول على { $count }.

pusoydos-set-turn-timer = مؤقت الدور: { $choice }
pusoydos-select-turn-timer = اختر مدة مؤقت الدور:
pusoydos-option-changed-turn-timer = تم ضبط مؤقت الدور على { $choice }.

pusoydos-timer-10 = 10 ثوانٍ
pusoydos-timer-15 = 15 ثانية
pusoydos-timer-20 = 20 ثانية
pusoydos-timer-30 = 30 ثانية
pusoydos-timer-45 = 45 ثانية
pusoydos-timer-60 = 60 ثانية
pusoydos-timer-90 = 90 ثانية
pusoydos-timer-unlimited = غير محدود

pusoydos-set-penalty = مضاعف العقوبة: { $count }
pusoydos-enter-penalty = أدخل مضاعف العقوبة (الأدنى: 1، الأقصى: 500):
pusoydos-option-changed-penalty = تم ضبط مضاعف العقوبة على { $count }.

pusoydos-game-start = تبدأ الآن مباراة "بوسوي دوس"!
pusoydos-new-hand = الجولة { $round }
pusoydos-dealt = تم توزيع 13 بطاقة: { $cards }.

pusoydos-card-unselected = { $card }
pusoydos-card-selected = { $card } (مختارة)

pusoydos-play-none = اختر البطاقات المراد لعبها.
pusoydos-play-invalid = المجموعة المختارة غير صالحة.
pusoydos-play-combo = لعب مجموعة { $combo }

pusoydos-pass = تمرير
pusoydos-check-trick = التحقق من الخدعة الحالية
pusoydos-read-hand = قراءة اليد
pusoydos-check-turn-timer = التحقق من مؤقت الدور
pusoydos-timer-disabled = مؤقت الدور معطل.
pusoydos-timer-remaining = يتبقى { $seconds } ثانية.

pusoydos-error-no-cards = لم تختر أي بطاقات بعد.
pusoydos-error-invalid-combo = البطاقات المختارة لا تشكل مجموعة صالحة.
pusoydos-error-first-turn-3c = يجب أن تتضمن اللعبة الأولى بطاقة "3 الأصبي" (3 of Clubs).
pusoydos-error-wrong-length = يجب لعب { $count } { $count ->
    [one] بطاقة واحدة
    [two] بطاقتين
    [few] بطاقات
    *[other] بطاقة
    } بالضبط للتغلب على المجموعة الحالية.
pusoydos-error-lower-combo = مجموعتك أضعف من المجموعة الحالية في الطاولة.
pusoydos-error-must-play = لا يمكنك التمرير عند بدء مجموعة جديدة.

pusoydos-player-plays-single = يلعب { $player } بطاقة منفردة: { $card }.
pusoydos-player-plays-combo = يلعب { $player } مجموعة { $combo } من بطاقات { $cards }.
pusoydos-player-passes = يمرر { $player } دوره.
pusoydos-trick-won = فاز { $player } بهذه المجموعة.

pusoydos-trick-empty = الطاولة خالية حالياً.
pusoydos-trick-status = لعب { $player } مجموعة { $combo } من بطاقات { $cards }.
pusoydos-your-hand = يدك: { $cards }.
pusoydos-read-card-counts = قراءة عدد بطاقات اللاعبين
pusoydos-card-count-line = { $player } يملك { $count } { $count ->
    [one] بطاقة واحدة
    [two] بطاقتين
    [few] بطاقات
    *[other] بطاقة
    }

pusoydos-combo-single = منفردة
pusoydos-combo-pair = زوج
pusoydos-combo-three_of_a_kind = ثلاثية
pusoydos-combo-straight = متسلسلة (ستريت)
pusoydos-combo-flush = لون موحد (فلاش)
pusoydos-combo-full_house = فول هاوس
pusoydos-combo-four_of_a_kind = رباعية
pusoydos-combo-straight_flush = متسلسلة ملونة (ستريت فلاش)

pusoydos-hand-winner = فاز { $player } بالجولة وكسب { $amount } عملة!
pusoydos-hand-loser = خسر { $player } { $amount } عملة.
pusoydos-game-over = انتهت المباراة! { $player } هو الفائز النهائي!
pusoydos-line-format = { $rank }. { $player }: { $score } عملة
