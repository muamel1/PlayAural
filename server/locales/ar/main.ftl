auth-username-password-required = اسم المستخدم وكلمة المرور مطلوبان.
auth-registration-success = تم التسجيل بنجاح! يمكنك الآن تسجيل الدخول باستخدام بيانات اعتمادك.
auth-username-taken = اسم المستخدم هذا مستخدم بالفعل. يرجى اختيار اسم مستخدم آخر.
auth-username-reserved-bot = هذا الاسم محجوز لبوتات PlayAural. يرجى اختيار اسم مستخدم آخر.
auth-registration-error = فشل التسجيل بسبب خطأ في الخادم. يرجى المحاولة مرة أخرى.
auth-error-wrong-password = كلمة المرور غير صحيحة.
auth-error-user-not-found = المستخدم غير موجود.
auth-kicked-logged-in-elsewhere = تم قطع اتصالك لأن حسابك قد سجل الدخول من جهاز آخر.

chat-global = يقول { $player } للجميع: { $message }
dev-announcement-broadcast = { $dev } هو مطور في PlayAural.
admin-announcement-broadcast = { $admin } هو مسؤول في PlayAural.

admin-smtp-updated-success = تم تحديث إعدادات SMTP بنجاح
admin-smtp-settings = إعدادات SMTP
email-reset-subject = رمز إعادة تعيين كلمة مرور PlayAural
email-reset-body = مرحبًا { $username }،\n\nلقد طلبت إعادة تعيين كلمة المرور لحساب PlayAural الخاص بك.\nرمز إعادة التعيين الخاص بك المكون من 6 أرقام هو: { $code }\n\nتنتهي صلاحية هذا الرمز بعد 15 دقيقة.\nإذا لم تكن قد طلبت هذا، يرجى تجاهل هذا البريد الإلكتروني.
email-reset-body-html = <p>مرحبًا { $username }،</p>
    <p>تلقينا طلبًا لإعادة تعيين كلمة المرور لحساب PlayAural الخاص بك.</p>
    <p>رمز الاسترداد الخاص بك المكون من 6 أرقام هو:</p>
    <h2>{ $code }</h2>
    <p>ستنتهي صلاحية هذا الرمز خلال 15 دقيقة بالضبط.</p>
    <p>إذا لم تكن قد طلبت هذا، يرجى تجاهل هذا البريد الإلكتروني. سيبقى حسابك آمنًا.</p>
    <p>أطيب التحيات،<br>Trung</p>
email-test-subject = اختبار SMTP لـ PlayAural
email-test-body = هذا بريد إلكتروني تجريبي من خادم PlayAural للتحقق من تكوين SMTP الخاص بك.
email-test-body-html = <p>مرحبًا،</p>
    <p>هذا بريد إلكتروني تجريبي من خادم PlayAural.</p>
    <p>إذا كنت تقرأ هذا، فإن تكوين SMTP الخاص بك يقوم بإرسال رسائل البريد الإلكتروني بتنسيق HTML بنجاح.</p>
smtp-test-sending = جاري اختبار الاتصال، يرجى الانتظار...
smtp-test-success = تم إرسال بريد الاختبار الإلكتروني بنجاح إلى { $email }!
smtp-test-failed = فشل إرسال بريد الاختبار الإلكتروني: { $error }
smtp-host = المضيف: { $value }
smtp-port = المنفذ: { $value }
smtp-username = اسم المستخدم: { $value }
smtp-password = كلمة المرور: { $value }
smtp-from-email = بريد المرسل: { $value }
smtp-from-name = اسم المرسل: { $value }
smtp-encryption = التشفير: { $value }
smtp-test-connection = اختبار الاتصال
smtp-not-set = غير معين
smtp-prompt-host = أدخل مضيف SMTP (مثال: smtp.gmail.com):
smtp-prompt-port = أدخل منفذ SMTP (مثال: 587 أو 465):
smtp-prompt-username = أدخل اسم مستخدم SMTP:
smtp-prompt-password = أدخل كلمة مرور SMTP:
smtp-prompt-from-email = أدخل عنوان بريد المرسل:
smtp-prompt-from-name = أدخل اسم المرسل (مثال: دعم PlayAural):
smtp-prompt-test-email = أدخل عنوان البريد الإلكتروني المستهدف للاختبار:
smtp-enc-none = بدون تشفير
smtp-enc-ssl = استخدام SSL
smtp-enc-tls = تمكين تشفير TLS تلقائيًا (STARTTLS)
smtp-current-enc = * { $value }

main-menu-title = القائمة الرئيسية

play = لعب
view-active-tables = عرض الطاولات النشطة
options = الخيارات
logout = تسجيل الخروج
back = رجوع
go-back = رجوع
context-menu = قائمة السياق.
no-actions-available = لا توجد إجراءات متاحة.
table-new-host-promoted = { $player } هو الآن مضيف الطاولة.
return-to-lobby = العودة إلى صالة الانتظار
create-table = إنشاء طاولة جديدة
leave-table = مغادرة الطاولة
start-game = بدء اللعبة
add-bot = إضافة بوت
remove-bot = إزالة بوت
actions-menu = قائمة الإجراءات
save-table = حفظ الطاولة
whose-turn = دور من
whos-at-table = من على الطاولة
check-scores = التحقق من النقاط
check-scores-detailed = النقاط التفصيلية

game-player-skipped = تم تخطي { $player }.

