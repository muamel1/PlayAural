game-name-deadmansdeck = طاولة الرجل الميت

# الإجراءات
deadmansdeck-call-liar = اتهام بالكذب
deadmansdeck-play-selected = لعب البطاقات المختارة
deadmansdeck-clear-selection = مسح الاختيار
deadmansdeck-read-hand = قراءة اليد
deadmansdeck-read-table = قراءة الطاولة
deadmansdeck-read-revolvers = قراءة المسدسات
deadmansdeck-read-card-counts = قراءة عدد البطاقات

# الرتب
deadmansdeck-rank-ace = آص
deadmansdeck-rank-ace-plural = آصات
deadmansdeck-rank-king = ملك
deadmansdeck-rank-king-plural = ملوك
deadmansdeck-rank-queen = ملكة
deadmansdeck-rank-queen-plural = ملكات
deadmansdeck-rank-joker = جوكر
deadmansdeck-rank-joker-plural = جوكرات
deadmansdeck-claim-text = { $count } { $rank }

deadmansdeck-card-label = { $card }
deadmansdeck-selected-card-label = مختار: { $card }
deadmansdeck-card-selected = تم اختيار { $card }.
deadmansdeck-card-unselected = تم إلغاء اختيار { $card }.
deadmansdeck-selection-cleared = تم مسح الاختيار.
deadmansdeck-card-not-found = هذه البطاقة لم تعد متاحة.
deadmansdeck-too-many-selected = يمكنك اختيار 3 بطاقات كحد أقصى.
deadmansdeck-select-card-first = اختر من 1 إلى 3 بطاقات أولاً.
deadmansdeck-no-claim-to-challenge = لا يوجد ادعاء لتحديه.
deadmansdeck-cannot-challenge-self = لا يمكنك تحدي ادعاءاتك الخاصة.
deadmansdeck-action-sequence-running = يرجى الانتظار حتى ينتهي التسلسل الحالي.
deadmansdeck-action-eliminated = تم إقصاؤك.

# أحداث اللعب
deadmansdeck-prepare-revolver = جاري تحضير مسدس { $player }.
deadmansdeck-round-start = الجولة { $round }. بطاقة الطاولة هي { $target }.
deadmansdeck-turn-order = ترتيب الدور في هذه الجولة: { $order }.
deadmansdeck-your-hand = يدك: { $cards }.
deadmansdeck-hand-empty = يدك فارغة.
deadmansdeck-no-cards = لا توجد بطاقات
deadmansdeck-player-skipped-no-cards = { $player } لا يملك بطاقات وتم تخطيه.
deadmansdeck-player-out-of-cards = { $player } لم يعد لديه بطاقات.
deadmansdeck-forced-challenge = يجب على { $player } التحدي لأن الجولة لا يمكن أن تستمر.
deadmansdeck-player-claims = يدعي { $player } امتلاك { $claim }.
deadmansdeck-player-calls-liar = يتهم { $challenger } اللاعب { $accused } بالكذب.
deadmansdeck-forced-liar-call = { $challenger } مجبر على اتهام { $accused } بالكذب.
deadmansdeck-revealed-cards = كشف { $player } عن: { $cards }.
deadmansdeck-bluff-caught = تم كشف الخدعة. يخسر { $accused } التحدي ويجب عليه السحب.
deadmansdeck-truthful-claim = كان الادعاء صادقاً. يخسر { $challenger } التحدي ويجب عليه السحب.
deadmansdeck-roulette-start = يواجه { $player } المسدس.
deadmansdeck-roulette-survived = غرفة فارغة. نجا { $player }. مخاطرة السحب القادم هي 1 من { $remaining }.
deadmansdeck-player-eliminated = انطلقت الرصاصة. تم إقصاء { $player }.
deadmansdeck-player-wins = { $player } هو الناجي الأخير وفاز في طاولة الرجل الميت.
deadmansdeck-no-winner = تعذر تحديد فائز.
deadmansdeck-you-are-eliminated = تم إقصاؤك من هذه اللعبة.

# حالة الطاولة
deadmansdeck-table-round = الجولة { $round }. الهدف: { $target }.
deadmansdeck-table-target-pending = لم يتم تحديده بعد
deadmansdeck-table-current-turn = الدور الحالي: { $player }.
deadmansdeck-table-last-claim = آخر ادعاء: ادعى { $player } امتلاك { $claim }.
deadmansdeck-table-no-claim = لا يوجد ادعاء نشط.
deadmansdeck-table-alive = لا يزالون على قيد الحياة: { $players }.
deadmansdeck-table-eliminated = تم إقصاؤهم: { $players }.

# الإحصائيات والنتائج
deadmansdeck-card-count-line = { $player }: { $count } بطاقة متبقية.
deadmansdeck-card-count-eliminated = { $player }: تم إقصاؤه.

deadmansdeck-revolvers-header = حالة المسدسات
deadmansdeck-revolver-status = { $player }: استخدم { $survived } غرف فارغة؛ مخاطرة السحب القادم 1 من { $remaining }.
deadmansdeck-revolver-eliminated = { $player }: تم إقصاؤه.

deadmansdeck-results-header = نتائج طاولة الرجل الميت
deadmansdeck-results-winner = الفائز: { $player }.
deadmansdeck-results-survived = نجا
deadmansdeck-results-eliminated = تم إقصاؤه
deadmansdeck-results-line = { $player }: { $status }، تحديات صحيحة { $correct }، خدع ناجحة { $bluffs }، نجاة من الروليت { $survivals }.
