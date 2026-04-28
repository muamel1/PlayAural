auth-username-password-required = اسم المستخدم وكلمة المرور مطلوبان.
auth-registration-success = تم التسجيل بنجاح! يمكنك الآن تسجيل الدخول ببياناتك.
auth-username-taken = اسم المستخدم مأخوذ بالفعل. يرجى اختيار اسم مستخدم آخر.
auth-registration-error = فشل التسجيل بسبب خطأ في الخادم. يرجى المحاولة مرة أخرى.
auth-error-wrong-password = كلمة المرور غير صحيحة.
auth-error-user-not-found = المستخدم غير موجود.
auth-kicked-logged-in-elsewhere = تم فصلك لأن حسابك سجل الدخول من جهاز آخر.

chat-global = يقول { $player } عاماً: { $message }
dev-announcement-broadcast = { $dev } هو مطور في PlayAural.
admin-announcement-broadcast = { $admin } هو مسؤول في PlayAural.

admin-smtp-updated-success = تم تحديث إعدادات SMTP بنجاح
admin-smtp-settings = إعدادات SMTP
email-reset-subject = رمز إعادة تعيين كلمة مرور PlayAural
email-reset-body = مرحباً { $username }،\n\nلقد طلبت إعادة تعيين كلمة المرور لحسابك في PlayAural.\nرمز إعادة التعيين المكون من 6 أرقام هو: { $code }\n\nستنتهي صلاحية هذا الرمز خلال 15 دقيقة.\nإذا لم تطلب هذا، يرجى تجاهل هذا البريد الإلكتروني.
email-reset-body-html = <p>مرحباً { $username }،</p>
    <p>لقد استلمنا طلباً لإعادة تعيين كلمة المرور لحسابك في PlayAural.</p>
    <p>رمز الاسترداد المكون من 6 أرقام هو:</p>
    <h2>{ $code }</h2>
    <p>ستنتهي صلاحية هذا الرمز خلال 15 دقيقة بالضبط.</p>
    <p>إذا لم تطلب هذا، يرجى تجاهل هذا البريد الإلكتروني. سيبقى حسابك آمناً.</p>
    <p>مع أطيب التحيات،<br>ترونغ</p>
email-test-subject = اختبار SMTP لـ PlayAural
email-test-body = هذا بريد إلكتروني تجريبي من خادم PlayAural للتحقق من تكوين SMTP الخاص بك.
email-test-body-html = <p>مرحباً،</p>
    <p>هذا بريد إلكتروني تجريبي من خادم PlayAural.</p>
    <p>إذا كنت تقرأ هذا، فهذا يعني أن تكوين SMTP الخاص بك يرسل رسائل HTML بنجاح.</p>
smtp-test-sending = جاري اختبار الاتصال، يرجى الانتظار...
smtp-test-success = تم إرسال بريد الاختبار بنجاح إلى { $email }!
smtp-test-failed = فشل إرسال بريد الاختبار: { $error }
smtp-host = المضيف: { $value }
smtp-port = المنفذ: { $value }
smtp-username = اسم المستخدم: { $value }
smtp-password = كلمة المرور: { $value }
smtp-from-email = بريد المرسل: { $value }
smtp-from-name = اسم المرسل: { $value }
smtp-encryption = التشفير: { $value }
smtp-test-connection = اختبار الاتصال
smtp-not-set = غير محدد
smtp-prompt-host = أدخل مضيف SMTP (مثلاً: smtp.gmail.com):
smtp-prompt-port = أدخل منفذ SMTP (مثلاً: 587 أو 465):
smtp-prompt-username = أدخل اسم مستخدم SMTP:
smtp-prompt-password = أدخل كلمة مرور SMTP:
smtp-prompt-from-email = أدخل عنوان بريد المرسل:
smtp-prompt-from-name = أدخل اسم المرسل (مثلاً: دعم PlayAural):
smtp-prompt-test-email = أدخل عنوان البريد المستهدف للاختبار:
smtp-enc-none = بدون تشفير
smtp-enc-ssl = استخدام SSL
smtp-enc-tls = تمكين تشفير TLS تلقائياً (STARTTLS)
smtp-current-enc = * { $value }

main-menu-title = القائمة الرئيسية

