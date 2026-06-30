game-name-farkle = فاركل

farkle-roll = رمي { $count } { $count ->
    [one] نرد
   *[other] أحجار نرد
}
farkle-bank = تسجيل { $points } نقطة

farkle-take-single-one = رقم 1 منفرد مقابل { $points } نقطة
farkle-take-single-five = رقم 5 منفرد مقابل { $points } نقطة
farkle-take-three-kind = ثلاثة { $number } متطابقة مقابل { $points } نقطة
farkle-take-four-kind = أربعة { $number } متطابقة مقابل { $points } نقطة
farkle-take-five-kind = خمسة { $number } متطابقة مقابل { $points } نقطة
farkle-take-six-kind = ستة { $number } متطابقة مقابل { $points } نقطة
farkle-take-small-straight = متتالية صغيرة مقابل { $points } نقطة
farkle-take-large-straight = متتالية كبيرة مقابل { $points } نقطة
farkle-take-three-pairs = ثلاثة أزواج مقابل { $points } نقطة
farkle-take-double-triplets = ثلاثيتان مزدوجتان مقابل { $points } نقطة
farkle-take-full-house = أربعة متطابقة مع زوج مقابل { $points } نقطة

farkle-you-roll = لقد رميت { $count } { $count ->
    [one] نرد
   *[other] أحجار نرد
}.
farkle-player-rolls = يرمي { $player } { $count } { $count ->
    [one] نرد
   *[other] أحجار نرد
}.
farkle-you-roll-brief = لقد رميت { $count }.
farkle-player-rolls-brief = رمى { $player } { $count }.
farkle-roll-result = يظهر النرد: { $dice }.
farkle-roll-result-brief = النرد: { $dice }.

farkle-you-farkle = فاركل! لقد خسرت { $points } نقطة في هذا الدور.
farkle-player-farkles = فاركل! خسر { $player } { $points } نقطة في هذا الدور.
farkle-you-farkle-brief = فاركل: خسرت { $points }.
farkle-player-farkles-brief = فاركل: خسر { $player } { $points }.

farkle-you-take-combo = لقد احتفظت بـ { $combo } مقابل { $points } نقطة.
farkle-player-takes-combo = يحتفظ { $player } بـ { $combo } مقابل { $points } نقطة.
farkle-you-take-combo-brief = أنت: { $combo }، +{ $points }.
farkle-player-takes-combo-brief = { $player }: { $combo }، +{ $points }.

farkle-you-hot-dice = نرد مشتعل! لقد سجلت بجميع أحجار النرد الستة ويمكنك رميها جميعًا مرة أخرى.
farkle-player-hot-dice = نرد مشتعل! سجل { $player } بجميع أحجار النرد الستة ويمكنه رميها جميعًا مرة أخرى.
farkle-you-hot-dice-brief = أنت: نرد مشتعل.
farkle-player-hot-dice-brief = { $player }: نرد مشتعل.

farkle-you-bank = لقد سجلت { $points } نقطة. إجمالي نقاطك الآن { $total }.
farkle-player-banks = يسجل { $player } { $points } نقطة ليصبح إجمالي نقاطه { $total }.
farkle-you-bank-brief = لقد سجلت { $points }؛ الإجمالي { $total }.
farkle-player-banks-brief = سجل { $player } { $points }؛ الإجمالي { $total }.

farkle-you-win = لقد فزت بـ { $score } نقطة!
farkle-winner = فاز { $player } بـ { $score } نقطة!
farkle-you-win-brief = لقد فزت: { $score }.
farkle-winner-brief = فاز { $player }: { $score }.
farkle-winners-tie = تعادل عند نقاط الهدف! لاعبو جولة كسر التعادل: { $players }.
farkle-tiebreaker-round-start = جولة كسر التعادل { $round }. اللاعبون المستمرون في المنافسة: { $players }.

farkle-your-turn-score = لديك { $points } نقطة في هذا الدور.
farkle-turn-score = لدى { $player } { $points } نقطة في هذا الدور.
farkle-no-turn = لا أحد يلعب دوره حاليًا.

farkle-set-target-score = نقاط الهدف: { $score }
farkle-enter-target-score = أدخل نقاط الهدف (500-5000):
farkle-option-changed-target = تم ضبط نقاط الهدف إلى { $score }.

farkle-set-entrance-score = الحد الأدنى لنقاط الدخول: { $score }
farkle-enter-entrance-score = أدخل الحد الأدنى لنقاط الدخول (0-5000):
farkle-option-changed-entrance = تم ضبط الحد الأدنى لنقاط الدخول إلى { $score }.

farkle-set-bank-score = الحد الأدنى لنقاط التسجيل: { $score }
farkle-enter-bank-score = أدخل الحد الأدنى لنقاط التسجيل (0-5000):
farkle-option-changed-bank = تم ضبط الحد الأدنى لنقاط التسجيل إلى { $score }.

farkle-error-entrance-above-target = لا يمكن أن يكون الحد الأدنى لنقاط الدخول ({ $entrance }) أعلى من نقاط الهدف ({ $target }).
farkle-error-bank-above-target = لا يمكن أن يكون الحد الأدنى لنقاط التسجيل ({ $bank }) أعلى من نقاط الهدف ({ $target }).

farkle-must-take-combo = يجب عليك الاحتفاظ بحجر نرد مسجل أو مجموعة واحدة على الأقل قبل الرمي مرة أخرى.
farkle-cannot-bank = يمكنك التسجيل فقط بعد الاحتفاظ بنرد مسجل أو مجموعة نقاط في هذا الدور.
farkle-must-reach-entrance-score = تحتاج إلى { $points } نقطة دور على الأقل قبل تسجيل أول نقاط لك.
farkle-must-reach-bank-score = تحتاج إلى { $points } نقطة دور على الأقل قبل التسجيل.
farkle-confirm-risky-roll = يمكنك تسجيل { $points } نقطة الآن. الرمي مرة أخرى يعرضك لخسارتها؛ أعد الضغط على "رمي" خلال { $seconds } ثوانٍ للتأكيد.
farkle-invalid-combo-action = خيار التسجيل هذا غير معترف به. يرجى اختيار إحدى المجموعات المدرجة حاليًا.
farkle-combo-no-longer-available = لم تعد مجموعة التسجيل هذه متاحة. تم تحديث خيارات التسجيل الحالية.

farkle-combo-single-1 = رقم 1 منفرد
farkle-combo-single-5 = رقم 5 منفرد
farkle-combo-three-kind = ثلاثة { $number } متطابقة
farkle-combo-four-kind = أربعة { $number } متطابقة
farkle-combo-five-kind = خمسة { $number } متطابقة
farkle-combo-six-kind = ستة { $number } متطابقة
farkle-combo-small-straight = متتالية صغيرة
farkle-combo-large-straight = متتالية كبيرة
farkle-combo-three-pairs = ثلاثة أزواج
farkle-combo-double-triplets = ثلاثيتان مزدوجتان
farkle-combo-full-house = أربعة متطابقة مع زوج

farkle-line-format = { $rank }. { $player }: { $points }
farkle-combo-fallback = { $combo } مقابل { $points } نقطة

farkle-check-turn-score = التحقق من نقاط الدور
farkle-roll-label = رمي النرد
farkle-bank-label = تسجيل النقاط
