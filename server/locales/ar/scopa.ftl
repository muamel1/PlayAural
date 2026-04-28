game-name-scopa = سكوبا (Scopa)

scopa-initial-table = بطاقات الطاولة: { $cards }
scopa-no-initial-table = لا توجد بطاقات على الطاولة للبدء.
scopa-you-collect = قمت بجمع { $cards } بواسطة { $card }
scopa-player-collects = قام { $player } بجمع { $cards } بواسطة { $card }
scopa-you-put-down = وضعت البطاقة { $card }.
scopa-player-puts-down = قام { $player } بوضع { $card }.
scopa-scopa-suffix =  - سكوبا! (SCOPA)
scopa-clear-table-suffix = ، مع إفراغ الطاولة تماماً.
scopa-remaining-cards = يحصل { $player } على بطاقات الطاولة المتبقية.
scopa-scoring-round = جاري حساب نقاط الجولة...
scopa-most-cards = سجل { $player } نقطة واحدة لجمعه أكبر عدد من البطاقات ({ $count } بطاقة).
scopa-most-cards-tie = تعادل في عدد البطاقات - لم تمنح أي نقطة.
scopa-most-diamonds = سجل { $player } نقطة واحدة لجمعه أكبر عدد من بطاقات "الجوهر" ({ $count } بطاقة جوهر).
scopa-most-diamonds-tie = تعادل في عدد بطاقات الجوهر - لم تمنح أي نقطة.
scopa-seven-diamonds = سجل { $player } نقطة واحدة للحصول على "7 الجوهر".
scopa-seven-diamonds-multi = سجل { $player } نقطة واحدة لامتلاكه أكثر عدد من "7 الجوهر" ({ $count } × 7 الجوهر).
scopa-seven-diamonds-tie = تعادل في بطاقات "7 الجوهر" - لم تمنح أي نقطة.
scopa-most-sevens = سجل { $player } نقطة واحدة لجمعه أكبر عدد من بطاقات السبعة ({ $count } بطاقة).
scopa-most-sevens-tie = تعادل في عدد بطاقات السبعة - لم تمنح أي نقطة.
scopa-primiera = سجل { $player } نقطة واحدة للـ "بريميرا" (النقاط: { $score }).
scopa-primiera-tie = تعادل في الـ "بريميرا" - لم تمنح أي نقطة.
scopa-napola = سجل { $player } { $points } نقاط للـ "نابولا".

scopa-manual-select-prompt = يجب عليك اختيار البطاقات التي تريد الاستحواذ عليها.

scopa-capture-option = الاستحواذ على { $cards }

scopa-error-conflict-escoba-asso = لا يمكن تفعيل خياري "إسكوبا" و "الآس يأخذ الكل" في وقت واحد.

scopa-round-scores = نتائج الجولة:
scopa-round-score-line = { $player }: +{ $round_score } (الإجمالي: { $total_score })
scopa-table-empty = لا توجد بطاقات على الطاولة.
scopa-no-such-card = لا توجد بطاقة في هذا الموقع.
scopa-captured-count = لقد استحوذت على { $count } { $count ->
    [one] بطاقة واحدة
    [two] بطاقتين
    [few] بطاقات
    *[other] بطاقة
    }

scopa-view-table = عرض الطاولة
scopa-view-captured = عرض البطاقات المستحوذ عليها
scopa-view-table-card = عرض بطاقة الطاولة { $index }
scopa-pause-timer = إيقاف المؤقت مؤقتاً

scopa-hint-match =  -> { $card }
scopa-hint-multi =  -> { $count } بطاقات

scopa-enter-target-score = أدخل نتيجة الفوز المستهدفة (1-121)
scopa-set-cards-per-deal = عدد البطاقات في كل توزيع: { $cards }
scopa-enter-cards-per-deal = أدخل عدد البطاقات في كل توزيع (1-10)
scopa-set-decks = عدد مجموعات الأوراق: { $decks }
scopa-enter-decks = أدخل عدد مجموعات الأوراق (1-6)
scopa-toggle-escoba = إسكوبا (المجموع يساوي 15): { $enabled }
scopa-toggle-hints = إظهار تلميحات الاستحواذ: { $enabled }
scopa-set-mechanic = آلية السكوبا: { $mechanic }
scopa-select-mechanic = اختر آلية السكوبا
scopa-toggle-instant-win = فوز فوري عند تحقيق سكوبا: { $enabled }
scopa-toggle-team-scoring = تجميع بطاقات الفريق لحساب النقاط: { $enabled }
scopa-toggle-inverse = النمط العكسي (الوصول للهدف = إقصاء): { $enabled }
scopa-toggle-manual = اختيار الاستحواذ يدوياً: { $enabled }
scopa-toggle-asso = الآس يأخذ الكل (Asso Piglia Tutto): { $enabled }
scopa-toggle-primiera = حساب نقاط البريميرا: { $enabled }
scopa-toggle-napola = حساب نقاط النابولا (تسلسل الجوهر): { $enabled }

scopa-option-changed-cards = تم ضبط عدد البطاقات في كل توزيع على { $cards }.
scopa-option-changed-decks = تم ضبط عدد مجموعات الأوراق على { $decks }.
scopa-option-changed-escoba = خيار إسكوبا: { $enabled }.
scopa-option-changed-hints = تلميحات الاستحواذ: { $enabled }.
scopa-option-changed-mechanic = تم ضبط آلية السكوبا على { $mechanic }.
scopa-option-changed-instant = الفوز الفوري عند السكوبا: { $enabled }.
scopa-option-changed-team-scoring = حساب نقاط الفريق: { $enabled }.
scopa-option-changed-inverse = النمط العكسي: { $enabled }.
scopa-option-changed-manual = اختيار الاستحواذ يدوياً: { $enabled }.
scopa-option-changed-asso = خيار الآس يأخذ الكل: { $enabled }.
scopa-option-changed-primiera = حساب نقاط البريميرا: { $enabled }.
scopa-option-changed-napola = حساب نقاط النابولا: { $enabled }.

scopa-mechanic-normal = عادي
scopa-mechanic-no_scopas = بدون سكوبا
scopa-mechanic-only_scopas = سكوبا فقط

scopa-timer-not-active = مؤقت الجولة غير نشط.

scopa-error-not-enough-cards = لا توجد بطاقات كافية في { $decks } { $decks ->
    [one] مجموعة
    [two] مجموعتين
    [few] مجموعات
    *[other] مجموعة
    } لـ { $players } { $players ->
    [one] لاعب واحد
    [two] لاعبين
    [few] لاعبين
    *[other] لاعب
    } مع توزيع { $cards_per_deal } لكل منهم. (المطلوب { $cards_needed }، المتوفر { $total_cards } فقط).

scopa-line-format = { $rank }. { $player }: { $points }