play = لعب
view-active-tables = عرض الطاولات النشطة
options = خيارات
logout = تسجيل الخروج
back = العودة
go-back = العودة للخلف
context-menu = قائمة الإجراءات.
no-actions-available = لا توجد إجراءات متاحة.
table-new-host-promoted = { $player } هو مضيف الطاولة الآن.
return-to-lobby = العودة إلى الردهة
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

game-player-skipped = تم تخطي دور { $player }.

table-created = أنشأ { $host } طاولة { $game } جديدة.
table-created-broadcast = أنشأ { $host } طاولة { $game } جديدة.
table-joined = انضم { $player } إلى الطاولة.
table-left = غادر { $player } الطاولة.
new-host = { $player } هو المضيف الآن.
waiting-for-players = في انتظار اللاعبين. الحد الأدنى { $min }، الحد الأقصى { $max }.
game-starting = اللعبة تبدأ!
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
table-status-finished = انتهت
table-not-exists = الطاولة لم تعد موجودة.
table-full = الطاولة ممتلئة.
player-replaced-by-bot = غادر { $player } وتم استبداله ببوت.
player-reclaimed-from-bot = استعاد { $player } اتصاله واسترجع مقعده.
player-took-over = تولى { $player } اللعب بدلاً من البوت.
spectator-joined = انضم إلى طاولة { $host } كمشاهد.

spectate = مشاهدة
now-playing = { $player } يلعب الآن.
now-spectating = { $player } يشاهد الآن.
spectator-left = توقف { $player } عن المشاهدة.

welcome = مرحباً بك في PlayAural!
goodbye = وداعاً!

user-online = أصبح { $player } متصلاً.
user-offline = خرج { $player } من الاتصال.
friend-online = صديقك { $player } متصل الآن.
friend-offline = صديقك { $player } غير متصل الآن.
permission-denied = ليس لديك إذن للقيام بهذا الإجراء تجاه مطور.
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
online-user-waiting-approval = في انتظار الموافقة
user-role-dev = مطور
user-role-admin = مسؤول
user-role-user = مستخدم
client-type-web = ويب
client-type-python = سطح المكتب
client-type-mobile = موبايل
online-user-full-entry = { $username } ({ $role }، { $client }، { $language }): { $status }
online-user-actions-title = إجراءات لـ { $username }
user-not-online-anymore = هذا المستخدم لم يعد متصلاً.
close-menu = إغلاق

language = اللغة
language-option = اللغة: { $language }
language-changed = تم ضبط اللغة إلى { $language }.

option-on = تشغيل
option-off = إيقاف

turn-sound-option = صوت الدور: { $status }

custom-bot-names-option = أسماء بوتات مخصصة: { $status }
clear-kept-option = مسح النرد المحتفظ به عند الرمي: { $status }
option-notify-table-created-on = الإخطار عند إنشاء طاولة: تشغيل
option-notify-table-created-off = الإخطار عند إنشاء طاولة: إيقاف
option-notify-user-presence-on = إشعارات دخول/خروج المستخدمين: تشغيل
option-notify-user-presence-off = إشعارات دخول/خروج المستخدمين: إيقاف
option-notify-friend-presence-on = إشعارات دخول/خروج الأصدقاء: تشغيل
option-notify-friend-presence-off = إشعارات دخول/خروج الأصدقاء: إيقاف
dice-keeping-style-option = أسلوب الاحتفاظ بالنرد: { $style }
dice-keeping-style-changed = تم ضبط أسلوب الاحتفاظ بالنرد إلى { $style }.
dice-keeping-style-indexes = مؤشرات النرد
dice-keeping-style-values = قيم النرد

cancel = إلغاء
no-bot-names-available = لا توجد أسماء بوتات متاحة.
enter-bot-name = أدخل اسم البوت
bot-name-invalid-length = يجب أن تكون أسماء البوتات بين 3 و30 حرفاً.
bot-name-invalid-characters = يمكن أن تحتوي أسماء البوتات على أحرف وأرقام ومسافات فقط.
bot-name-already-used = اسم البوت هذا مستخدم بالفعل في هذه الطاولة.
no-options-available = لا توجد خيارات متاحة.
no-scores-available = لا توجد نتائج متاحة.


