game-name-midnight = 1-4-24

# الإجراءات
midnight-roll = رمي النرد
midnight-keep-die = الاحتفاظ بـ { $value }
midnight-bank = تثبيت النقاط

# أحداث اللعب
midnight-turn-start = دور { $player }.
midnight-you-rolled = رميت: { $dice }.
midnight-player-rolled = رمى { $player }: { $dice }.

midnight-you-keep = احتفظت بـ { $die }.
midnight-player-keeps = احتفظ { $player } بـ { $die }.
midnight-you-unkeep = ألغيت الاحتفاظ بـ { $die }.
midnight-player-unkeeps = ألغى { $player } الاحتفاظ بـ { $die }.

midnight-you-have-kept = النرد المحتفظ به: { $kept }. الرميات المتبقية: { $remaining }.
midnight-player-has-kept = احتفظ { $player } بـ: { $kept }. متبقي { $remaining } نرد.

midnight-you-scored = حصلت على { $score } نقطة.
midnight-scored = حصل { $player } على { $score } نقطة.
midnight-you-disqualified = لا تملك (1) و (4). تم استبعادك!
midnight-player-disqualified = لا يملك { $player } (1) و (4). تم استبعاده!

midnight-round-winner = فاز { $player } بالجولة!
midnight-round-tie = تعادل في الجولة بين { $players }.
midnight-all-disqualified = تم استبعاد جميع اللاعبين! لا يوجد فائز في هذه الجولة.

midnight-game-winner = فاز { $player } باللعبة بـ { $wins } جولات فائزة!
midnight-game-tie = تعادل! فاز كل من { $players } بـ { $wins } جولات.

# الإعدادات
midnight-set-rounds = عدد الجولات: { $rounds }
midnight-enter-rounds = أدخل عدد الجولات:
midnight-option-changed-rounds = تم ضبط عدد الجولات إلى { $rounds }.

# الأخطاء والرسائل
midnight-need-to-roll = يجب عليك رمي النرد أولاً.
midnight-no-dice-to-keep = لا يوجد نرد متاح للاحتفاظ به.
midnight-must-keep-one = يجب عليك الاحتفاظ بنرد واحد على الأقل في كل رمية.
midnight-must-roll-first = يجب عليك رمي النرد أولاً.
midnight-keep-all-first = يجب عليك الاحتفاظ بجميع النرد قبل التثبيت.

# حالة النرد
midnight-die-locked = { $value } (مقفل)
midnight-die-kept = { $value } (محتفظ به)
midnight-die-value = { $value }

# النتائج
midnight-end-score = { $rank }. { $player }: { $wins } { $wins ->
    [one] جولة فائزة
   *[other] جولات فائزة
    }

midnight-die-index = نرد { $index }
