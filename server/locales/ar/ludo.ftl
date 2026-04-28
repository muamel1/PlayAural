game-name-ludo = لودو

# الإجراءات
ludo-roll-die = رمي النرد
ludo-move-token = تحريك القطعة
ludo-move-token-n = تحريك القطعة رقم { $token }
ludo-check-board = عرض حالة الرقعة
ludo-select-token = اختر قطعة للتحريك:

# أحداث اللعب
ludo-roll = رمى { $player } { $roll }.
ludo-you-roll = رميت { $roll }.
ludo-no-moves = لا توجد حركات قانونية لدى { $player }.
ludo-you-no-moves = لا توجد حركات قانونية لديك.
ludo-enter-board = أدخل { $player } (اللون { $color ->
    [red] الأحمر
    [blue] الأزرق
    [green] الأخضر
    [yellow] الأصفر
    *[other] { $color }
    }) القطعة رقم { $token } إلى الرقعة.
ludo-move-track = حرك { $player } (اللون { $color ->
    [red] الأحمر
    [blue] الأرجواني
    [green] الأخضر
    [yellow] الأصفر
    *[other] { $color }
    }) القطعة رقم { $token } إلى الموضع { $position }.
ludo-enter-home = أدخل { $player } (اللون { $color ->
    [red] الأحمر
    [blue] الأزرق
    [green] الأخضر
    [yellow] الأصفر
    *[other] { $color }
    }) القطعة رقم { $token } إلى مسار الوصول (البيت).
ludo-home-finish = وصلت قطعة { $player } (اللون { $color ->
    [red] الأحمر
    [blue] الأزرق
    [green] الأخضر
    [yellow] الأصفر
    *[other] { $color }
    }) رقم { $token } إلى القاعدة. ({ $finished }/4 مكتملة)
ludo-move-home = حرك { $player } (اللون { $color ->
    [red] الأحمر
    [blue] الأزرق
    [green] الأخضر
    [yellow] الأصفر
    *[other] { $color }
    }) القطعة رقم { $token } في مسار الوصول ({ $position }/{ $total }).
ludo-captures = أسر { $player } (اللون { $color ->
    [red] الأحمر
    [blue] الأزرق
    [green] الأخضر
    [yellow] الأصفر
    *[other] { $color }
    }) { $count ->
    [one] قطعة واحدة
   *[other] { $count } قطع
    } من { $captured_player } (اللون { $captured_color ->
    [red] الأحمر
    [blue] الأزرق
    [green] الأخضر
    [yellow] الأصفر
    *[other] { $captured_color }
    }). تمت إعادتها إلى القاعدة.
ludo-extra-turn = رمى { $player } 6. دور إضافي.
ludo-you-extra-turn = رميت 6. دور إضافي.
ludo-too-many-sixes = رمى { $player } { $count } ستات متتالية. تم التراجع عن الحركات. انتهى الدور.
ludo-winner = فاز { $player } (اللون { $color ->
    [red] الأحمر
    [blue] الأزرق
    [green] الأخضر
    [yellow] الأصفر
    *[other] { $color }
    })! وصلت جميع القطع الأربع إلى القاعدة.

# حالة الرقعة
ludo-board-player = { $player } (اللون { $color ->
    [red] الأحمر
    [blue] الأزرق
    [green] الأخضر
    [yellow] الأصفر
    *[other] { $color }
    }): { $finished }/4 مكتملة
ludo-token-yard = القطعة { $token } (في القاعدة)
ludo-token-track = القطعة { $token } (الموضع { $position })
ludo-token-home = القطعة { $token } (في مسار الوصول { $position }/{ $total })
ludo-token-finished = القطعة { $token } (مكتملة)
ludo-last-roll = آخر رمية: { $roll }

# الإعدادات
ludo-set-max-sixes = الحد الأقصى للستات المتتالية: { $max_consecutive_sixes }
ludo-enter-max-sixes = أدخل الحد الأقصى للستات المتتالية
ludo-option-changed-max-sixes = تم ضبط الحد الأقصى للستات المتتالية إلى { $max_consecutive_sixes }.
ludo-set-safe-start-squares = مربعات الانطلاق الآمنة: { $enabled }
ludo-option-changed-safe-start-squares = تم ضبط مربعات الانطلاق الآمنة إلى { $enabled }.
