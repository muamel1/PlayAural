game-name-uno = أونو

# Colors
uno-color-red = أحمر
uno-color-yellow = أصفر
uno-color-green = أخضر
uno-color-blue = أزرق
uno-color-wild = ملون

# Card names
uno-card-number = { $color } { $value }
uno-card-skip = { $color } تخطي
uno-card-reverse = { $color } عكس
uno-card-draw-two = { $color } سحب بطاقتين
uno-card-wild = تغيير اللون
uno-card-wild-four = تغيير اللون وسحب أربعة

# Options
uno-set-winning-score = حد النقاط: { $score }
uno-enter-winning-score = أدخل حد النقاط
uno-option-changed-winning-score = تم ضبط حد النقاط إلى { $score }.

uno-set-scoring-mode = احتساب النقاط: { $mode }
uno-select-scoring-mode = اختر وضع احتساب النقاط
uno-option-changed-scoring-mode = تم ضبط احتساب النقاط إلى { $mode }.
uno-scoring-first = أول من يصل إلى الحد يفوز
uno-scoring-elimination = إقصاء

uno-set-skip-after-draw = عقوبات السحب تتخطى الدور: { $enabled }
uno-option-changed-skip-after-draw = عقوبات السحب تتخطى الدور { $enabled }.

uno-set-responses = تراكم الردود: { $enabled }
uno-option-changed-responses = تراكم الردود { $enabled }.

uno-set-advanced-responses = الردود المتقدمة: { $enabled }
uno-option-changed-advanced-responses = الردود المتقدمة { $enabled }.

uno-set-wait-for-draw-responses = انتظار الردود على السحب: { $enabled }
uno-option-changed-wait-for-draw-responses = انتظار الردود على السحب { $enabled }.

uno-set-bluff = تحديات بطاقة سحب أربعة: { $enabled }
uno-option-changed-bluff = تحديات بطاقة سحب أربعة { $enabled }.

uno-set-straights = متتاليات: { $enabled }
uno-option-changed-straights = متتاليات { $enabled }.

uno-set-interceptions = الاعتراضات: { $enabled }
uno-option-changed-interceptions = الاعتراضات { $enabled }.

uno-set-super-interceptions = الاعتراضات الفائقة: { $enabled }
uno-option-changed-super-interceptions = الاعتراضات الفائقة { $enabled }.

uno-set-zero-seven = قاعدة الصفر والسبعة: { $enabled }
uno-option-changed-zero-seven = قاعدة الصفر والسبعة { $enabled }.

uno-set-free-draws = السحب المجاني في الدور: { $count }
uno-enter-free-draws = أدخل عدد السحب المجاني في الدور
uno-option-changed-free-draws = تم ضبط عدد السحب المجاني في الدور إلى { $count }.

# Option validation
uno-error-advanced-responses-require-responses = تتطلب الردود المتقدمة تمكين خيار تراكم الردود أولاً.
uno-error-wait-responses-require-responses = يتطلب انتظار الردود على السحب تمكين خيار تراكم الردود أولاً.
uno-error-super-interceptions-require-interceptions = تتطلب الاعتراضات الفائقة تمكين خيار الاعتراضات أولاً.

# Actions
uno-draw = سحب بطاقة
uno-say-uno = قول أونو
uno-read-top = قراءة البطاقة العليا
uno-read-color = قراءة اللون الحالي
uno-read-counts = قراءة عدد البطاقات
uno-read-hand = قراءة قيمة يدك
uno-sort-color = ترتيب حسب اللون
uno-sort-number = ترتيب حسب الرقم

