game-name-coup = انقلاب

# الإجراءات
coup-action-income = الدخل (+1 عملة)
coup-action-foreign-aid = المساعدة الخارجية (+2 عملة)
coup-action-coup = انقلاب (التكلفة: 7 عملات)
coup-action-tax = ضريبة (الدوق، +3 عملات)
coup-action-assassinate = اغتيال (القاتل، التكلفة: 3 عملات)
coup-action-steal = سرقة (القبطان، +2 عملة)
coup-action-exchange = تبادل (السفير)

coup-action-challenge = تحدي!
coup-action-block = حظر!
coup-action-pass = تمرير

coup-action-lose-influence = خسارة نفوذ
coup-action-return-card = إرجاع بطاقة

# الشخصيات
coup-card-duke = الدوق
coup-card-assassin = القاتل
coup-card-captain = القبطان
coup-card-ambassador = السفير
coup-card-contessa = الكونتيسة

coup-return-card-format = إرجاع { $card }

coup-select-target = اختر الهدف:
coup-must-coup = لديك 10 عملات أو أكثر، يجب عليك القيام بانقلاب!
coup-not-enough-coins = لا تملك عملات كافية.
coup-cannot-challenge-action = لا يمكنك تحدي هذا الإجراء.
coup-cannot-block-now = لا يمكنك الحظر حالياً.
coup-only-target-can-block = الهدف فقط يمكنه حظر هذا الإجراء.
coup-cannot-block-action = لا يمكن حظر هذا الإجراء.
coup-no-active-claim = لا يوجد ادعاء نشط لتحديه.

# أحداث اللعب
coup-takes-income = يأخذ { $player } الدخل.
coup-claims-foreign-aid = يطلب { $player } مساعدة خارجية.
coup-takes-foreign-aid = يأخذ { $player } مساعدة خارجية.
coup-plays-coup = ينفذ { $player } انقلاباً ضد { $target }!
coup-claims-tax = يدعي { $player } أنه الدوق ويطلب الضريبة.
coup-takes-tax = يجمع { $player } الضريبة.
coup-claims-assassinate = يدعي { $player } أنه القاتل ويستهدف { $target }.
coup-assassinates = يغتال { $player } الشخصية { $target }.
coup-claims-steal = يدعي { $player } أنه القبطان ويحاول السرقة من { $target }.
coup-steals = يسرق { $player } { $amount } عملة من { $target }.
coup-claims-exchange = يدعي { $player } أنه السفير لتبادل البطاقات.
coup-exchanges = يسحب { $player } بطاقتين للتبادل.
coup-exchange-complete = أكمل { $player } عملية التبادل.

coup-drew-replacement-card = سحبت { $character } كبديل.
coup-action-pass-confirmed = قمت بالتمرير.

coup-waiting-for-reactions = بانتظار رد اللاعبين للتحدي أو الحظر...
coup-player-eliminated = فقد { $player } كل نفوذه وتم إقصاؤه من اللعبة.
coup-game-over = انتهت اللعبة! { $winner } هو الناجي الأخير وفاز باللعبة!
coup-target-is-dead = هدف غير صالح: { $target } تم إقصاؤه بالفعل.
coup-cannot-afford-assassinate = تحتاج إلى 3 عملات على الأقل للاغتيال.
coup-cannot-afford-coup = تحتاج إلى 7 عملات على الأقل للقيام بانقلاب.
coup-bluff-called = تم كشف خداع { $player } ويجب أن يخسر نفوذاً!
coup-bluff-wrong = خمن { $challenger } بشكل خاطئ ويجب أن يخسر نفوذاً!
coup-block-successful = نجح { $blocker } في حظر الإجراء!
coup-action-resolves = تم تنفيذ الإجراء بنجاح.

coup-challenges = يتحدى { $challenger } اللاعب { $target }!
coup-challenge-succeeded = تم كشف خداع { $player }!
coup-challenge-failed = كان { $player } صادقاً، لقد كشف عن { $character }!
coup-blocks-foreign-aid = يدعي { $blocker } أنه الدوق لحظر مساعدة { $target } الخارجية.
coup-blocks-assassinate = يدعي { $blocker } أنه الكونتيسة لحظر اغتيال { $target }.
coup-blocks-steal = يدعي { $blocker } أنه القبطان/السفير لحظر سرقة { $target }.

coup-loses-influence = خسر { $player } نفوذه { $character }!
coup-must-lose-influence = يجب عليك اختيار نفوذ لتخسره.
coup-must-return-card = يرجى اختيار بطاقة لإرجاعها إلى المجموعة.
coup-returned-card = أرجعت { $character } إلى المجموعة.

coup-you-are-eliminated = تم إقصاؤك ولا يمكنك القيام بهذا الإجراء.

coup-action-check-wealth = فحص الثروة
coup-action-check-hand = فحص اليد
coup-action-check-table = فحص الطاولة

coup-wealth-line = { $player }: { $coins } عملة
coup-no-alive-players = لا يوجد لاعبون أحياء حالياً.
coup-no-cards = لا تملك أي بطاقات.
coup-hand-context = تملك { $coins } عملة. بطاقاتك: { $cards }.
coup-table-line = { $player } خسر: { $cards }
coup-table-empty = لم يتم كشف أي بطاقات بعد.

coup-end-winner = الفائز
coup-end-eliminated = تم الإقصاء
coup-end-line = { $rank }. { $name } ({ $status }) - { $coins } عملة. البطاقات: { $cards }

coup-set-mandatory-coup = حد عملات الانقلاب الإجباري ({ $coins })
coup-enter-mandatory-coup = أدخل العملات المطلوبة لفرض الانقلاب (10 - 20):
coup-option-changed-mandatory-coup = تم تغيير حد الانقلاب الإجباري.

coup-set-timer-duration = مدة مؤقت المقاطعة ({ $seconds } ثانية)
coup-enter-timer-duration = أدخل مدة نافذة التحدي/الحظر (3 - 15 ثانية):
coup-option-changed-timer = تم تغيير مدة المؤقت.
