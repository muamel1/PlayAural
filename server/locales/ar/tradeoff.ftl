game-name-tradeoff = المقايضة (Tradeoff)

tradeoff-round-start = الجولة { $round }.
tradeoff-iteration = التوزيع { $iteration } من أصل 3.

tradeoff-you-rolled = كانت رميتك: { $dice }.
tradeoff-toggle-trade = { $value } ({ $status })
tradeoff-trade-status-trading = للمقايضة
tradeoff-trade-status-keeping = للاحتفاظ
tradeoff-confirm-trades = تأكيد المقايضة ({ $count } { $count ->
    [one] نرد واحد
    [two] نردين
    [few] أحجار نرد
    *[other] نرد
    })
tradeoff-keeping = الاحتفاظ بـ { $value }.
tradeoff-trading = مقايضة { $value }.
tradeoff-player-traded = قام { $player } بمقايضة: { $dice }.
tradeoff-player-traded-none = احتفظ { $player } بجميع أحجار النرد.

tradeoff-your-turn-take = دورك لسحب حجر نرد من المجمع.
tradeoff-take-die = سحب { $value } (يتبقى { $remaining })
tradeoff-you-take = سحبت { $value }.
tradeoff-player-takes = سحب { $player } { $value }.

tradeoff-player-scored = { $player } ({ $points } نقطة): { $sets }.
tradeoff-no-sets = { $player }: لا توجد مجموعات.

tradeoff-set-triple = ثلاثية من { $value }
tradeoff-set-group = مجموعة من { $value }
tradeoff-set-mini-straight = متسلسلة مصغرة { $low }-{ $high }
tradeoff-set-double-triple = ثلاثية مزدوجة ({ $v1 } و { $v2 })
tradeoff-set-straight = متسلسلة { $low }-{ $high }
tradeoff-set-double-group = مجموعة مزدوجة ({ $v1 } و { $v2 })
tradeoff-set-all-groups = جميع المجموعات
tradeoff-set-all-triplets = جميع الثلاثيات

tradeoff-round-scores = نتائج الجولة { $round }:
tradeoff-score-line = { $player }: +{ $round_points } (الإجمالي: { $total })
tradeoff-leader = { $player } يتصدر برصيد { $score }.

tradeoff-winner = الفائز هو { $player } برصيد { $score } نقطة!
tradeoff-winners-tie = تعادل! حصل { $players } على { $score } نقطة!

tradeoff-view-hand = عرض يدك
tradeoff-view-pool = عرض مجمع النرد
tradeoff-view-players = عرض اللاعبين
tradeoff-hand-empty = يدك فارغة.
tradeoff-hand-display = يدك ({ $count } { $count ->
    [one] نرد
    [two] نردين
    [few] أحجار نرد
    *[other] نرد
    }): { $dice }
tradeoff-pool-display = مجمع النرد ({ $count } { $count ->
    [one] نرد
    [two] نردين
    [few] أحجار نرد
    *[other] نرد
    }): { $dice }
tradeoff-pool-empty = مجمع النرد فارغ.
tradeoff-player-info = { $player }: { $hand }. قايض: { $traded }.
tradeoff-player-info-no-trade = { $player }: { $hand }. لم يقايض شيئاً.

tradeoff-not-trading-phase = لست في مرحلة المقايضة.
tradeoff-not-taking-phase = لست في مرحلة السحب.
tradeoff-already-confirmed = تم التأكيد بالفعل.
tradeoff-no-die = لا يوجد حجر نرد لتبديل حالته.
tradeoff-no-more-takes = لا توجد عمليات سحب متاحة.
tradeoff-not-in-pool = حجر النرد هذا غير موجود في المجمع.

tradeoff-set-target = النتيجة المستهدفة: { $score }
tradeoff-enter-target = أدخل النتيجة المستهدفة:
tradeoff-option-changed-target = تم ضبط النتيجة المستهدفة على { $score }.
