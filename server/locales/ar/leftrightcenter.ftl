game-name-leftrightcenter = يسار، يمين، وسط

# الإجراءات
lrc-roll = رمي { $count } { $count ->
    [one] نرد
   *[other] نرد
    }

# وجوه النرد
lrc-face-left = يسار
lrc-face-right = يمين
lrc-face-center = وسط
lrc-face-dot = نقطة

# أحداث اللعب
lrc-roll-results = رمى { $player } { $results }.
lrc-pass-left = يمرر { $player } { $count } { $count ->
    [one] قطعة
   *[other] قطعة
    } إلى اليسار ({ $target }).
lrc-pass-right = يمرر { $player } { $count } { $count ->
    [one] قطعة
   *[other] قطعة
    } إلى اليمين ({ $target }).
lrc-pass-center = يضع { $player } { $count } { $count ->
    [one] قطعة
   *[other] قطعة
    } في المركز.
lrc-no-chips = لا يملك { $player } قطع لرمي النرد.
lrc-center-pot = يوجد { $count } { $count ->
    [one] قطعة
   *[other] قطعة
    } في المركز.
lrc-player-chips = أصبح لدى { $player } { $count } { $count ->
    [one] قطعة
   *[other] قطعة
    }.
lrc-winner = فاز { $player } بـ { $count } { $count ->
    [one] قطعة
   *[other] قطعة
    }!

# الخيارات
lrc-set-starting-chips = الرصيد البدائي: { $count }
lrc-enter-starting-chips = أدخل الرصيد البدائي:
lrc-option-changed-starting-chips = تم ضبط الرصيد البدائي إلى { $count }.

# واجهة المستخدم
lrc-line-format = { $player }: { $chips }
lrc-check-center = فحص رصيد المركز
lrc-roll-label = رمي النرد