saved-tables = الطاولات المحفوظة
no-saved-tables = ليس لديك طاولات محفوظة.
no-active-tables = لا توجد طاولات نشطة.
no-active-tables-all = لا توجد طاولات نشطة متاحة.
no-active-tables-waiting = لا توجد طاولات انتظار متاحة.
no-active-tables-playing = لا توجد طاولات قيد اللعب متاحة.
active-tables-filter = التصفية: { $filter }
filter-name-all = الكل
filter-name-waiting = في الانتظار
filter-name-playing = قيد اللعب
restore-table = استعادة
delete-saved-table = حذف
saved-table-deleted = تم حذف الطاولة المحفوظة.
missing-players = تعذر الاستعادة: هؤلاء اللاعبون غير متاحين: { $players }
table-restored = تم استعادة الطاولة! تم نقل جميع اللاعبين.
table-saved-destroying = تم حفظ الطاولة! العودة إلى القائمة الرئيسية.
game-type-not-found = نوع اللعبة لم يعد موجوداً.

action-not-your-turn = ليس دورك.
action-not-playing = اللعبة لم تبدأ بعد.
action-spectator = لا يمكن للمشاهدين القيام بذلك.
action-not-host = المضيف فقط يمكنه القيام بذلك.
action-not-available = هذا الإجراء غير متاح حالياً.
action-game-in-progress = لا يمكن القيام بذلك أثناء سير اللعبة.
action-need-more-players = بحاجة إلى مزيد من اللاعبين للبدء.
action-table-full = الطاولة ممتلئة.
action-no-bots = لا توجد بوتات لإزالتها.
action-bots-cannot = لا يمكن للبوتات القيام بذلك.
action-no-scores = لا توجد نتائج متاحة بعد.

music-volume-option = مستوى صوت الموسيقى: { $value }%
ambience-volume-option = مستوى أصوات البيئة: { $value }%
audio-input-device-option = جهاز إدخال الصوت: { $device }
audio-input-device-default = جهاز الإدخال الافتراضي للنظام
mute-global-chat-option = كتم الدردشة العامة: { $status }
mute-table-chat-option = كتم دردشة الطاولة: { $status }
invert-multiline-enter-option = عكس سلوك مفتاح الإدخال: { $status }
play-typing-sounds-option = تشغيل أصوات الكتابة: { $status }
enter-music-volume = أدخل مستوى صوت الموسيقى (0-100)
enter-ambience-volume = أدخل مستوى أصوات البيئة (0-100)
invalid-volume = مستوى صوت غير صحيح. يرجى إدخال رقم بين 0 و100.

dice-not-rolled = لم تقم بالرمي بعد.
dice-locked = هذا النرد مقفل.
dice-no-dice = لا يوجد نرد متاح.

game-turn-start = دور { $player }.
game-no-turn = لا يوجد دور لأحد حالياً.
table-no-players = لا يوجد لاعبون.
table-players-one = { $count } لاعب: { $players }.
table-players-many = { $count } لاعبين: { $players }.
table-spectators = المشاهدون: { $spectators }.
table-host-suffix = (المضيف)
table-voice-chat-suffix = (في الدردشة الصوتية)
game-leave = مغادرة
game-over = انتهت اللعبة
game-final-scores = النتائج النهائية
game-points = { $count } { $count ->
    [one] نقطة
   *[other] نقاط
}
status-box-closed = مغلق.
play = لعب

leaderboards = لوحات الصدارة
leaderboard-no-data = لا توجد بيانات لوحة صدارة لهذه اللعبة بعد.

leaderboard-type-wins = متصدرو الانتصارات
leaderboard-type-rating = تصنيف المهارة
leaderboard-type-total-score = إجمالي النقاط
leaderboard-type-high-score = أعلى نتيجة
leaderboard-type-games-played = الألعاب الملعوبة
leaderboard-type-avg-points-per-turn = متوسط النقاط لكل دور
leaderboard-type-best-single-turn = أفضل دور واحد
leaderboard-type-score-per-round = النقاط لكل جولة
leaderboard-type-most-enemies-defeated = أكثر الأعداء هزيمة
leaderboard-type-deepest-wave-reached = أبعد موجة تم الوصول إليها


leaderboard-wins-entry = { $rank }: { $player }، { $wins } { $wins ->
    [one] فوز
   *[other] انتصارات
} و { $losses } { $losses ->
    [one] خسارة
   *[other] خسائر
}، نسبة الفوز { $percentage }%
leaderboard-score-entry = { $rank }. { $player }: { $value }
leaderboard-games-entry = { $rank }. { $player }: { $value } ألعاب
leaderboard-avg-entry = { $rank }. { $player }: { $value }

leaderboard-no-player-stats = لم تلعب هذه اللعبة بعد.

