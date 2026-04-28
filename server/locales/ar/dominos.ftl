game-name-dominos = الدومينو

# الخيارات
dominos-set-target-score = النتيجة المستهدفة: { $score }
dominos-enter-target-score = أدخل النتيجة المستهدفة
dominos-option-changed-target-score = تم ضبط النتيجة المستهدفة إلى { $score }.

dominos-set-draw-mode = النمط: { $mode }
dominos-select-draw-mode = اختر النمط
dominos-option-changed-draw-mode = تم ضبط النمط إلى { $mode }.

dominos-set-domino-set = مجموعة الدومينو: { $domino_set }
dominos-select-domino-set = اختر مجموعة الدومينو
dominos-option-changed-domino-set = تم تغيير مجموعة الدومينو إلى { $domino_set }.

dominos-set-spinner = "السبينر" (الدوّارة): { $enabled }
dominos-option-changed-spinner = تم ضبط السبينر إلى { $enabled }.

dominos-set-opening-rule = قاعدة البدء: { $opening_rule }
dominos-select-opening-rule = اختر قاعدة البدء
dominos-option-changed-opening-rule = تم ضبط قاعدة البدء إلى { $opening_rule }.

# تسميات الخيارات
dominos-mode-draw = سحب
dominos-mode-block = حظر

dominos-set-double6 = دبل 6
dominos-set-double9 = دبل 9

dominos-opening-highest-double = أعلى دبل
dominos-opening-highest-tile = أعلى قطعة
dominos-opening-set-max-double = أعلى دبل في المجموعة
dominos-opening-random-player = لاعب عشوائي
dominos-opening-round-winner = فائز الجولة السابقة

# الإجراءات
dominos-draw = سحب
dominos-knock = إغلاق (Knock)
dominos-view-chain = عرض السلسلة
dominos-read-ends = قراءة الأطراف
dominos-read-hand = قراءة اليد
dominos-read-counts = قراءة العدد
dominos-play-tile = { $tile }
dominos-play-tile-at = لعب { $tile } في { $side }
dominos-play-tile-multi = لعب { $tile } في { $sides }
dominos-select-side = اختر جانباً

# جوانب اللوحة
dominos-side-left = اليسار
dominos-side-right = اليمين
dominos-side-up = الأعلى
dominos-side-down = الأسفل

# التنبيهات والأخطاء
dominos-draw-only-mode = السحب متاح فقط في نمط السحب.
dominos-must-play = لديك بالفعل قطعة قابلة للعب.
dominos-boneyard-empty = المتجر (المجموعة المتبقية) فارغ.
dominos-must-draw = يجب عليك السحب قبل الإغلاق.
dominos-illegal-side = هذا الجانب غير قانوني للقطعة المختارة.
dominos-no-play-for-tile = لا يمكن لعب { $tile } حالياً.
dominos-choose-side-keybind = اختر جانباً باستخدام مفاتيح الاتجاهات. الجوانب المتاحة: { $sides }.

# اللعب
dominos-opening-play = يبدأ { $player } بـ { $tile }.
dominos-opening-spinner = يفتح { $player } سبينر بـ { $tile }.
dominos-player-draws = سحب { $player } { $count } { $count ->
    [one] قطعة
   *[other] قطعة
    }.
dominos-you-drew-single = سحبت { $tile }.
dominos-you-drew-many = سحبت { $count } قطع.
dominos-you-played = لعبت { $tile } في { $side }.
dominos-you-played-drawn = سحبت ولعبت { $tile } في { $side }.
dominos-player-played = لعب { $player } { $tile } في { $side }.
dominos-player-knocks = أغلق { $player }.
dominos-round-won = فاز { $player } بالجولة وسجل { $points } نقطة.
dominos-round-blocked-tie = الجولة مغلقة (تعادل). إجمالي النقاط الأقل هو { $pips }، ولكنها تعادل. لا تُسجل نقاط.
dominos-round-blocked-winner = الجولة مغلقة. الفريق { $team } لديه إجمالي النقاط الأقل وهو { $pips } ويسجل { $points } نقطة.
dominos-match-tied-continue = وصلت فرق متعددة إلى { $score } نقطة. تستمر اللعبة حتى كسر التعادل.
dominos-match-winner = فاز الفريق { $team } بالمباراة بـ { $score } نقطة.

# حالة اللوحة
dominos-chain-header = السلسلة
dominos-chain-empty = السلسلة فارغة.
dominos-chain-center = المركز: { $tile }
dominos-branch-empty = لا توجد قطع
dominos-chain-branch = { $side }: { $tiles }. الطرف المفتوح { $open_end }.
dominos-boneyard-count = المتجر: تبقى { $count } قطعة.
dominos-end-info = { $side } { $value }

# اليد
dominos-hand-header = يدك
dominos-hand-line = { $tile } بقيمة { $points } نقطة.
dominos-hand-line-playable = { $tile } بقيمة { $points } نقطة. قابلة للعب على { $sides }.
dominos-hand-total = إجمالي نقاط اليد: { $pips }.
dominos-player-count = لدى { $player } { $count } قطعة
dominos-no-other-players = لا يوجد لاعبون آخرون.

# شاشة النهاية
dominos-line-format = { $rank }. { $player }: { $points }