# Gameplay announcements
uno-new-hand = الجولة { $round }.
uno-start-card = يكشف { $player } عن البطاقة { $card }.
uno-current-color = اللون الحالي: { $color }.
uno-dealt-cards = تم توزيع { $cards } بطاقات على الجميع.
uno-direction-reversed = تم عكس اتجاه اللعب.
uno-player-plays = يلعب { $player } البطاقة { $card }.
uno-you-play = لقد لعبت البطاقة { $card }.
uno-color-chosen = اللون الآن هو { $color }.
uno-player-draws-one = يسحب { $player } بطاقة.
uno-player-draws-many = يسحب { $player } { $count } بطاقات.
uno-you-draw-one = لقد سحبت بطاقة.
uno-you-draw-many = لقد سحبت { $count } بطاقات.
uno-cant-play = لا يمكن لـ { $player } اللعب.
uno-you-cant-play = لا يمكنك اللعب.
uno-you-skipped = تم تخطي دورك.
uno-says-uno = يقول { $player } أونو!
uno-you-say-uno = لقد قلت أونو!
uno-callout = يكشف { $caller } أن { $player } لم يقل أونو! يسحب { $player } { $count } { $count ->
    [one] { $count } بطاقة
   *[other] { $count } بطاقات
}.
uno-you-callout = لقد كشفت أن { $player } لم يقل أونو! يسحب { $player } { $count } { $count ->
    [one] { $count } بطاقة
   *[other] { $count } بطاقات
}.
uno-callout-you = يكشف { $caller } أنك لم تقل أونو! تسحب { $count } { $count ->
    [one] { $count } بطاقة
   *[other] { $count } بطاقات
}.
uno-cannot-play-that = لا يمكنك لعب { $card }. { $reason }
uno-reshuffle = إعادة خلط كومة الاستبعاد.
uno-hand-blocked = لا أحد يستطيع اللعب. تنتهي الجولة.
uno-error-choose-color-first = اختر لونًا لبطاقتك الحرة قبل لعب بطاقة أخرى.
uno-error-wait-color-choice = انتظر حتى يختار لاعب البطاقة الحرة لونًا قبل اللعب.
uno-error-wild-transition = انتظر حتى يبدأ مفعول اللون المختار قبل لعب بطاقة أخرى.
uno-error-choose-swap-first = اختر لاعبًا لتبادل الأوراق معه أو ارفض قبل اتخاذ إجراء آخر.
uno-error-wait-swap-choice = انتظر حتى يكتمل خيار تبادل الأوراق للرقم 7 قبل اللعب.
uno-error-wait-next-hand = انتظر حتى تبدأ الجولة التالية قبل لعب بطاقة.
uno-error-wait-intro = انتظر حتى ينتهي إعداد الجولة قبل لعب بطاقة.
uno-reason-draw-stack-response = هناك تراكم سحب بقيمة { $count } { $count ->
    [one] { $count } بطاقة
   *[other] { $count } بطاقات
} ضدك؛ العب بطاقة رد صالحة أو اسحب العقوبة.
uno-reason-draw-stack-no-response = هناك عقوبة سحب بقيمة { $count } { $count ->
    [one] { $count } بطاقة
   *[other] { $count } بطاقات
} ضدك، وخيار تراكم الردود معطل؛ اسحب العقوبة بدلاً من ذلك.
uno-reason-match-required = البطاقة العليا هي { $top }، واللون النشط هو { $color }؛ قم بمطابقة اللون، أو الرقم، أو رمز الإجراء، أو العب بطاقة حرة.
uno-reason-card-not-available = هذه البطاقة غير متاحة في الحالة الحالية.

# Bluff challenge
uno-bluff-challenge = تحدي بطاقة تغيير اللون وسحب أربعة
uno-bluff-caught = تم ضبط { $player } يلعب بطاقة تغيير اللون وسحب أربعة بشكل غير قانوني ويسحب { $count } بطاقات!
uno-you-bluff-caught = لقد تم ضبطك تلعب بطاقة تغيير اللون وسحب أربعة بشكل غير قانوني وتسحب { $count } بطاقات!
uno-bluff-wrong = قام { $player } بتحدي بطاقة تغيير اللون وسحب أربعة بشكل خاطئ ويسحب { $count } بطاقات!
uno-you-bluff-wrong = لقد تحديت بطاقة تغيير اللون وسحب أربعة بشكل خاطئ وتسحب { $count } بطاقات!

# Zero / seven rule
uno-rotate-hands = الجميع يمررون أوراقهم!
uno-swap-hands = يتبادل { $player } الأوراق مع { $target }!
uno-you-swap = لقد تبادلت الأوراق مع { $target }!
uno-swap-with-you = يتبادل { $player } الأوراق معك!
uno-swap-with = تبادل الأوراق مع { $player }
uno-choose-swap = اختر لاعبًا لتبادل الأوراق معه، أو ارفض.
uno-swap-none = عدم التبادل
uno-you-swap-none = لقد احتفظت بأوراقك.
uno-swap-none-other = يحتفظ { $player } بأوراقه.

# Interceptions / straights
uno-player-intercepts = يعترض { $player } بالبطاقة { $card }!
uno-you-intercept = لقد اعترضت بالبطاقة { $card }!
uno-bad-intercept = لم يكن هذا اعتراضًا صالحًا. ثلاث نقاط عقوبة.
uno-not-your-turn = ليس دورك.

# Info
uno-no-top = لا توجد بطاقة عليا بعد.
uno-top-card = { $card }.
uno-color-is = { $color }.
uno-deck-count = التشكيلة { $count }
uno-sorting-color = جاري الترتيب حسب اللون.
uno-sorting-number = جاري الترتيب حسب الرقم.

# Round / game end
uno-round-winner = فاز { $player } بالجولة!
uno-you-win-round = لقد فزت بالجولة!
uno-round-points-from = { $points } نقطة من { $player }
uno-round-details-none = لم تؤخذ أي نقاط من الخصوم.
uno-round-summary = { $details }. يحصل { $player } على { $total } نقطة.
uno-round-summary-you = { $details }. تحصل على { $total } نقطة.
uno-round-points = تبقت لدى { $player } { $points } نقطة في يده.
uno-eliminated = تم إقصاء { $player }!
uno-game-winner = فاز { $player } باللعبة بـ { $score } نقطة!
uno-game-tie = تم إقصاء الجميع. انتهت اللعبة بالتعادل!
uno-line-format = { $rank }. { $player }: { $score }

# Hand value (d key)
uno-read-hand-value = { $count ->
    [one] { $count } بطاقة
   *[other] { $count } بطاقات
 } بقيمة { $points ->
    [one] { $points } نقطة
   *[other] { $points } نقاط
 }.