table-created = أنشأ { $host } طاولة { $game } جديدة.
table-created-broadcast = أنشأ { $host } طاولة { $game } جديدة.
table-joined = انضم { $player } إلى الطاولة.
table-left = غادر { $player } الطاولة.
new-host = { $player } هو المضيف الآن.
waiting-for-players = بانتظار اللاعبين. الحد الأدنى { $min }، الحد الأقصى { $max }.
game-starting = تبدأ اللعبة الآن!
table-listing = طاولة { $host } ({ $count } لاعبين)
table-listing-one = طاولة { $host } ({ $count } لاعب)
table-listing-with = طاولة { $host } ({ $count } لاعبين) مع { $members }
table-listing-game = { $game }: طاولة { $host } ({ $count } لاعبين)
table-listing-game-one = { $game }: طاولة { $host } ({ $count } لاعب)
table-listing-game-with = { $game }: طاولة { $host } ({ $count } لاعبين) مع { $members }
table-listing-game-status = { $game } [{ $status }]: طاولة { $host } ({ $count } لاعبين)
table-listing-game-one-status = { $game } [{ $status }]: طاولة { $host } ({ $count } لاعب)
table-listing-game-with-status = { $game } [{ $status }]: طاولة { $host } ({ $count } لاعبين) مع { $members }
table-status-waiting = قيد الانتظار
table-status-playing = قيد اللعب
table-status-finished = منتهية
table-not-exists = لم تعد الطاولة موجودة.
table-full = الطاولة ممتلئة.
player-replaced-by-bot = يلعب { $bot } الآن نيابة عن { $player }.
player-reclaimed-from-bot = عاد { $player } واستعاد مقعده من { $bot }.
player-took-over = استعاد { $player } مقعده من { $bot }.
spectator-joined = انضممت إلى طاولة { $host } كمراقب.

spectate = مراقبة
now-playing = { $player } يلعب الآن.
now-spectating = { $player } يراقب الآن.
spectator-left = توقف { $player } عن المراقبة.

welcome = مرحبًا بك في PlayAural!
goodbye = وداعًا!

user-online = أصبح { $player } متصلاً الآن.
user-offline = أصبح { $player } غير متصل.
friend-online = صديقك { $player } متصل الآن.
friend-offline = صديقك { $player } أصبح غير متصل.
permission-denied = لا تملك الصلاحية لإجراء هذا الإجراء على مطور.
kick-user = طرد المستخدم
kick-broadcast = تم طرد { $target } بواسطة { $actor }.
you-were-kicked = لقد تم طردك بواسطة { $actor }.
user-not-online = المستخدم { $target } غير متصل.
kick-immune = لا يمكنك طرد هذا المستخدم.
kick-confirm = هل أنت متأكد أنك تريد طرد { $player }؟
no-users-to-kick = لا يوجد مستخدمون متاحون لطردهم.
usage-kick = الاستخدام: /kick <username>
online-users-none = لا يوجد مستخدمون متصلون.
online-users-one = مستخدم واحد: { $users }
online-users-many = { $count } مستخدمين: { $users }
online-user-not-in-game = ليس في لعبة
online-user-waiting-approval = بانتظار الموافقة
user-role-dev = مطور
user-role-admin = مسؤول
user-role-user = مستخدم
client-type-web = ويب
client-type-python = مكتبي
client-type-mobile = محمول
online-user-full-entry = { $username } ({ $role }، { $client }، { $language }): { $status }
online-user-actions-title = إجراءات لـ { $username }
user-not-online-anymore = لم يعد هذا المستخدم متصلاً.
close-menu = إغلاق

language = اللغة
language-option = اللغة: { $language }
language-changed = تم ضبط اللغة إلى { $language }.

option-on = تشغيل
option-off = إيقاف

# Multi-select option sub-menu controls
option-back = رجوع
option-select-all = تحديد الكل
option-deselect-all = إلغاء تحديد الكل
option-selected-count = تم تحديد { $count }
option-deselected-count = تم إلغاء تحديد { $count }
option-min-selected = يجب عليك تحديد { $count } على الأقل.
option-max-selected = يمكنك تحديد { $count } كحد أقصى.

turn-sound-option = صوت الدور: { $status }

custom-bot-names-option = أسماء البوتات المخصصة: { $status }
confirm-destructive-option = تأكيد الإجراءات الخطيرة: { $status }
clear-kept-option = مسح النرد المحتفظ به عند الرمي: { $status }
option-notify-table-created-on = التنبيه عند إنشاء طاولة: تشغيل
option-notify-table-created-off = التنبيه عند إنشاء طاولة: إيقاف
option-notify-user-presence-on = تنبيهات اتصال/انقطاع المستخدمين: تشغيل
option-notify-user-presence-off = تنبيهات اتصال/انقطاع المستخدمين: إيقاف
option-notify-friend-presence-on = تنبيهات اتصال/انقطاع الأصدقاء: تشغيل
option-notify-friend-presence-off = تنبيهات اتصال/انقطاع الأصدقاء: إيقاف
dice-keeping-style-option = طريقة الاحتفاظ بالنرد: { $style }
dice-keeping-style-changed = تم ضبط طريقة الاحتفاظ بالنرد إلى { $style }.
dice-keeping-style-indexes = مؤشرات النرد
dice-keeping-style-values = قيم النرد

# Personal options split: general vs game options
general-options = الخيارات العامة
game-options = خيارات اللعبة