leaderboard-no-ratings = لا توجد بيانات تصنيف لهذه اللعبة بعد.
leaderboard-rating-entry = { $rank }. { $player }: تصنيف { $rating } ({ $mu } ± { $sigma })
leaderboard-no-player-rating = ليس لديك تصنيف لهذه اللعبة بعد.

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
my-stats-high-score = أعلى نتيجة: { $value }
my-stats-rating = تصنيف المهارة: { $value } ({ $mu } ± { $sigma })
my-stats-no-rating = لا يوجد تصنيف مهارة بعد
my-stats-avg-per-turn = متوسط النقاط لكل دور: { $value }
my-stats-best-turn = أفضل دور واحد: { $value }
my-stats-score-per-round = النقاط لكل جولة: { $value }
my-stats-most-enemies-defeated = أكثر الأعداء هزيمة: { $value }
my-stats-deepest-wave-reached = أبعد موجة تم الوصول إليها: { $value }

predict-outcomes = توقع النتائج
predict-header = النتائج المتوقعة (حسب تصنيف المهارة)
predict-note-multiplayer = تظهر نسب الفوز فقط للمباريات ذات اللاعبين الاثنين. مع 3 لاعبين بشريين أو أكثر، تظهر تصنيفات المهارة فقط.
predict-entry = { $rank }. { $player } (التصنيف: { $rating })
predict-entry-2p = { $rank }. { $player } (التصنيف: { $rating }، فرصة الفوز { $probability }%)
predict-unavailable = توقعات التصنيف غير متاحة.
predict-need-players = بحاجة إلى لاعبين بشريين اثنين على الأقل للتوقعات.
action-need-more-humans = بحاجة لمزيد من اللاعبين البشريين.
confirm-leave-game = هل أنت متأكد أنك تريد مغادرة الطاولة؟
confirm-yes = نعم
confirm-no = لا

administration = الإدارة

account-approval = موافقة الحسابات
no-pending-accounts = لا توجد حسابات معلقة.
approve-account = موافقة
decline-account = رفض
account-approved = تمت الموافقة على حساب { $player }.
account-declined = تم رفض وحذف حساب { $player }.

waiting-for-approval = حسابك في انتظار الموافقة من قبل المسؤول. يرجى الانتظار...
account-approved-welcome = تمت الموافقة على حسابك! مرحباً بك في PlayAural!
account-declined-goodbye = تم رفض طلب إنشاء حسابك.

account-request = طلب حساب
account-action = تم اتخاذ إجراء بشأن الحساب

promote-admin = ترقية لمسؤول
demote-admin = تخفيض من مسؤول
ban-user = حظر مستخدم
unban-user = إلغاء حظر مستخدم
no-users-to-promote = لا يوجد مستخدمون متاحون للترقية.
no-admins-to-demote = لا يوجد مسؤولون متاحون للتخفيض.
confirm-promote = هل أنت متأكد أنك تريد ترقية { $player } لمسؤول؟
confirm-demote = هل أنت متأكد أنك تريد تخفيض { $player } من منصب مسؤول؟
broadcast-to-all = إعلان لجميع المستخدمين
broadcast-to-admins = إعلان للمسؤولين فقط
broadcast-to-nobody = صامت (بدون إعلان)
promote-announcement = تم ترقية { $player } لمسؤول!
promote-announcement-you = تمت ترقيتك لمسؤول!
demote-announcement = تم تخفيض { $player } من منصب مسؤول.
demote-announcement-you = تم تخفيضك من منصب مسؤول.
not-admin-anymore = لم تعد مسؤولاً ولا يمكنك القيام بهذا الإجراء.
dev-only-action = هذا الإجراء مقصور على المطورين فقط.

ban-duration-1h = ساعة واحدة
ban-duration-6h = 6 ساعات
ban-duration-12h = 12 ساعة
ban-duration-1d = يوم واحد
ban-duration-3d = 3 أيام
ban-duration-1w = أسبوع واحد
ban-duration-1m = شهر واحد
ban-duration-permanent = دائم

reason-spam = سبام / إزعاج
reason-harassment = مضايقة
reason-cheating = غش
reason-inappropriate = سلوك غير لائق
reason-custom = آخر / مخصص

no-users-to-ban = لا يوجد مستخدمون متاحون للحظر.
no-banned-users = لا يوجد مستخدمون محظورون حالياً.

