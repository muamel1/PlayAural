game-name-tossup = تحدي الرمية

tossup-roll-first = رمي { $count } { $count ->
    [one] نرد واحد
    [two] نردين
    [few] أحجار نرد
    *[other] نرد
    }
tossup-roll-remaining = رمي { $count } { $count ->
    [one] نرد متبقٍ
    [two] نردين متبقيين
    [few] أحجار نرد متبقية
    *[other] نرد متبقٍ
    }
tossup-bank = تأمين { $points } { $points ->
    [one] نقطة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }

tossup-turn-start = دور { $player }. الرصيد: { $score }
tossup-you-roll = كانت رميتك: { $results }.
tossup-player-rolls = رمية { $player } هي: { $results }.

tossup-result-green = { $count } خضراء
tossup-result-yellow = { $count } صفراء
tossup-result-red = { $count } حمراء

tossup-you-have-points = نقاط الدور: { $turn_points }. أحجار النرد المتبقية: { $dice_count }.
tossup-player-has-points = لدى { $player } { $turn_points } من نقاط الدور. يتبقى { $dice_count } من أحجار النرد.

tossup-you-get-fresh = نفدت أحجار النرد! الحصول على { $count } { $count ->
    [one] نرد جديد
    [two] نردين جديدين
    [few] أحجار نرد جديدة
    *[other] نرد جديد
    }.
tossup-player-gets-fresh = يحصل { $player } على { $count } { $count ->
    [one] نرد جديد
    [two] نردين جديدين
    [few] أحجار نرد جديدة
    *[other] نرد جديد
    }.

tossup-you-bust = تعثرت! فقدت { $points } { $points ->
    [one] نقطة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    } في هذا الدور.
tossup-player-busts = تعثر { $player } وفقد { $points } { $points ->
    [one] نقطة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }!

tossup-you-bank = أمنت { $points } { $points ->
    [one] نقطة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }. الرصيد الإجمالي: { $total }.
tossup-player-banks = أمن { $player } { $points } { $points ->
    [one] نقطة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }. الرصيد الإجمالي: { $total }.

tossup-winner = الفائز هو { $player } برصيد { $score } { $score ->
    [one] نقطة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }!
tossup-tie-tiebreaker = تعادل بين { $players }! جولة فاصلة للتعادل!

tossup-set-rules-variant = نوع القواعد: { $variant }
tossup-select-rules-variant = اختر نوع القواعد:
tossup-option-changed-rules = تم تغيير نوع القواعد إلى { $variant }

tossup-set-starting-dice = أحجار نرد البداية: { $count }
tossup-enter-starting-dice = أدخل عدد أحجار نرد البداية:
tossup-option-changed-dice = تم تغيير عدد أحجار نرد البداية إلى { $count }

tossup-rules-standard = القياسية
tossup-rules-PlayAural = PlayAural

tossup-rules-standard-desc = 3 خضراء، 2 صفراء، 1 حمراء لكل نرد. تتعثر إذا لم تظهر أي خضراء وظهرت واحدة حمراء على الأقل.
tossup-rules-PlayAural-desc = توزيع متساوٍ. تتعثر إذا كانت جميع أحجار النرد حمراء.

tossup-need-points = تحتاج إلى نقاط للقيام بالتأمين.

tossup-line-format = { $rank }. { $player }: { $points }