# Game Options (declarative preferences with per-game overrides)
pref-category-display = العرض
pref-set-brief-announcements = الإعلانات المختصرة: { $status }
pref-changed-brief-announcements = الإعلانات المختصرة { $status }.
pref-desc-brief-announcements = اختصار الإعلانات الخاصة بالتحركات والأحداث داخل اللعبة؛ قم بإيقافه للحصول على تعليق صوتي كامل.
pref-category-sounds = الأصوات
pref-category-gameplay = طريقة اللعب
pref-category-dice = النرد
pref-default = الافتراضي
pref-per-game-for = { $game }: { $value }
pref-reset-all = إعادة تعيين جميع خيارات اللعبة
pref-reset-category = إعادة تعيين خيارات { $category }
pref-reset-done = تم إعادة تعيين خيارات اللعبة.
pref-set-play-turn-sound = صوت الدور: { $status }
pref-set-confirm-destructive-actions = تأكيد الإجراءات الخطيرة: { $status }
pref-set-allow-custom-bot-names = أسماء البوتات المخصصة: { $status }
pref-set-clear-kept-on-roll = مسح النرد المحتفظ به عند الرمي: { $status }
pref-set-dice-keeping-style = طريقة الاحتفاظ بالنرد: { $choice }
pref-changed-play-turn-sound = صوت الدور { $status }.
pref-changed-confirm-destructive-actions = تأكيد الإجراءات الخطيرة { $status }.
pref-changed-allow-custom-bot-names = أسماء البوتات المخصصة { $status }.
pref-changed-clear-kept-on-roll = مسح النرد المحتفظ به عند الرمي { $status }.
pref-changed-dice-keeping-style = تم ضبط طريقة الاحتفاظ بالنرد إلى { $choice }.
pref-desc-play-turn-sound = تشغيل صوت عندما يحين دورك.
pref-desc-confirm-destructive-actions = طلب التأكيد قبل الإجراءات الخطيرة أو غير القابلة للتراجع، مثل التمرير في لعبة بوسوي دوس (Pusoy Dos).
pref-desc-allow-custom-bot-names = السماح لك بتعيين أسماء مخصصة للبوتات التي تضيفها إلى الطاولة.
pref-desc-clear-kept-on-roll = تحرير النرد المحتفظ به تلقائيًا في كل مرة ترمي فيها.
pref-desc-dice-keeping-style = اختر ما إذا كان سيتم الاحتفاظ بالنرد حسب الموضع (1-5) أو حسب قيمة الوجه (1-6).

cancel = إلغاء
no-bot-names-available = لا توجد أسماء بوتات متاحة.
enter-bot-name = أدخل اسم البوت
bot-name-invalid-length = يجب أن يتراوح اسم البوت بين 3 و 30 حرفًا.
bot-name-invalid-characters = يمكن أن تحتوي أسماء البوتات على أحرف وأرقام ومسافات فقط.
bot-name-already-used = هناك لاعب أو بوت بهذا الاسم موجود بالفعل على هذه الطاولة.
bot-name-registered-account = هذا الاسم ينتمي إلى حساب مسجل. يرجى اختيار اسم بوت آخر.
table-name-already-used = هناك لاعب أو بوت بهذا الاسم موجود بالفعل على هذه الطاولة.
no-options-available = لا توجد خيارات متاحة.
no-scores-available = لا توجد نقاط متاحة.


saved-tables = الطاولات المحفوظة
no-saved-tables = ليس لديك طاولات محفوظة.
no-active-tables = لا توجد طاولات نشطة.
no-active-tables-all = لا توجد طاولات نشطة متاحة.
no-active-tables-waiting = لا توجد طاولات انتظار متاحة.
no-active-tables-playing = لا توجد طاولات لعب متاحة.
active-tables-filter = التصفية: { $filter }
filter-name-all = الكل
filter-name-waiting = في الانتظار
filter-name-playing = قيد اللعب
game-category-filter = الفئة: { $category }
game-category-filter-option = { $category } ({ $count })
game-category-all = الكل
game-category-cards = ألعاب البطاقات
game-category-poker = ألعاب البوكر
game-category-dice = ألعاب النرد
game-category-board = ألعاب الطاولة (اللوحية)
game-category-arcade = ألعاب الآركيد
game-category-misc = متنوعة
no-games-in-category = لا توجد ألعاب متاحة في هذه الفئة.
restore-table = استعادة
delete-saved-table = حذف
saved-table-deleted = تم حذف الطاولة المحفوظة.
missing-players = تعذر الاستعادة: هؤلاء اللاعبون غير متاحين: { $players }
table-restored = تم استعادة الطاولة! تم نقل جميع اللاعبين.
table-saved-destroying = تم حفظ الطاولة! العودة إلى القائمة الرئيسية.
game-type-not-found = لم يعد نوع اللعبة موجودًا.

action-not-your-turn = ليس دورك.
action-not-playing = لم تبدأ اللعبة بعد.
action-spectator = لا يمكن للمراقبين فعل هذا.
action-not-host = يمكن للمضيف فقط فعل هذا.
action-not-available = هذا الإجراء غير متاح حاليًا.
action-game-in-progress = لا يمكن القيام بذلك أثناء سير اللعبة.
action-need-more-players = بحاجة إلى المزيد من اللاعبين للبدء.
action-table-full = الطاولة ممتلئة.
action-start-needs-more-players = تعذر البدء. اللاعبون النشطون: { $current }. الحد الأدنى المطلوب: { $minimum }.
action-start-has-too-many-players = تعذر البدء. اللاعبون النشطون: { $current }. الحد الأقصى المسموح به: { $maximum }.
action-start-requires-exact-players = تعذر البدء. اللاعبون النشطون: { $current }. المطلوب: { $required } بالضبط.
action-no-bots = لا توجد بوتات لإزالتها.
action-bots-cannot = لا يمكن للبوتات فعل هذا.
action-no-scores = لا توجد نقاط متاحة بعد.