ban-broadcast = تم حظر { $target } بواسطة { $actor } بسبب { $reason }. المدة: { $duration }.
unban-broadcast = تم إلغاء حظر { $target } بواسطة { $actor }.

banned-menu-title = الحساب محظور
banned-reason = السبب: { $reason }
banned-expires = تنتهي في: { $expires }
banned-permanent = تنتهي في: دائم
disconnect = قطع الاتصال

enter-custom-ban-reason = أدخل سبب الحظر المخصص:

mute-user = كتم مستخدم
unmute-user = إلغاء كتم مستخدم
no-users-to-mute = لا يوجد مستخدمون متاحون للكتم.
no-muted-users = لا يوجد مستخدمون مكتومون حالياً.
mute-duration-5m = 5 دقائق
mute-duration-15m = 15 دقيقة
mute-duration-30m = 30 دقائق
mute-duration-1h = ساعة واحدة
mute-duration-6h = 6 ساعات
mute-duration-1d = يوم واحد
mute-duration-permanent = دائم
enter-custom-mute-reason = أدخل سبب الكتم المخصص:
mute-broadcast = تم كتم { $target } بواسطة { $actor } بسبب { $reason }. المدة: { $duration }.
unmute-broadcast = تم إلغاء كتم { $target } بواسطة { $actor }.
you-have-been-muted = لقد تم كتمك. السبب: { $reason }. المدة: { $duration }.
you-have-been-unmuted = تم إلغاء كتمك. يمكنك الدردشة مرة أخرى.
muted-remaining-seconds = أنت مكتوم. متبقي { $seconds } ثوانٍ.
muted-remaining-minutes = أنت مكتوم. متبقي { $minutes } دقائق.
muted-permanent = أنت مكتوم بشكل دائم. اتصل بالمسؤول لمزيد من المعلومات.
auto-muted-seconds = لقد تم كتمك مؤقتاً بسبب الإزعاج (سبام). متبقي { $seconds } ثوانٍ.
auto-muted-minutes = لقد تم كتمك مؤقتاً بسبب الإزعاج (سبام). متبقي { $minutes } دقائق.
auto-muted-applied-seconds = تم كتمك تلقائياً لمدة { $seconds } ثانية بسبب الإزعاج الزائد في الدردشة.
auto-muted-applied-minutes = تم كتمك تلقائياً لمدة { $minutes } دقيقة بسبب الإزعاج الزائد في الدردشة.
chat-rate-limited = تمهل! أنت ترسل الرسائل بسرعة كبيرة.
chat-global-disabled-send = الدردشة العامة معطلة في خياراتك. قم بتشغيلها مرة أخرى قبل إرسال رسائل عامة.
chat-table-disabled-send = دردشة الطاولة معطلة في خياراتك. قم بتشغيلها مرة أخرى قبل إرسال رسائل الطاولة.
admin-spam-alert = تحذير: { $username } يزعج الدردشة بشكل مفرط وتم كتمه تلقائياً.

broadcast-announcement = بث إعلان
admin-broadcast-prompt = أدخل الرسالة لبثها لجميع المستخدمين المتصلين. (سيتم إرسالها للجميع!)
admin-broadcast-sent = تم إرسال البث إلى { $count } مستخدمين.

manage-motd = إدارة رسالة اليوم (MOTD)
create-update-motd = إنشاء/تحديث رسالة اليوم
view-motd = عرض رسالة اليوم النشطة
delete-motd = حذف رسالة اليوم
motd-version-prompt = أدخل رقم إصدار رسالة اليوم الجديد (يجب أن يكون أكبر من 0):
invalid-motd-version = رقم إصدار غير صحيح. يجب أن يكون رقماً موجباً.
motd-prompt = أدخل رسالة اليوم لـ { $language } (استخدم Enter لسطر جديد، Shift+Enter للإرسال إذا كان السلوك معكوساً):
motd-created = تم إنشاء رسالة اليوم الإصدار { $version } بنجاح.
motd-cancelled = تم إلغاء إنشاء رسالة اليوم.
motd-deleted = تم حذف رسالة اليوم.
motd-delete-empty = لا توجد رسالة يوم نشطة لحذفها.
motd-not-exists = لا توجد رسالة يوم نشطة.
motd-announcement = رسالة اليوم
motd-broadcast = رسالة يوم جديدة: { $message }
error-no-languages = خطأ: لم يتم العثور على لغات.
ok = موافق

