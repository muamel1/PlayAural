game-name-threes = الثلاثات (Threes)

threes-roll = رمي النرد
threes-bank = تأمين النقاط وإنهاء الدور
threes-check-hand = التحقق من أحجار النرد

threes-you-rolled = رميت: { $dice }
threes-player-rolled = رمى { $player }: { $dice }
threes-must-keep = يجب عليك الاحتفاظ بحجر نرد واحد على الأقل قبل الرمي مجدداً.

threes-no-dice-yet = لم تقم بالرمي بعد.
threes-your-dice = أحجار النرد الخاصة بك: { $dice }
threes-dice-locked = مقفل
threes-dice-kept = محتفظ به
threes-score-pair = { $player }: { $score }

threes-you-scored = أحرزت { $score } { $score ->
    [one] نقطة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    } في هذا الدور.
threes-scored = أحرز { $player } { $score } { $score ->
    [one] نقطة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    } في هذا الدور.
threes-you-shot-moon = لقد بلغت القمر! سجلت -30 نقطة!
threes-shot-moon = بلغ { $player } القمر وسجل -30 نقطة!

threes-round-start = الجولة { $round } من أصل { $total }.
threes-round-scores = نتائج الجولة { $round }: { $scores }

threes-winner = الفائز هو { $player } برصيد { $score } { $score ->
    [one] نقطة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }!
threes-tie = تعادل { $players } برصيد { $score } { $score ->
    [one] نقطة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }!

threes-set-rounds = عدد الجولات: { $rounds }
threes-enter-rounds = أدخل عدد الجولات:
threes-option-changed-rounds = تم ضبط عدد الجولات على { $rounds }.

threes-must-bank = يجب عليك تأمين نقاطك الآن.
threes-roll-first = يجب عليك رمي النرد أولاً.
threes-keep-all-first = يجب الاحتفاظ بجميع الأحجار أولاً لتأمين النقاط.
threes-last-die = هذا هو حجر النرد الأخير.

threes-line-format = { $rank }. { $player }: { $points }
threes-dice-format-status = { $value } ({ $status })
