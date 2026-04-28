game-name-tienlen = تيين لين (الصعود للفوز)

tienlen-set-variant = نوع اللعبة: { $choice }
tienlen-select-variant = اختر نوع لعبة "تيين لين":
tienlen-option-changed-variant = تم ضبط نوع اللعبة على { $choice }.

tienlen-set-match-length = طول المباراة: { $choice }
tienlen-select-match-length = اختر طول المباراة:
tienlen-option-changed-match-length = تم ضبط طول المباراة على { $choice }.

tienlen-set-turn-timer = مؤقت الدور: { $choice }
tienlen-select-turn-timer = اختر مدة مؤقت الدور:
tienlen-option-changed-turn-timer = تم ضبط مؤقت الدور على { $choice }.

tienlen-variant-south = تيين لين الجنوبية
tienlen-variant-north = تيين لين الشمالية
tienlen-match-1 = جولة واحدة
tienlen-match-3 = الأفضل من 3
tienlen-match-5 = الأفضل من 5

tienlen-timer-10 = 10 ثوانٍ
tienlen-timer-15 = 15 ثانية
tienlen-timer-20 = 20 ثانية
tienlen-timer-30 = 30 ثانية
tienlen-timer-45 = 45 ثانية
tienlen-timer-60 = 60 ثانية
tienlen-timer-90 = 90 ثانية
tienlen-timer-unlimited = غير محدود

tienlen-game-start = تبدأ الآن مباراة "تيين لين".
tienlen-new-hand = الجولة { $round }.
tienlen-dealt = تم توزيع 13 بطاقة: { $cards }.
tienlen-variant-status = نمط اللعب في هذه الطاولة هو { $variant }.

tienlen-card-unselected = { $card }
tienlen-card-selected = { $card } (مختارة)

tienlen-play-none = اختر البطاقات التي ترغب في لعبها.
tienlen-play-invalid = المجموعة المختارة غير صالحة.
tienlen-play-combo = لعب { $combo }

tienlen-pass = تمرير
tienlen-check-trick = التحقق من الخدعة الحالية
tienlen-read-hand = قراءة اليد
tienlen-read-card-counts = قراءة عدد بطاقات اللاعبين
tienlen-check-variant = التحقق من نوع اللعبة
tienlen-check-turn-timer = التحقق من مؤقت الدور
tienlen-timer-disabled = مؤقت الدور معطل.
tienlen-timer-remaining = يتبقى { $seconds } ثانية.

tienlen-error-no-cards = لم تختر أي بطاقات.
tienlen-error-invalid-combo = البطاقات المختارة لا تشكل مجموعة صالحة.
tienlen-error-first-turn-3s = يجب أن تتضمن اللعبة الافتتاحية بطاقة "3 السبيت" (3 of Spades).
tienlen-error-pass-lock = لقد قمت بالتمرير بالفعل في هذه الخدعة، يجب عليك الانتظار للخدعة التالية.
tienlen-error-pass-lock-two = لقد قمت بالتمرير بالفعل في هذه الخدعة. يمكنك العودة فقط بحركة "قطع" قانونية ضد بطاقات الـ "2" الحالية.
tienlen-error-wrong-length = يجب لعب { $count } { $count ->
    [one] بطاقة واحدة
    [two] بطاقتين
    [few] بطاقات
    *[other] بطاقة
    } بالضبط للتغلب على الخدعة الحالية.
tienlen-error-must-match-type = يجب أن تطابق مجموعتك نوع المجموعة الحالية في الخدعة.
tienlen-error-structure-mismatch = في نمط "تيين لين الشمالية"، يجب أن تطابق حركتك الرمز المطلوب أو بنية اللون للخدعة الحالية.
tienlen-error-lower-combo = مجموعتك لا تتغلب على الخدعة الحالية.
tienlen-error-must-play = لا يمكنك التمرير عند بدء خدعة جديدة.
tienlen-error-cannot-finish-on-two = في نمط "تيين لين الشمالية"، لا يمكنك إنهاء الجولة ببطاقات الـ "2" أو تركها وحيدة في يدك.
tienlen-error-cannot-lead-three-consecutive-pairs = في نمط "تيين لين الجنوبية"، لا يمكن استخدام ثلاثة أزواج متتالية لافتتاح الخدعة.

tienlen-player-plays-single = يلعب { $player } بطاقة منفردة: { $card }.
tienlen-player-plays-combo = يلعب { $player } مجموعة { $combo }: { $cards }.
tienlen-player-passes = يمرر { $player } دوره.
tienlen-trick-empty = لا توجد بطاقات في الخدعة الحالية.
tienlen-trick-status = { $player } يتصدر بمجموعة { $combo }: { $cards }.
tienlen-your-hand = يدك: { $cards }.
tienlen-card-count-line = { $player } يملك { $count } { $count ->
    [one] بطاقة واحدة
    [two] بطاقتين
    [few] بطاقات
    *[other] بطاقة
    }

tienlen-combo-single = منفردة
tienlen-combo-pair = زوج
tienlen-combo-triple = ثلاثية
tienlen-combo-four_of_a_kind = رباعية
tienlen-combo-straight = متسلسلة (ستريت)
tienlen-combo-consecutive_pairs = أزواج متتالية

tienlen-hand-winner = فاز { $player } بالجولة. يملك الآن { $wins } { $wins ->
    [one] فوزاً واحداً
    [two] فوزين
    [few] انتصارات
    *[other] فوزاً
    } من أصل { $target }.
tienlen-game-over = انتهت المباراة. فاز { $player } بـ "تيين لين".
tienlen-line-format = { $rank }. { $player }: { $score } انتصارات