milebymile-rig-none = لا شيء
milebymile-rig-no-duplicates = بدون تكرار
milebymile-rig-2x-attacks = هجمات مضاعفة (2x)
milebymile-rig-2x-defenses = دفاعات مضاعفة (2x)

unknown-player = لاعب مجهول

logout-confirm-title = هل أنت متأكد أنك تريد تسجيل الخروج وإغلاق اللعبة؟
logout-confirm-yes = نعم، تسجيل الخروج
logout-confirm-no = لا، البقاء
goodbye = وداعاً!

system-name = النظام
server-restarting = الخادم سيعيد التشغيل خلال { $seconds } ثوانٍ...
server-restarting-now = الخادم يعيد التشغيل الآن. يرجى إعادة الاتصال قريباً.
server-shutting-down = الخادم سيغلق خلال { $seconds } ثوانٍ...
server-shutting-down-now = الخادم يغلق الآن. وداعاً!
server-error-changing-language = خطأ أثناء تغيير اللغة: { $error }
default-save-name = { $game } - { $date }

speech-settings = إعدادات النطق
speech-mode-option = وضع النطق: { $status }
speech-rate-option = سرعة النطق: { $value }%
speech-voice-option = الصوت: { $voice }
select-voice = اختر الصوت
enter-speech-rate = أدخل سرعة النطق (50-300)
invalid-rate = سرعة غير صحيحة. يرجى إدخال رقم بين 50 و300.
mode-aria = Aria-live
mode-web-speech = Web Speech API
default-voice = الصوت الافتراضي
mobile-speech-settings = إعدادات نطق الموبايل
mobile-tts-engine-option = محرك TTS: { $engine }
mobile-tts-engine-system = افتراضي النظام
mobile-tts-engine-system-selected = محرك TTS الافتراضي للنظام
mobile-tts-engine-api-note = يتم إدارة اختيار محرك الأندرويد من إعدادات النظام في هذا الإصدار.
mobile-tts-voice-option = صوت الموبايل: { $voice }
mobile-tts-rate-option = سرعة نطق الموبايل: { $value }%
mobile-tts-enter-rate = أدخل سرعة نطق الموبايل (50-200)
mobile-tts-invalid-rate = سرعة غير صحيحة. يرجى إدخال رقم بين 50 و200.

player-kicked-offline = تم طرد اللاعب { $player } (غير متصل).
game-paused-host-disconnect = اللعبة متوقفة مؤقتاً. في انتظار إعادة اتصال المضيف { $player }...
game-resumed = عاد المضيف { $player } للاتصال. استؤنفت اللعبة!
new-host = المضيف الجديد: { $player }

auth-error-username-length = يجب أن يكون اسم المستخدم بين 3 و30 حرفاً.
auth-error-username-invalid-chars = قد يحتوي اسم المستخدم على أحرف وأرقام ومسافات فقط (بدون مسافات متتالية، وبدون رموز خاصة).
auth-error-password-weak = يجب أن تتكون كلمة المرور من 8 أحرف على الأقل وتحتوي على حروف وأرقام.

personal-and-options = الخيارات الشخصية والعامة
profile = الملف الشخصي
friends = الأصدقاء
profile-registration-date = تاريخ التسجيل: { $date }
profile-username = اسم المستخدم: { $username }
profile-email = البريد الإلكتروني: { $email }
admin-view-email = عرض المسؤول - البريد: { $email }
profile-gender = الجنس: { $gender }
profile-bio = النبذة الشخصية: { $bio }
profile-bio-empty = غير محدد
profile-email-empty = غير محدد

gender-male = ذكر
gender-female = أنثى
gender-non-binary = غير ثنائي
gender-not-set = غير محدد

action-set-edit = ضبط / تعديل
action-delete = حذف
bio-already-empty = النبذة الشخصية فارغة بالفعل.
bio-deleted = تم حذف النبذة الشخصية.
bio-updated = تم تحديث النبذة الشخصية.

enter-email = أدخل عنوان البريد الإلكتروني الجديد:
email-updated = تم تحديث عنوان البريد الإلكتروني.
enter-bio = أدخل نبذتك الشخصية:

gender-updated = تم تحديث الجنس.
no-changes-made = لم يتم إجراء أي تغييرات.
confirm-email-change = هل أنت متأكد أنك تريد تغيير بريدك الإلكتروني إلى { $email }؟