options-category-audio = الصوت
options-category-accessibility = إمكانية الوصول
options-category-notifications = التنبيهات
options-category-game = اللعبة

music-volume-option = مستوى صوت الموسيقى: { $value }%
sound-volume-option = مستوى صوت المؤثرات الصوتية: { $value }%
ambience-volume-option = مستوى صوت البيئة المحيطة: { $value }%
voice-volume-option = مستوى صوت المحادثة الصوتية: { $value }%
volume-choice-off = إيقاف
volume-choice-percent = { $value }%
volume-choice-current = { $label } (الحالي)
audio-input-device-option = جهاز إدخال الصوت: { $device }
audio-input-device-default = جهاز الإدخال الافتراضي للنظام

mute-global-chat-option = كتم الدردشة العامة: { $status }
mute-table-chat-option = كتم دردشة الطاولة: { $status }
invert-multiline-enter-option = عكس سلوك مفتاح Enter: { $status }
play-typing-sounds-option = تشغيل أصوات الكتابة: { $status }
enter-music-volume = أدخل مستوى صوت الموسيقى (0-100)
enter-ambience-volume = أدخل مستوى صوت البيئة المحيطة (0-100)
enter-voice-volume = أدخل مستوى صوت المحادثة الصوتية (10-100)
invalid-volume = مستوى صوت غير صالح.

dice-not-rolled = لم تقم بالرمي بعد.
dice-locked = هذا النرد مقفل.
dice-no-dice = لا يوجد نرد متاح.

game-turn-start = دور { $player }.
game-no-turn = ليس دور أحد الآن.
table-no-players = لا يوجد لاعبون.
table-players-one = { $count } لاعب: { $players }.
table-players-many = { $count } لاعبين: { $players }.
table-spectators = المراقبون: { $spectators }.
table-host-suffix = (المضيف)
table-voice-chat-suffix = (في المحادثة الصوتية)
game-leave = مغادرة
game-over = انتهت اللعبة
game-final-scores = النقاط النهائية
game-points = { $count } { $count ->
    [one] نقطة
   *[other] نقاط
}
status-box-closed = مغلق.
play = لعب

leaderboards = لوحات الصدارة
leaderboard-no-data = لا توجد بيانات للوحة الصدارة لهذه اللعبة بعد.

leaderboard-type-wins = متصدرو الانتصارات
leaderboard-type-rating = تقييم المهارة
leaderboard-type-total-score = إجمالي النقاط
leaderboard-type-high-score = أعلى نقاط
leaderboard-type-games-played = الألعاب الملعوبة
leaderboard-type-avg-points-per-turn = متوسط النقاط في الدور
leaderboard-type-best-single-turn = أفضل دور فردي
leaderboard-type-score-per-round = النقاط في الجولة
leaderboard-type-most-enemies-defeated = أكثر الأعداء المهزومين
leaderboard-type-deepest-wave-reached = أبعد موجة تم الوصول إليها


leaderboard-wins-entry = { $rank }: { $player }، { $wins } { $wins ->
    [one] فوز
   *[other] فوزًا
} { $losses } { $losses ->
    [one] خسارة
   *[other] خسارةً
}، نسبة الفوز { $percentage }%
leaderboard-score-entry = { $rank }. { $player }: { $value }
leaderboard-games-entry = { $rank }. { $player }: { $value } مباراة
leaderboard-avg-entry = { $rank }. { $player }: { $value }

leaderboard-no-player-stats = لم تلعب هذه اللعبة بعد.

leaderboard-no-ratings = لا توجد بيانات تقييم لهذه اللعبة بعد.
leaderboard-rating-entry = { $rank }. { $player }: تقييم { $rating } ({ $mu } ± { $sigma })
leaderboard-no-player-rating = ليس لديك تقييم لهذه اللعبة بعد.

my-stats = إحصائياتي
my-stats-select-game = اختر لعبة لعرض إحصائياتك
my-stats-no-data = لم تلعب هذه اللعبة بعد.
my-stats-no-games = لم تلعب أي ألعاب بعد.
my-stats-header = { $game } - إحصائياتك
my-stats-wins = الانتصارات: { $value }
my-stats-losses = الخسائر: { $value }
my-stats-winrate = نسبة الفوز: { $value }%
my-stats-games-played = الألعاب الملعوبة: { $value }
my-stats-total-score = إجمالي النقاط: { $value }
my-stats-high-score = أعلى نقاط: { $value }
my-stats-rating = تقييم المهارة: { $value } ({ $mu } ± { $sigma })
my-stats-no-rating = لا يوجد تقييم مهارة بعد
my-stats-avg-per-turn = متوسط النقاط في الدور: { $value }
my-stats-best-turn = أفضل دور فردي: { $value }
my-stats-score-per-round = النقاط في الجولة: { $value }
my-stats-most-enemies-defeated = أكثر الأعداء المهزومين: { $value }
my-stats-deepest-wave-reached = أبعد موجة تم الوصول إليها: { $value }

