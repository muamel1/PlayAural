game-name-backgammon = الطاولة (Backgammon)

backgammon-set-match-length = طول المباراة: { $points }
backgammon-enter-match-length = أدخل طول المباراة (1-25):
backgammon-option-changed-match-length = تم ضبط طول المباراة على { $points }.
backgammon-set-bot-strategy = استراتيجية البوت: { $strategy }
backgammon-select-bot-strategy = اختر استراتيجية البوت:
backgammon-option-changed-bot-strategy = تم ضبط استراتيجية البوت على { $strategy }.
backgammon-bot-simple = بسيطة
backgammon-bot-smart = ذكية
backgammon-bot-random = عشوائية

backgammon-roll-dice = رمي النرد
backgammon-offer-double = طلب تضعيف
backgammon-accept-double = قبول التضعيف
backgammon-drop-double = رفض التضعيف
backgammon-undo-move = التراجع عن الحركة
backgammon-read-board = قراءة اللوحة
backgammon-check-status = فحص الحالة
backgammon-check-pip = فحص عدد النقاط المتبقية (Pip)
backgammon-check-cube = فحص مكعب التضعيف
backgammon-check-dice = فحص النرد

backgammon-opening-roll = رمية البداية: رمى { $red } { $red_die }، ورمى { $white } { $white_die }.
backgammon-opening-tie = رمى كلا اللاعبين { $die }. إعادة الرمي.
backgammon-opening-winner = يبدأ { $player } أولاً بالرقمين { $die1 } و { $die2 }.
backgammon-roll = رمى { $player } { $die1 } و { $die2 }.
backgammon-no-moves = لا توجد حركات قانونية لدى { $player }.
backgammon-double-offered = عرض { $player } تضعيفاً إلى { $value }.
backgammon-double-accepted = قبل { $player }. أصبح مكعب التضعيف الآن { $value }.
backgammon-double-dropped = رفض { $player } التضعيف.
backgammon-game-won = فاز { $player } بهذه الجولة وكسب { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
   *[other] نقطة
    }.
backgammon-new-game = بدء الجولة رقم { $number }.
backgammon-crawford = "قاعدة كروفورد" (Crawford Rule). مكعب التضعيف معطل في هذه الجولة.
backgammon-match-winner = فاز { $player } بالمباراة.
backgammon-end-score = { $red } { $red_score }، { $white } { $white_score }. المباراة حتى { $match_length }.

backgammon-announcement-move = حرك { $player } من { $source } إلى { $dest } باستخدام { $die }.
backgammon-announcement-hit = أطاح { $player } بقطعة من { $source } إلى { $dest } باستخدام { $die }.
backgammon-announcement-bear-off = أخرج { $player } قطعة من { $source } باستخدام { $die }.
backgammon-move-undone = تم التراجع عن الحركة.

backgammon-move-label = تحريك { $source } إلى { $dest } باستخدام { $die }
backgammon-move-label-hit = إطاحة من { $source } إلى { $dest } باستخدام { $die }
backgammon-move-label-bear-off = إخراج من { $source } باستخدام { $die }

backgammon-bar = البار (Bar)
backgammon-board-header = لوحة الطاولة
backgammon-board-point = الخانة { $point }: { $state }.
backgammon-point-empty = فارغة
backgammon-point-occupied = { $player } لديه { $count } { $count ->
    [one] قطعة واحدة
    [two] قطعتان
    [few] قطع
   *[other] قطعة
    }

backgammon-status-line = { $red }: في البار { $red_bar }، تم إخراج { $red_off }. { $white }: في البار { $white_bar }، تم إخراج { $white_off }.
backgammon-pip-line = عدد النقاط (Pip): { $red } { $red_pip }، { $white } { $white_pip }.
backgammon-cube-centered = في المنتصف
backgammon-cube-yes = يمكن لـ { $player } طلب التضعيف الآن
backgammon-cube-no = لا يمكن طلب التضعيف حالياً
backgammon-cube-line = المكعب عند { $value }، المالك: { $owner }. إمكانية التضعيف: { $can_double }.
backgammon-dice-line = النرد المتبقي: { $dice }.
backgammon-dice-none = لا يوجد نرد متبقي.
backgammon-score-line = النتيجة: { $red } { $red_score }، { $white } { $white_score }. المباراة حتى { $match_length }.
backgammon-scores-header = نتيجة المباراة
backgammon-score-detail = { $player }: { $score }
backgammon-score-target = الهدف: { $points }
backgammon-turn-preroll = حان دور { $player } ولم يرمِ النرد بعد.
backgammon-waiting-for-double-response = عرض { $player } التضعيف. في انتظار رد { $responder }.

backgammon-cannot-roll = لا يمكنك الرمي الآن.
backgammon-cannot-double = لا يمكنك طلب التضعيف الآن.
backgammon-no-double-pending = لا يوجد تضعيف معلق للرد عليه.
backgammon-no-move-to-undo = لا توجد حركة متاحة للتراجع عنها.
backgammon-illegal-move = هذه الحركة غير قانونية.