mandatory-email-notice = يجب عليك ضبط بريد إلكتروني للمتابعة. بريدك الإلكتروني خاص ولا يعرفه سواك.
error-email-empty = البريد الإلكتروني إلزامي ولا يمكن أن يكون فارغاً.
error-email-invalid = تنسيق بريد إلكتروني غير صحيح. يرجى تقديم عنوان بريد إلكتروني صحيح.
reg-error-email = البريد الإلكتروني مطلوب للتسجيل.

error-email-taken = هذا البريد الإلكتروني مستخدم بالفعل من قبل حساب آخر.

error-bio-length = يجب ألا تتجاوز النبذة الشخصية 250 حرفاً.
error-captcha-failed = فشل التحقق. يرجى المحاولة مرة أخرى.
error-rate-limit-login = محاولات تسجيل دخول فاشلة كثيرة جداً. يرجى المحاولة مرة أخرى خلال 15 دقيقة.
error-rate-limit-register = لقد وصلت إلى الحد الأقصى لعدد تسجيلات الحسابات لهذا اليوم.

friends-my-friends = أصدقائي
friends-pending-requests = الطلبات المعلقة ({ $count })
friends-no-pending-requests = الطلبات المعلقة
friends-send-request = إرسال طلب صداقة
friends-list-empty = ليس لديك أصدقاء بعد.
friend-status-offline = غير متصل
friend-status-playing = يلعب { $game }
friend-status-spectating = يشاهد { $game }
friend-status-lobby = في الردهة
friend-list-entry = { $username } ({ $status })

friend-actions-title = إجراءات لـ { $username }
view-profile = عرض الملف الشخصي
join-table = انضمام للطاولة
remove-friend = إزالة صديق
already-in-table = أنت موجود بالفعل في هذه الطاولة.
friend-removed-success = تم إزالة { $username } من قائمة أصدقائك.
friend-removed-notify = قام { $username } بإزالتك من قائمة أصدقائه.

no-pending-requests = لا توجد طلبات معلقة.
friend-request-from = طلب صداقة من { $username }
accept = قبول
decline = رفض
friend-accepted-success = أصبحتم أصدقاء الآن مع { $username }.
friend-accepted-notify = قبل { $username } طلب صداقتك!
request-not-found = طلب الصداقة لم يعد موجوداً.
friend-declined-success = تم رفض طلب الصداقة.
friend-declined-notify = رفض { $username } طلب صداقتك.

public-profile-title = ملف { $username } الشخصي
enter-friend-username = أدخل اسم المستخدم للشخص الذي تريد مصادقته:
friend-error-self = لا يمكنك إرسال طلب صداقة لنفسك.
friend-error-already-friends = أنت صديق بالفعل لهذا المستخدم.
friend-error-duplicate = لديك بالفعل طلب صداقة معلق لهذا المستخدم.
friend-request-sent = تم إرسال طلب الصداقة إلى { $username }.
friend-request-received = لقد تلقيت طلب صداقة جديداً من { $username }.

friends-grouped-requests = لديك طلبات صداقة معلقة من: { $usernames }
friends-grouped-accepted = تم قبول طلبات صداقتك من قبل: { $usernames }
friends-grouped-declined = تم رفض طلبات صداقتك من قبل: { $usernames }
friends-grouped-removed = تم إزالتك من قائمة الأصدقاء بواسطة: { $usernames }
friends-and-others = { $names } و { $count } { $count ->
    [one] آخر
   *[other] آخرين
}

send-private-message = إرسال رسالة خاصة
enter-pm-message = أدخل رسالتك لـ { $username }:
pm-error-not-friends = يمكنك إرسال الرسائل الخاصة للأصدقاء فقط.
pm-error-offline = { $username } ليس متصلاً حالياً.
pm-sent-success = تم إرسال الرسالة إلى { $username }.
pm-sent-content = منك إلى { $username }: { $message }
pm-received = رسالة خاصة من { $username }: { $message }

