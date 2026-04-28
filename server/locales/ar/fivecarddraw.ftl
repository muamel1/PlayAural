game-name-fivecarddraw = بوكر السحب بخمس أوراق

# الإعدادات
draw-set-starting-chips = الرصيد البدائي: { $count }
draw-enter-starting-chips = أدخل الرصيد البدائي
draw-option-changed-starting-chips = تم ضبط الرصيد البدائي إلى { $count }.

draw-set-ante = الرهان الابتدائي: { $count }
draw-enter-ante = أدخل مبلغ الرهان الابتدائي
draw-option-changed-ante = تم ضبط الرهان الابتدائي إلى { $count }.

draw-set-turn-timer = مؤقت الدور: { $mode }
draw-select-turn-timer = اختر مؤقت الدور
draw-option-changed-turn-timer = تم ضبط مؤقت الدور إلى { $mode }.

draw-set-raise-mode = نمط الرفع (Raise): { $mode }
draw-select-raise-mode = اختر نمط الرفع
draw-option-changed-raise-mode = تم ضبط نمط الرفع إلى { $mode }.

draw-set-max-raises = الحد الأقصى للرفع: { $count }
draw-enter-max-raises = أدخل الحد الأقصى لعدد مرات الرفع (0 غير محدود)
draw-option-changed-max-raises = تم ضبط الحد الأقصى للرفع إلى { $count }.

# مراحل اللعب
draw-antes-posted = تم وضع الرهان الابتدائي: { $amount }.
draw-betting-round-1 = جولة الرهان الأولى.
draw-betting-round-2 = جولة الرهان الثانية.
draw-begin-draw = مرحلة السحب.
draw-not-draw-phase = ليس وقت السحب الآن.
draw-not-betting = لا يمكنك الرهان أثناء مرحلة السحب.
draw-fold-not-available = لا يمكنك الانسحاب (Fold) أثناء مرحلة السحب.

# الإجراءات
draw-toggle-discard = تبديل استبعاد البطاقة { $index }
draw-card-keep = الاحتفاظ بـ { $card }
draw-card-discard = استبعاد { $card }
draw-card-kept = تم الاحتفاظ بـ { $card }.
draw-card-discarded = تم استبعاد { $card }.
draw-draw-cards = سحب بطاقات
draw-draw-cards-count = سحب { $count } { $count ->
    [one] بطاقة
   *[other] بطاقات
    }
draw-dealt-cards = تم توزيع { $cards } لك.
draw-you-drew-cards = سحبت { $cards }.
draw-you-draw = سحبت { $count } { $count ->
    [one] بطاقة
   *[other] بطاقات
    }.
draw-player-draws = سحب { $player } { $count } { $count ->
    [one] بطاقة
   *[other] بطاقات
    }.
draw-you-stand-pat = فضلت البقاء (Stand pat).
draw-player-stands-pat = فضل { $player } البقاء.
draw-you-discard-limit = يمكنك استبعاد ما يصل إلى { $count } بطاقات.
draw-player-discard-limit = يمكن لـ { $player } استبعاد ما يصل إلى { $count } بطاقات.

draw-card-key = مفتاح البطاقة { $index }

# النتائج
draw-winner-chips = { $rank }. { $player }: { $chips } عملة