predict-outcomes = توقع النتائج
predict-header = النتائج المتوقعة (حسب تقييم المهارة)
predict-note-multiplayer = يتم عرض نسب الفوز للمباريات ثنائية اللاعبين فقط. عند وجود 3 لاعبين بشريين أو أكثر، يتم عرض تقييمات المهارة فقط.
predict-entry = { $rank }. { $player } (تقييم: { $rating })
predict-entry-2p = { $rank }. { $player } (تقييم: { $rating }، فرصة الفوز { $probability }%)
predict-unavailable = توقعات التقييم غير متاحة.
predict-need-players = بحاجة إلى لاعبين بشريين اثنين على الأقل للتوقعات.
action-need-more-humans = بحاجة للمزيد من اللاعبين البشريين.
confirm-leave-game = هل أنت متأكد من مغادرة الطاولة؟
confirm-yes = نعم
confirm-no = لا

administration = الإدارة

account-approval = الموافقة على الحسابات
no-pending-accounts = لا توجد حسابات معلقة.
approve-account = موافقة
decline-account = رفض
account-approved = تم قبول حساب { $player }.
account-declined = تم رفض حساب { $player } وحذفه.

waiting-for-approval = حسابك قيد الانتظار لموافقة المسؤول. يرجى الانتظار...
account-approved-welcome = لقد تم قبول حسابك! مرحبًا بك في PlayAural!
account-declined-goodbye = تم رفض طلب إنشاء حسابك.

account-request = طلب حساب
account-action = تم اتخاذ إجراء بشأن الحساب

promote-admin = ترقية إلى مسؤول
demote-admin = تخفيض رتبة المسؤول
ban-user = حظر المستخدم
unban-user = إلغاء حظر المستخدم
no-users-to-promote = لا يوجد مستخدمون متاحون للترقية.
no-admins-to-demote = لا يوجد مسؤولون متاحون لتخفيض رتبتهم.
confirm-promote = هل أنت متأكد أنك تريد ترقية { $player } إلى مسؤول؟
confirm-demote = هل أنت متأكد أنك تريد تخفيض رتبة { $player } من رتبة مسؤول؟
broadcast-to-all = إعلان لجميع المستخدمين
broadcast-to-admins = إعلان للمسؤولين فقط
broadcast-to-nobody = صامت (بدون إعلان)
promote-announcement = تمت ترقية { $player } إلى مسؤول!
promote-announcement-you = تمت ترقيتك إلى مسؤول!
demote-announcement = تم تخفيض رتبة { $player } من رتبة مسؤول.
demote-announcement-you = تم تخفيض رتبتك من رتبة مسؤول.
not-admin-anymore = لم تعد مسؤولاً ولا يمكنك القيام بهذا الإجراء.
dev-only-action = يقتصر هذا الإجراء على المطورين فقط.

ban-duration-1h = ساعة واحدة
ban-duration-6h = 6 ساعات
ban-duration-12h = 12 ساعة
ban-duration-1d = يوم واحد
ban-duration-3d = 3 أيام
ban-duration-1w = أسبوع واحد
ban-duration-1m = شهر واحد
ban-duration-permanent = دائم

reason-spam = رسائل مزعجة (سبام)
reason-harassment = مضايقة
reason-cheating = غش
reason-inappropriate = سلوك غير لائق
reason-custom = آخر / مخصص

no-users-to-ban = لا يوجد مستخدمون متاحون للحظر.
no-banned-users = لا يوجد مستخدمون محظورون حاليًا.

ban-broadcast = تم حظر { $target } بواسطة { $actor } بسبب { $reason }. المدة: { $duration }.
unban-broadcast = تم إلغاء حظر { $target } بواسطة { $actor }.

banned-menu-title = الحساب محظور
banned-reason = السبب: { $reason }
banned-expires = تاريخ انتهاء الصلاحية: { $expires }
banned-permanent = تاريخ انتهاء الصلاحية: دائم
disconnect = قطع الاتصال

enter-custom-ban-reason = أدخل سبب الحظر المخصص:

mute-user = كتم المستخدم
unmute-user = إلغاء كتم المستخدم
no-users-to-mute = لا يوجد مستخدمون متاحون لكتمهم.
no-muted-users = لا يوجد مستخدمون مكتومون حاليًا.
mute-duration-5m = 5 دقائق
mute-duration-15m = 15 دقيقة
mute-duration-30m = 30 دقيقة
mute-duration-1h = ساعة واحدة
mute-duration-6h = 6 ساعات
mute-duration-1d = يوم واحد
mute-duration-permanent = دائم
enter-custom-mute-reason = أدخل سبب الكتم المخصص:
mute-broadcast = تم كتم { $target } بواسطة { $actor } بسبب { $reason }. المدة: { $duration }.
unmute-broadcast = تم إلغاء كتم { $target } بواسطة { $actor }.
you-have-been-muted = لقد تم كتمك. السبب: { $reason }. المدة: { $duration }.
you-have-been-unmuted = لقد تم إلغاء كتمك. يمكنك الدردشة مجددًا.
muted-remaining-seconds = أنت مكتوم. المتبقي: { $seconds } ثانية.
muted-remaining-minutes = أنت مكتوم. المتبقي: { $minutes } دقيقة.
muted-permanent = لقد تم كتمك بشكل دائم. اتصل بالمسؤول لمزيد من المعلومات.
auto-muted-seconds = لقد تم كتمك مؤقتًا بسبب الإرسال العشوائي (سبام). المتبقي: { $seconds } ثانية.
auto-muted-minutes = لقد تم كتمك مؤقتًا بسبب الإرسال العشوائي (سبام). المتبقي: { $minutes } دقيقة.
auto-muted-applied-seconds = تم كتمك تلقائيًا لمدة { $seconds } ثانية بسبب الإفراط في إرسال الرسائل العشوائية.
auto-muted-applied-minutes = تم كتمك تلقائيًا لمدة { $minutes } دقيقة بسبب الإفراط في إرسال الرسائل العشوائية.
chat-rate-limited = تمهل! أنت ترسل الرسائل بسرعة كبيرة.
chat-global-disabled-send = الدردشة العامة معطلة في خياراتك. قم بتشغيل الدردشة العامة مجددًا قبل إرسال الرسائل العامة.
chat-table-disabled-send = دردشة الطاولة معطلة في خياراتك. قم بتشغيل دردشة الطاولة مجددًا قبل إرسال رسائل الطاولة.
admin-spam-alert = تحذير: { $username } يرسل رسائل عشوائية بشكل مفرط وتم كتمه تلقائيًا.

