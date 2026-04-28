game-round-start = الجولة { $round }.
game-round-end = اكتملت الجولة { $round }.
game-turn-start = دور { $player }.
game-no-turn = لا يوجد دور لأحد حالياً.

game-score-line = { $player }: { $score } نقطة
game-score-line-target = { $player }: { $score }/{ $target } نقطة
game-points = { $count } { $count ->
    [one] نقطة
   *[other] نقاط
}
game-final-scores-header = النتائج النهائية:

game-winner = فاز { $player }!
game-winner-score = فاز { $player } بـ { $score } نقطة!
game-tiebreaker = تعادل! جولة كسر التعادل!
game-tiebreaker-players = تعادل بين { $players }! جولة كسر التعادل!
game-eliminated = تم استبعاد { $player } بـ { $score } نقطة.

game-set-target-score = الهدف: { $score }
game-enter-target-score = أدخل النقاط المستهدفة:
game-option-changed-target = تم ضبط الهدف إلى { $score } نقطة.

game-set-team-mode = وضع الفريق: { $mode }
game-select-team-mode = اختر وضع الفريق
game-option-changed-team = تم ضبط وضع الفريق إلى { $mode }.
game-team-mode-individual = فردي
game-team-mode-x-teams-of-y = { $num_teams } فرق من { $team_size } لاعبين
game-team-name = فريق { $index }

option-on = تشغيل
option-off = إيقاف

status-box-closed = تم إغلاق معلومات الحالة.

game-leave = مغادرة اللعبة

round-timer-paused = قام { $player } بإيقاف اللعبة مؤقتاً (اضغط p لبدء الجولة التالية).
round-timer-resumed = استؤنف مؤقت الجولة.
round-timer-countdown = الجولة التالية خلال { $seconds }...

dice-keeping = الاحتفاظ بـ { $value }.
dice-rerolling = إعادة رمي { $value }.
dice-locked = هذا النرد مقفل ولا يمكن تغييره.
dice-status-label-locked = { $value } (مقفل)
dice-status-label-kept = { $value } (محتفظ به)

game-deal-counter = توزيع { $current }/{ $total }.
game-you-deal = أنت توزع الأوراق.
game-player-deals = { $player } يوزع الأوراق.

card-name = { $rank } الـ { $suit }
no-cards = لا توجد أوراق

suit-diamonds = ديناري (السمبوكسة)
suit-clubs = سبيت (الأسود)
suit-hearts = هاص (القلب)
suit-spades = كبة (الشجرة)

rank-ace = أص (واحد)
rank-two = 2
rank-three = 3
rank-four = 4
rank-five = 5
rank-six = 6
rank-seven = 7
rank-eight = 8
rank-nine = 9
rank-ten = 10
rank-jack = ولد
rank-queen = بنت
rank-king = شايب

rank-ace-plural = آصات
rank-two-plural = اثنينات
rank-three-plural = ثلاثات
rank-four-plural = أربعات
rank-five-plural = خمسات
rank-six-plural = ستات
rank-seven-plural = سبعات
rank-eight-plural = ثمانيات
rank-nine-plural = تسعات
rank-ten-plural = عشرات
rank-jack-plural = أولاد
rank-queen-plural = بنات
rank-king-plural = شيبان


poker-high-card-with = أعلى ورقة { $high }، مع { $rest }
poker-high-card = أعلى ورقة { $high }
poker-pair-with = زوج من { $pair }، مع { $rest }
poker-pair = زوج من { $pair }
poker-two-pair-with = زوجين، { $high } و { $low }، مع { $kicker }
poker-two-pair = زوجين، { $high } و { $low }
poker-trips-with = ثلاثة من نوع واحد { $trips }، مع { $rest }
poker-trips = ثلاثة من نوع واحد { $trips }
poker-straight-high = متتالية (Sraight) أعلاها { $high }
poker-flush-high-with = فلاش (Flush) أعلاه { $high }، مع { $rest }
poker-full-house = فول هاوس (Full House)، { $trips } على { $pair }
poker-quads-with = أربعة من نوع واحد { $quads }، مع { $kicker }
poker-quads = أربعة من نوع واحد { $quads }
poker-straight-flush-high = ستريت فلاش (Straight Flush) أعلاه { $high }
poker-unknown-hand = يد غير معروفة

game-error-invalid-team-mode = وضع الفريق المختار غير صالح لعدد اللاعبين الحالي.

documentation-menu = الوثائق
introduction = مقدمة
community-rules = قوانين المجتمع
global-keys = ضوابط التحكم العامة
game-rules = قوانين الألعاب
changelog = سجل التغييرات
donation = التبرع
contact = اتصل بنا
document-not-found = الوثيقة غير موجودة.
help = مساعدة

# Game Info (Ctrl+I)
game-info = معلومات اللعبة
game-info-header = معلومات اللعبة الحالية
game-info-name = اللعبة: {$game}
game-info-players = اللاعبون: {$count}
game-info-host = المضيف: {$host}
game-info-status = الحالة: {$status}
game-info-status-waiting = بانتظار اللاعبين في الردهة
game-info-status-playing = قيد اللعب
game-info-options-header = الإعدادات:
game-info-no-options = لا توجد خيارات تخصيص لهذه اللعبة.

# How to Play (Ctrl+F1)
how-to-play = كيف تلعب
game-rules-not-available = قوانين لعبة {$game} غير متوفرة بعد.