host-management = إدارة المضيف
table-spectator-suffix = (مشاهد)
host-management-set-private = جعل الطاولة خاصة
host-management-set-public = جعل الطاولة عامة
host-management-invite = دعوة صديق
host-management-pass-host = نقل المضيف للاعب آخر
host-management-kick = طرد لاعب
host-management-kick-ban = طرد وحظر لاعب
host-management-restart-game = إعادة تشغيل اللعبة
host-management-table-now-private = هذه الطاولة الآن خاصة. يمكن فقط للاعبين المدعوين الانضمام.
host-management-table-now-public = هذه الطاولة الآن عامة.
host-restart-confirm = هل تريد إعادة تشغيل اللعبة الحالية والعودة بالطاولة إلى غرفة الانتظار؟ سيبقى اللاعبون والدردشة الصوتية متصلين، ولكن المباراة الحالية ستلغى.
host-restart-broadcast = قام { $player } بإعادة تشغيل اللعبة. الطاولة عادت إلى غرفة الانتظار.
host-restart-not-playing = لا توجد لعبة نشطة لإعادة تشغيلها.
host-invite-no-friends = (لا يوجد أصدقاء متاحون لدعوتهم)
host-invite-sent = تم إرسال الدعوة إلى { $player }.
host-invite-friend-unavailable = هذا الصديق غير متصل حالياً.
host-invite-already-pending = هناك دعوة معلقة بالفعل لهذا الصديق.
host-invite-friend-busy = هذا الصديق موجود بالفعل في لعبة.
host-invite-declined = رفض { $player } دعوتك للطاولة.
table-invite-received = دعاك { $host } إلى طاولة { $game } الخاصة به.
table-invite-queued = دعاك { $host } إلى طاولة { $game }. أكمل إدخالك الحالي للرد.
table-invite-expired = انتهت صلاحية دعوة الطاولة.
invite-accept = قبول الدعوة
invite-decline = رفض الدعوة
host-pass-no-candidates = (لا يوجد لاعبون متاحون لنقل المضيف إليهم)
host-passed = أصبح { $player } هو المضيف.
host-pass-failed = فشل نقل المضيف. قد يكون اللاعب قد غادر.
host-kick-no-candidates = (لا يوجد لاعبون متاحون لطردهم)
host-kick-invalid-target = هدف طرد غير صحيح.
host-kick-broadcast = تم طرد { $player } من الطاولة.
host-kick-ban-broadcast = تم طرد وحظر { $player } من الطاولة.
host-kick-you = لقد تم طردك من الطاولة بواسطة المضيف { $host }.
host-kick-ban-you = لقد تم طردك وحظرك من الطاولة بواسطة المضيف { $host }.
table-you-are-banned = أنت محظور من هذه الطاولة.
table-private-invite-only = هذه الطاولة خاصة. يجب أن تتلقى دعوة من المضيف للانضمام.

voice-room-table-label = صوت طاولة { $game }
voice-unavailable = الدردشة الصوتية غير متاحة حالياً.
voice-invalid-context = طلب غرفة الصوت هذا غير صحيح.
voice-not-at-table = لم تنضم إلى طاولة بعد. انضم إلى طاولة قبل بدء الدردشة الصوتية.
voice-not-in-context = يجب أن تكون في تلك الطاولة قبل الانضمام لدردشتها الصوتية.
voice-rate-limited = تمهل. الدردشة الصوتية تتغير بسرعة كبيرة الآن.
voice-muted-seconds = أنت مكتوم ولا يمكنك الانضمام للدردشة الصوتية. متبقي { $seconds } ثوانٍ.
voice-muted-minutes = أنت مكتوم ولا يمكنك الانضمام للدردشة الصوتية. متبقي { $minutes } دقائق.
voice-muted-permanent = أنت مكتوم ولا يمكنك الانضمام للدردشة الصوتية.
voice-status-connected = اتصل { $player } بالدردشة الصوتية للطاولة.
voice-status-disconnected = انقطع اتصال { $player } عن الدردشة الصوتية.
voice-status-connection-lost = فقد { $player } الاتصال وتمت إزالته من الدردشة الصوتية.
voice-status-left-table = غادر { $player } الطاولة وغادر الدردشة الصوتية.

error-smtp-not-configured = استرداد كلمة المرور معطل حالياً من قبل المسؤول.
error-email-not-found = لم يتم العثور على حساب بهذا البريد الإلكتروني.
success-reset-email-sent = تم إرسال رمز إعادة التعيين إلى بريدك الإلكتروني.
error-smtp-send-failed = فشل إرسال بريد إعادة التعيين. يرجى المحاولة لاحقاً.
error-invalid-reset-code = رمز إعادة تعيين غير صحيح أو منتهي الصلاحية.
success-password-reset = تم إعادة تعيين كلمة المرور بنجاح. يمكنك الآن تسجيل الدخول.