broadcast-announcement = بث إعلان
admin-broadcast-prompt = أدخل الرسالة لبثها إلى جميع المستخدمين المتصلين. (سيتم إرسال هذا إلى الجميع!)
admin-broadcast-sent = تم إرسال البث إلى { $count } مستخدم.

manage-motd = إدارة رسالة اليوم (MOTD)
create-update-motd = إنشاء/تحديث رسالة اليوم
view-motd = عرض رسالة اليوم النشطة
delete-motd = حذف رسالة اليوم
motd-version-prompt = أدخل رقم إصدار رسالة اليوم الجديد (يجب أن يكون > 0):
invalid-motd-version = إصدار رسالة اليوم غير صالح. يجب أن يكون رقمًا موجبًا.
motd-prompt = أدخل رسالة اليوم للغة { $language } (استخدم Enter لسطر جديد، و Shift+Enter للإرسال إذا كان سلوك Enter معكوسًا):
motd-created = تم إنشاء رسالة اليوم بالإصدار { $version } بنجاح.
motd-cancelled = تم إلغاء إنشاء رسالة اليوم.
motd-deleted = تم حذف رسالة اليوم.
motd-delete-empty = لا توجد رسالة اليوم نشطة لحذفها.
motd-not-exists = لا توجد رسالة اليوم نشطة.
motd-announcement = رسالة اليوم
motd-broadcast = رسالة اليوم الجديدة: { $message }
error-no-languages = خطأ: لم يتم العثور على أي لغات.
ok = موافق

admin-broadcast-sent = تم إرسال البث إلى { $count } مستخدم.

unknown-player = لاعب مجهول

logout-confirm-title = هل أنت متأكد من رغبتك في تسجيل الخروج والخروج من اللعبة؟
logout-confirm-yes = نعم، تسجيل الخروج
logout-confirm-no = لا، البقاء
goodbye = وداعًا!

system-name = النظام
server-restarting = سيتم إعادة تشغيل الخادم خلال { $seconds } ثانية...
server-restarting-now = يتم إعادة تشغيل الخادم الآن. يرجى إعادة الاتصال قريبًا.
server-shutting-down = سيتم إيقاف تشغيل الخادم خلال { $seconds } ثانية...
server-shutting-down-now = يتم إيقاف تشغيل الخادم الآن. وداعًا!
server-error-changing-language = خطأ أثناء تغيير اللغة: { $error }
default-save-name = { $game } - { $date }

speech-settings = إعدادات الكلام
speech-mode-option = وضع الكلام: { $status }
speech-rate-option = سرعة الكلام: { $value }%
speech-voice-option = الصوت: { $voice }
select-voice = اختر الصوت
enter-speech-rate = أدخل سرعة الكلام (50-300)
invalid-rate = سرعة غير صالحة. يرجى إدخال رقم بين 50 و 300.
mode-aria = Aria-live
mode-web-speech = Web Speech API
default-voice = الصوت الافتراضي
mobile-speech-settings = إعدادات الكلام للمحمول
mobile-tts-engine-option = محرك نطق النصوص (TTS): { $engine }
mobile-tts-engine-system = افتراضي النظام
mobile-tts-engine-system-selected = محرك نطق النصوص الافتراضي للنظام
mobile-tts-engine-api-note = يتم إدارة تحديد محرك الأندرويد من خلال إعدادات النظام في هذا الإصدار.
mobile-tts-voice-option = صوت المحمول: { $voice }
mobile-tts-rate-option = سرعة كلام المحمول: { $value }%
mobile-tts-enter-rate = أدخل سرعة كلام المحمول (50-200)
mobile-tts-invalid-rate = سرعة غير صالحة. يرجى إدخال رقم بين 50 و 200.

player-kicked-offline = تم طرد اللاعب { $player } (غير متصل بالإنترنت).
game-paused-host-disconnect = تم إيقاف اللعبة مؤقتًا. بانتظار عودة اتصال المضيف { $player }...
game-resumed = عاد اتصال المضيف { $player }. تم استئناف اللعبة!
new-host = المضيف الجديد: { $player }

auth-error-username-length = يجب أن يتراوح اسم المستخدم بين 3 و 30 حرفًا.
auth-error-username-invalid-chars = قد يحتوي اسم المستخدم على أحرف وأرقام ومسافات فقط (بدون مسافات متتالية، وبدون رموز خاصة).
auth-error-password-weak = يجب أن تتكون كلمة المرور من 8 أحرف على الأقل وأن تحتوي على أحرف وأرقام.

