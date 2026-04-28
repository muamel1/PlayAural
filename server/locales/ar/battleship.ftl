game-name-battleship = البوارج (Battleship)

# الخيارات
battleship-set-grid-size = حجم شبكة القتال: { $size }
battleship-select-grid-size = اختر حجم شبكة القتال:
battleship-option-changed-grid-size = تم ضبط حجم شبكة القتال على { $size }.

battleship-set-placement-mode = نمط نشر الأسطول: { $mode }
battleship-select-placement-mode = اختر نمط نشر الأسطول:
battleship-option-changed-placement-mode = تم ضبط نمط النشر على { $mode }.

battleship-set-replay-on-hit = رمية إضافية عند الإصابة: { $enabled }
battleship-option-changed-replay-on-hit = تم ضبط خيار الرمية الإضافية على { $enabled }.

battleship-set-turn-timer = مؤقت الدور: { $seconds }
battleship-select-turn-timer = اختر مدة مؤقت الدور:
battleship-option-changed-turn-timer = تم ضبط مؤقت الدور على { $seconds }.

# تسميات الخيارات
battleship-grid-6x6 = 6 في 6
battleship-grid-8x8 = 8 في 8
battleship-grid-10x10 = 10 في 10
battleship-grid-12x12 = 12 في 12

battleship-placement-auto = تلقائي
battleship-placement-manual = يدوي

battleship-timer-off = معطل
battleship-timer-30 = 30 ثانية
battleship-timer-45 = 45 ثانية
battleship-timer-60 = 60 ثانية

# أسماء السفن
battleship-ship-carrier = حاملة الطائرات
battleship-ship-battleship = البارجة
battleship-ship-destroyer = المدمرة
battleship-ship-submarine = الغواصة
battleship-ship-patrol = زورق الدورية
battleship-ship-unknown = قطعة بحرية

# الاتجاهات
battleship-horizontal = أفقي
battleship-vertical = عمودي

# الإجراءات
battleship-orient-horizontal = وضع أفقي
battleship-orient-vertical = وضع عمودي
battleship-toggle-view = تبديل الشبكة
battleship-read-fleet = حالة أسطولك
battleship-read-enemy-fleet = استخبارات أسطول العدو

# مرحلة النشر
battleship-deploy-start = مرحلة النشر. قم بوضع { $ship } (الحجم: { $size } { $size ->
    [one] مربع
    [two] مربعين
    [few] مربعات
   *[other] مربعاً
    }). اختر إحداثيات البداية، ثم حدد الاتجاه.
battleship-choose-orientation = جاري نشر { $ship } عند الإحداثيات { $coord } (الحجم: { $size }). اختر الاتجاه الآن.
battleship-ship-placed = تم نشر { $ship } عند الإحداثيات { $coord }، بالاتجاه الـ { $orientation }.
battleship-cannot-place = تعذر نشر { $ship } عند الإحداثيات { $coord } ({ $orientation }). المساحة غير كافية أو تتداخل مع سفينة أخرى.
battleship-place-next-ship = السفينة التالية: { $ship } (الحجم: { $size } { $size ->
    [one] مربع
    [two] مربعين
    [few] مربعات
   *[other] مربعاً
    }).
battleship-deploy-done = اكتمل نشر الأسطول. في انتظار العدو للانتهاء.
battleship-deploy-complete = اكتملت مرحلة النشر بنجاح.
battleship-select-cell-first = يرجى اختيار إحداثيات على الشبكة أولاً.
battleship-deploy-in-progress = مرحلة النشر لا تزال جارية.

# مرحلة القتال
battleship-battle-start = اتخذت جميع السفن مواقعها. ابدأ القصف!

# الإصابة
battleship-hit-self = قصف عند الإحداثيات { $coord }. ضربة مباشرة!
battleship-hit-target = قصف { $player } الإحداثيات { $coord }. ضربة مباشرة!
battleship-hit-spectator = قصف { $player } الإحداثيات { $coord } في مياه { $target }. ضربة مباشرة!

# الإخفاق
battleship-miss-self = قصف عند الإحداثيات { $coord }. أخطأت الهدف!
battleship-miss-target = قصف { $player } الإحداثيات { $coord }. أخطأ الهدف!
battleship-miss-spectator = قصف { $player } الإحداثيات { $coord } في مياه { $target }. أخطأ الهدف!

# الغرق
battleship-sunk-self = تم إغراق { $ship } الخاصة بالعدو!
battleship-sunk-target = أغرق { $player } { $ship } الخاصة بك!
battleship-sunk-spectator = أغرق { $player } { $ship } الخاصة بـ { $target }!

# النصر
battleship-victory-self = انتصار ساحق! تم إغراق جميع سفن العدو.
battleship-victory-target = فاز { $player }! لقد تم إغراق جميع سفنك.
battleship-victory-spectator = فاز { $player }! تم إغراق جميع سفن { $target }.

battleship-already-shot = لقد قمت بقصف هذه الإحداثيات مسبقاً.
battleship-switch-to-shots = أنت تعرض مياهك الخاصة حالياً. اضغط V للتبديل إلى شبكة استهداف العدو.
battleship-timeout-fire = انتهى الوقت! تم إطلاق قذيفة عشوائية عند الإحداثيات { $coord }.

# تبديل العرض
battleship-view-own = عرض مياهك الخاصة.
battleship-view-shots = عرض شبكة استهداف العدو.

# تسميات الخلايا
battleship-cell-empty = { $coord }: مياه مفتوحة.
battleship-cell-ship-placed = { $coord }: { $ship }.
battleship-cell-unknown = { $coord }: مياه غير مستكشفة.
battleship-cell-hit = { $coord }: إصابة مؤكدة.
battleship-cell-sunk = { $coord }: { $ship } (مغرقة).
battleship-cell-miss = { $coord }: أخطأت الهدف.
battleship-cell-own-ship = { $coord }: { $ship } (سفينتك).
battleship-cell-own-hit = { $coord }: { $ship } (سفينتك، متضررة).
battleship-cell-own-sunk = { $coord }: { $ship } (سفينتك، مغرقة).
battleship-cell-own-miss = { $coord }: قذيفة طائشة من العدو.

# حالة الأسطول
battleship-fleet-header = حالة أسطولك
battleship-status-intact = جاهزة للقتال
battleship-status-damaged = متضررة ({ $hits } من أصل { $size } إصابات)
battleship-status-sunk = مغرقة بالكامل

battleship-enemy-fleet-header = استخبارات أسطول العدو
battleship-enemy-fleet-summary = تم إغراق { $sunk } من أصل { $total } { $total ->
    [one] سفينة
    [two] سفينتين
    [few] سفن
   *[other] سفينة
    } للعدو.
battleship-enemy-ship-sunk = { $ship } (الحجم: { $size }): مغرقة بالكامل

# شاشة النهاية
battleship-winner-line = الفائز هو { $player }!
battleship-stats-line = { $player }: أطلق { $shots } { $shots ->
    [one] قذيفة
    [two] قذيفتين
    [few] قذائف
   *[other] قذيفة
    }، حقق { $hits } { $hits ->
    [one] إصابة
    [two] إصابتين
    [few] إصابات
   *[other] إصابة
    }، بدقة { $accuracy }%