personal-and-options = الخيارات الشخصية والإعدادات
profile = الملف الشخصي
friends = الأصدقاء
profile-registration-date = تاريخ التسجيل: { $date }
profile-username = اسم المستخدم: { $username }
profile-email = البريد الإلكتروني: { $email }
admin-view-email = عرض المسؤول - البريد الإلكتروني: { $email }
profile-gender = الجنس: { $gender }
profile-bio = السيرة الذاتية: { $bio }
profile-bio-empty = غير معين
profile-email-empty = غير معين

gender-male = ذكر
gender-female = أنثى
gender-non-binary = غير ثنائي
gender-not-set = غير معين

action-set-edit = تعيين / تعديل
action-delete = حذف
bio-already-empty = السيرة الذاتية فارغة بالفعل.
bio-deleted = تم حذف السيرة الذاتية.
bio-updated = تم تحديث السيرة الذاتية.

enter-email = أدخل عنوان البريد الإلكتروني الجديد:
email-updated = تم تحديث عنوان البريد الإلكتروني.
enter-bio = أدخل سيرتك الذاتية:

gender-updated = تم تحديث الجنس.
no-changes-made = لم يتم إجراء أي تغييرات.
confirm-email-change = هل أنت متأكد من رغبتك في تغيير بريدك الإلكتروني إلى { $email }؟

mandatory-email-notice = يجب عليك تعيين بريد إلكتروني لمتابعة المشاركة. بريدك الإلكتروني خاص ولا يعرفه سواك.
error-email-empty = البريد الإلكتروني إلزامي ولا يمكن تركه فارغًا.
error-email-invalid = تنسيق البريد الإلكتروني غير صالح. يرجى تقديم عنوان بريد إلكتروني صالح.
reg-error-email = البريد الإلكتروني مطلوب للتسجيل.

error-email-taken = هذا البريد الإلكتروني مستخدم بالفعل من قبل حساب آخر.

error-bio-length = يجب ألا تتجاوز السيرة الذاتية 250 حرفًا.
error-captcha-failed = فشل التحقق. يرجى المحاولة مرة أخرى.
error-rate-limit-login = محاولات تسجيل دخول فاشلة كثيرة جدًا. يرجى المحاولة مرة أخرى بعد 15 دقيقة.
error-rate-limit-register = لقد وصلت إلى الحد الأقصى لعدد تسجيلات الحسابات لهذا اليوم.
auth-error-rate-limit = محاولات تسجيل دخول فاشلة كثيرة جدًا. يرجى المحاولة مرة أخرى بعد 15 دقيقة.

friends-my-friends = أصدقائي
friends-pending-requests = طلبات معلقة ({ $count })
friends-no-pending-requests = الطلبات المعلقة
friends-send-request = إرسال طلب صداقة
friends-list-empty = ليس لديك أي أصدقاء بعد.
friend-status-offline = غير متصل
friend-status-playing = يلعب { $game }
friend-status-spectating = يراقب { $game }
friend-status-lobby = في صالة الانتظار
friend-list-entry = { $username } ({ $status })

friend-actions-title = إجراءات لـ { $username }
view-profile = عرض الملف الشخصي
join-table = انضمام للطاولة
remove-friend = إزالة صديق
friend-remove-confirm = إزالة { $username } من قائمة أصدقائك؟
friend-remove-not-friends = لم يعد { $username } في قائمة أصدقائك.
already-in-table = أنت موجود بالفعل في هذه الطاولة.
friend-removed-success = تم إزالة { $username } من قائمة أصدقائك بنجاح.
friend-removed-notify = قام { $username } بإزالتك من قائمة أصدقائه.

no-pending-requests = لا توجد طلبات معلقة.
friend-request-from = طلب صداقة من { $username }
accept = قبول
decline = رفض
friend-accepted-success = أنتم الآن أصدقاء مع { $username }.
friend-accepted-notify = لقد قبل { $username } طلب الصداقة الخاص بك!
request-not-found = لم يعد طلب الصداقة موجودًا.
friend-declined-success = تم رفض طلب الصداقة.
friend-declined-notify = رفض { $username } طلب الصداقة الخاص بك.
friend-request-cancelled = تم إلغاء طلب الصداقة المرسل إلى { $username }.
friend-request-cancelled-notify = ألغى { $username } طلب الصداقة الخاص به.

public-profile-title = ملف { $username } الشخصي
enter-friend-username = أدخل اسم المستخدم للشخص الذي تريد إضافته كصديق:
friend-error-self = لا يمكنك إرسال طلب صداقة إلى نفسك.
friend-error-already-friends = أنت صديق بالفعل لهذا المستخدم.
friend-error-duplicate = لديك بالفعل طلب صداقة معلق لهذا المستخدم.
friend-request-sent = تم إرسال طلب الصداقة إلى { $username }.
friend-request-received = لقد تلقيت طلب صداقة جديدًا من { $username }.

friends-grouped-requests = لديك طلبات صداقة معلقة من: { $usernames }
friends-grouped-accepted = تم قبول طلبات الصداقة الخاصة بك من قِبل: { $usernames }
friends-grouped-declined = تم رفض طلبات الصداقة الخاصة بك من قِبل: { $usernames }
friends-grouped-removed = تمت إزالتك من قائمة الأصدقاء من قِبل: { $usernames }
friends-and-others = { $names } و { $count } { $count ->
    [one] آخر
   *[other] آخرين
}

send-private-message = إرسال رسالة خاصة
enter-pm-message = أدخل رسالتك إلى { $username }:
pm-error-not-friends = يمكنك إرسال الرسائل الخاصة للأصدقاء فقط.
pm-error-offline = { $username } غير متصل بالإنترنت حاليًا.
pm-sent-success = تم إرسال الرسالة إلى { $username }.
pm-sent-content = أنت إلى { $username }: { $message }
pm-received = رسالة خاصة من { $username }: { $message }

host-management = إدارة المضيف
table-spectator-suffix = (مراقب)
host-management-set-private = جعل الطاولة خاصة
host-management-set-public = جعل الطاولة عامة
host-management-invite = دعوة صديق
host-management-pass-host = نقل مضيف الطاولة للاعب آخر
host-management-kick = طرد لاعب
host-management-kick-ban = طرد وحظر لاعب
host-management-restart-game = إعادة تشغيل اللعبة
host-management-table-now-private = هذه الطاولة خاصة الآن. يمكن للاعبين المدعوين فقط الانضمام.
host-management-table-now-public = هذه الطاولة عامة الآن.
host-restart-confirm = هل تريد إعادة تشغيل اللعبة الحالية وإعادة هذه الطاولة إلى غرفة الانتظار؟ سيبقى اللاعبون الحاليون والمحادثة الصوتية متصلين، ولكن سيتم إلغاء المباراة الحالية.
host-restart-broadcast = أطلق { $player } إعادة تشغيل اللعبة. عادت الطاولة إلى غرفة الانتظار.
host-restart-not-playing = لا توجد لعبة نشطة لإعادة تشغيلها.
host-invite-no-friends = (لا يوجد أصدقاء متاحون لدعوتهم)
host-invite-sent = تم إرسال الدعوة إلى { $player }.
host-invite-friend-unavailable = هذا الصديق غير متصل بالإنترنت حاليًا.
host-invite-already-pending = هناك دعوة معلقة بالفعل لهذا الصديق.
host-invite-friend-busy = هذا الصديق موجود بالفعل في لعبة.
host-invite-declined = رفض { $player } دعوتك للطاولة.
table-invite-received = لقد دعاك { $host } إلى طاولة { $game } الخاصة به.
table-invite-queued = دعاك { $host } إلى طاولة { $game } الخاصة به. أكمل مدخلاتك الحالية للاستجابة.
table-invite-expired = انتهت صلاحية دعوة الطاولة.
invite-accept = قبول الدعوة
invite-decline = رفض الدعوة
host-pass-no-candidates = (لا يوجد لاعبون متاحون لنقل المضيف إليهم)
host-passed = { $player } هو المضيف الآن.
host-pass-failed = فشل نقل المضيف. قد يكون اللاعب قد غادر.
host-kick-no-candidates = (لا يوجد لاعبون متاحون لطردهم)
host-kick-invalid-target = هدف طرد غير صالح.
host-kick-broadcast = تم طرد { $player } من الطاولة.
host-kick-ban-broadcast = تم طرد { $player } وحظره من الطاولة.
host-kick-you = لقد تم طردك من الطاولة بواسطة { $host }.
host-kick-ban-you = لقد تم طردك وحظرك من الطاولة بواسطة { $host }.
table-you-are-banned = أنت محظور من هذه الطاولة.
table-private-invite-only = هذه الطاولة خاصة. يجب أن تتلقى دعوة من المضيف للانضمام.

voice-room-table-label = محادثة طاولة { $game } الصوتية
voice-unavailable = المحادثة الصوتية غير متاحة حاليًا.
voice-invalid-context = طلب غرفة الصوت هذا غير صالح.
voice-not-at-table = لم تنضم إلى طاولة بعد. انضم إلى طاولة قبل بدء المحادثة الصوتية.
voice-not-in-context = يجب أن تكون في تلك الطاولة قبل الانضمام إلى محادثتها الصوتية.
voice-rate-limited = تمهل. المحادثة الصوتية تتغير بسرعة كبيرة حاليًا.
voice-muted-seconds = أنت مكتوم الصوت ولا يمكنك الانضمام إلى المحادثة الصوتية. المتبقي: { $seconds } ثانية.
voice-muted-minutes = أنت مكتوم الصوت ولا يمكنك الانضمام إلى المحادثة الصوتية. المتبقي: { $minutes } دقيقة.
voice-muted-permanent = أنت مكتوم الصوت ولا يمكنك الانضمام إلى المحادثة الصوتية.
voice-status-connected = اتصل { $player } بالمحادثة الصوتية للطاولة.
voice-status-disconnected = انقطع اتصال { $player } بالمحادثة الصوتية.
voice-status-connection-lost = فقد { $player } الاتصال وتمت إزالته من المحادثة الصوتية.
voice-status-left-table = غادر { $player } الطاولة وغادر المحادثة الصوتية.

error-smtp-not-configured = استرداد كلمة المرور معطل حاليًا من قبل المسؤول.
error-email-not-found = لم يتم العثور على أي حساب بهذا البريد الإلكتروني.
success-reset-email-sent = تم إرسال رمز إعادة التعيين إلى عنوان بريدك الإلكتروني.
error-smtp-send-failed = فشل إرسال بريد إعادة التعيين الإلكتروني. يرجى المحاولة مرة أخرى لاحقًا.
error-invalid-reset-code = رمز إعادة تعيين غير صالح أو منتهي الصلاحية.
success-password-reset = تم إعادة تعيين كلمة المرور بنجاح. يمكنك الآن تسجيل الدخول.
