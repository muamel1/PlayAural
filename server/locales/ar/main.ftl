auth-username-password-required = يجب إدخال اسم المستخدم وكلمة المرور.
auth-registration-success = تم تسجيل الحساب بنجاح! يمكنك الآن تسجيل الدخول.
auth-username-taken = اسم المستخدم هذا غير متاح. يرجى اختيار اسم آخر.
auth-registration-error = فشل التسجيل بسبب خطأ في الخادم. يرجى المحاولة مرة أخرى لاحقاً.
auth-error-wrong-password = كلمة المرور غير صحيحة.
auth-error-user-not-found = اسم المستخدم غير موجود.
auth-kicked-logged-in-elsewhere = تم قطع الاتصال لتسجيل الدخول من جهاز آخر.

chat-global = { $player } (عام): { $message }
dev-announcement-broadcast = { $dev } هو أحد مطوري PlayAural.
admin-announcement-broadcast = { $admin } هو مسؤول في PlayAural.

admin-smtp-updated-success = تم تحديث إعدادات SMTP بنجاح.
admin-smtp-settings = إعدادات SMTP
email-reset-subject = رمز إعادة تعيين كلمة مرور PlayAural
email-reset-body = مرحباً { $username }،\n\nلقد طلبت إعادة تعيين كلمة المرور لحسابك في PlayAural.\nرمز إعادة التعيين المكون من 6 أرقام هو: { $code }\n\nستنتهي صلاحية هذا الرمز خلال 15 دقيقة.\nإذا لم تطلب هذا، يرجى تجاهل هذا البريد الإلكتروني.
email-reset-body-html = <p>مرحباً { $username }،</p>
    <p>لقد استلمنا طلباً لإعادة تعيين كلمة المرور لحسابك في PlayAural.</p>
    <p>رمز الاسترداد المكون من 6 أرقام هو:</p>
    <h2 style="color: #2c3e50;">{ $code }</h2>
    <p>ستنتهي صلاحية هذا الرمز خلال 15 دقيقة بالضبط.</p>
    <p>إذا لم تطلب هذا، يرجى تجاهل هذا البريد الإلكتروني؛ سيبقى حسابك آمناً.</p>
    <p>مع أطيب التحيات،<br>فريق PlayAural</p>
email-test-subject = اختبار SMTP لـ PlayAural
email-test-body = هذا بريد إلكتروني تجريبي من خادم PlayAural للتحقق من إعدادات SMTP الخاصة بك.
email-test-body-html = <p>مرحباً،</p>
    <p>هذا بريد إلكتروني تجريبي من خادم PlayAural.</p>
    <p>إذا وصلك هذا البريد، فهذا يعني أن إعدادات SMTP تعمل بنجاح وتدعم تنسيق HTML.</p>
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
smtp-prompt-host = أدخل مضيف SMTP (مثال: smtp.gmail.com):
smtp-prompt-port = أدخل منفذ SMTP (مثال: 587 أو 465):
smtp-prompt-username = أدخل اسم مستخدم SMTP:
smtp-prompt-password = أدخل كلمة مرور SMTP:
smtp-prompt-from-email = أدخل عنوان بريد المرسل:
smtp-prompt-from-name = أدخل اسم المرسل (مثال: دعم PlayAural):
smtp-prompt-test-email = أدخل عنوان البريد المستهدف للاختبار:
smtp-enc-none = بدون تشفير
smtp-enc-ssl = استخدام SSL
smtp-enc-tls = تشفير TLS تلقائي (STARTTLS)
smtp-current-enc = * { $value }

main-menu-title = القائمة الرئيسية

play = ابدأ اللعب
view-active-tables = عرض الطاولات النشطة
options = الإعدادات
logout = تسجيل الخروج
back = عودة
go-back = رجوع للخلف
context-menu = القائمة السياقية
no-actions-available = لا توجد إجراءات متاحة حالياً.
table-new-host-promoted = { $player } هو الآن مضيف الطاولة.
return-to-lobby = العودة إلى الردهة
create-table = إنشاء طاولة
leave-table = مغادرة الطاولة
start-game = بدء اللعبة
add-bot = إضافة لاعب آلي (بوت)
remove-bot = إزالة لاعب آلي (بوت)
actions-menu = قائمة الإجراءات
save-table = حفظ الطاولة
whose-turn = دور اللاعب
whos-at-table = قائمة اللاعبين
check-scores = سجل النتائج
check-scores-detailed = تفاصيل النقاط

game-player-skipped = تم تجاوز دور { $player }.

table-created = أنشأ { $host } طاولة { $game } جديدة.
table-created-broadcast = أنشأ { $host } طاولة { $game } جديدة.
table-joined = انضم { $player } إلى الطاولة.
table-left = غادر { $player } الطاولة.
new-host = أصبح { $player } هو المضيف الآن.
waiting-for-players = في انتظار اللاعبين. (الحد الأدنى: { $min }، الحد الأقصى: { $max })
game-starting = تبدأ اللعبة الآن!
table-listing = طاولة { $host } ({ $count } لاعبين)
table-listing-one = طاولة { $host } (لاعب واحد)
table-listing-with = طاولة { $host } ({ $count } لاعبين) مع { $members }
table-listing-game = { $game }: طاولة { $host } ({ $count } لاعبين)
table-listing-game-one = { $game }: طاولة { $host } (لاعب واحد)
table-listing-game-with = { $game }: طاولة { $host } ({ $count } لاعبين) مع { $members }
table-listing-game-status = { $game } [{ $status }]: طاولة { $host } ({ $count } لاعبين)
table-listing-game-one-status = { $game } [{ $status }]: طاولة { $host } (لاعب واحد)
table-listing-game-with-status = { $game } [{ $status }]: طاولة { $host } ({ $count } لاعبين) مع { $members }
table-status-waiting = في الانتظار
table-status-playing = قيد اللعب
table-status-finished = منتهية
table-not-exists = هذه الطاولة لم تعد موجودة.
table-full = الطاولة ممتلئة.
player-replaced-by-bot = غادر { $player } وتم استبداله بـ "بوت".
player-reclaimed-from-bot = استعاد { $player } اتصاله واسترجع مكانه في اللعبة.
player-took-over = تولى { $player } اللعب بدلاً من "البوت".
spectator-joined = انضممت إلى طاولة { $host } كمشاهد.

spectate = مشاهدة
now-playing = { $player } يلعب حالياً.
now-spectating = { $player } يشاهد حالياً.
spectator-left = توقف { $player } عن المشاهدة.

welcome = مرحباً بك في PlayAural!
goodbye = وداعاً!

user-online = { $player } متصل الآن.
user-offline = { $player } غير متصل.
friend-online = صديقك { $player } متصل الآن.
friend-offline = صديقك { $player } غير متصل الآن.
permission-denied = لا تملك الصلاحيات الكافية للقيام بهذا الإجراء تجاه المطور.
kick-user = طرد المستخدم
kick-broadcast = تم طرد { $target } بواسطة { $actor }.
you-were-kicked = لقد تم طردك من قبل { $actor }.
user-not-online = المستخدم { $target } غير متصل حالياً.
kick-immune = لا يمكن طرد هذا المستخدم.
kick-confirm = هل أنت متأكد من رغبتك في طرد { $player }؟
no-users-to-kick = لا يوجد مستخدمون لطردهم.
usage-kick = الاستخدام: /kick <username>
online-users-none = لا يوجد مستخدمون متصلون حالياً.
online-users-one = مستخدم واحد: { $users }
online-users-many = { $count } مستخدمين: { $users }
online-user-not-in-game = ليس في لعبة
online-user-waiting-approval = في انتظار الموافقة
user-role-dev = مطور
user-role-admin = مسؤول
user-role-user = مستخدم
client-type-web = متصفح الويب
client-type-python = تطبيق الحاسوب
client-type-mobile = تطبيق الهاتف
online-user-full-entry = { $username } ({ $role }، { $client }، { $language }): { $status }
online-user-actions-title = إجراءات المستخدم: { $username }
user-not-online-anymore = هذا المستخدم لم يعد متصلاً.
close-menu = إغلاق

language = اللغة
language-option = اللغة الحالية: { $language }
language-changed = تم تغيير اللغة إلى: { $language }.

option-on = مفعل
option-off = معطل

turn-sound-option = صوت الدور: { $status }

custom-bot-names-option = أسماء البوتات المخصصة: { $status }
clear-kept-option = مسح النرد المحتفظ به عند الرمي: { $status }
option-notify-table-created-on = إشعارات إنشاء الطاولات: مفعلة
option-notify-table-created-off = إشعارات إنشاء الطاولات: معطلة
option-notify-user-presence-on = إشعارات حضور المستخدمين: مفعلة
option-notify-user-presence-off = إشعارات حضور المستخدمين: معطلة
option-notify-friend-presence-on = إشعارات حضور الأصدقاء: مفعلة
option-notify-friend-presence-off = إشعارات حضور الأصدقاء: معطلة
dice-keeping-style-option = أسلوب الاحتفاظ بالنرد: { $style }
dice-keeping-style-changed = تم تغيير أسلوب الاحتفاظ بالنرد إلى: { $style }.
dice-keeping-style-indexes = مؤشرات النرد
dice-keeping-style-values = قيم النرد

cancel = إلغاء
no-bot-names-available = لا توجد أسماء بوتات متاحة حالياً.
enter-bot-name = أدخل اسم البوت:
bot-name-invalid-length = يجب أن يتراوح اسم البوت بين 3 و30 حرفاً.
bot-name-invalid-characters = يجب أن يحتوي اسم البوت على أحرف وأرقام ومسافات فقط.
bot-name-already-used = اسم البوت هذا مستخدم بالفعل في هذه الطاولة.
no-options-available = لا توجد خيارات متاحة.
no-scores-available = لا توجد نتائج لعرضها.


saved-tables = الطاولات المحفوظة
no-saved-tables = ليس لديك طاولات محفوظة حالياً.
no-active-tables = لا توجد طاولات نشطة.
no-active-tables-all = لا توجد طاولات نشطة متاحة حالياً.
no-active-tables-waiting = لا توجد طاولات في حالة انتظار حالياً.
no-active-tables-playing = لا توجد طاولات قيد اللعب حالياً.
active-tables-filter = التصفية حسب: { $filter }
filter-name-all = الكل
filter-name-waiting = في الانتظار
filter-name-playing = قيد اللعب
restore-table = استعادة
delete-saved-table = حذف
saved-table-deleted = تم حذف الطاولة المحفوظة بنجاح.
missing-players = تعذر استعادة الطاولة لعدم توفر اللاعبين: { $players }
table-restored = تم استعادة الطاولة بنجاح! تم نقل جميع اللاعبين.
table-saved-destroying = تم حفظ الطاولة! العودة إلى القائمة الرئيسية.
game-type-not-found = نوع اللعبة هذا لم يعد متاحاً.

action-not-your-turn = انتظر دورك.
action-not-playing = لم تبدأ اللعبة بعد.
action-spectator = لا يحق للمشاهدين القيام بهذا الإجراء.
action-not-host = هذا الإجراء متاح للمضيف فقط.
action-not-available = هذا الإجراء غير متاح في الوقت الحالي.
action-game-in-progress = لا يمكن تنفيذ هذا الإجراء أثناء سير اللعبة.
action-need-more-players = تحتاج لمزيد من اللاعبين لبدء اللعبة.
action-table-full = الطاولة ممتلئة تماماً.
action-no-bots = لا توجد بوتات لإزالتها.
action-bots-cannot = لا تملك البوتات صلاحية القيام بهذا الإجراء.
action-no-scores = لا توجد نتائج مسجلة بعد.

music-volume-option = مستوى صوت الموسيقى: { $value }%
ambience-volume-option = مستوى أصوات البيئة: { $value }%
audio-input-device-option = جهاز إدخال الصوت: { $device }
audio-input-device-default = جهاز الإدخال الافتراضي
mute-global-chat-option = كتم الدردشة العامة: { $status }
mute-table-chat-option = كتم دردشة الطاولة: { $status }
invert-multiline-enter-option = عكس سلوك مفتاح الإدخال: { $status }
play-typing-sounds-option = أصوات الكتابة: { $status }
enter-music-volume = أدخل مستوى صوت الموسيقى (0-100):
enter-ambience-volume = أدخل مستوى أصوات البيئة (0-100):
invalid-volume = قيمة غير صحيحة؛ يرجى إدخال رقم بين 0 و100.

dice-not-rolled = لم تقم برمي النرد بعد.
dice-locked = حجر النرد هذا مقفل.
dice-no-dice = لا يوجد نرد متاح حالياً.

game-turn-start = دور اللاعب { $player }.
game-no-turn = لا يوجد دور نشط حالياً.
table-no-players = لا يوجد لاعبون على هذه الطاولة.
table-players-one = يوجد { $count } لاعب: { $players }.
table-players-many = يوجد { $count } لاعبين: { $players }.
table-spectators = قائمة المشاهدين: { $spectators }.
table-host-suffix = (المضيف)
table-voice-chat-suffix = (في الدردشة الصوتية)
game-leave = مغادرة اللعبة
game-over = انتهت المباراة
game-final-scores = النتائج النهائية
game-points = { $count } { $count ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
   *[other] نقطة
    }
status-box-closed = الحالة: مغلقة.

leaderboards = لوحات الصدارة
leaderboard-no-data = لا توجد بيانات مسجلة في لوحة الصدارة لهذه اللعبة بعد.

leaderboard-type-wins = الأكثر فوزاً
leaderboard-type-rating = تصنيف المهارة
leaderboard-type-total-score = إجمالي النقاط
leaderboard-type-high-score = أعلى نتيجة مسجلة
leaderboard-type-games-played = الألعاب الملعوبة
leaderboard-type-avg-points-per-turn = متوسط النقاط لكل دور
leaderboard-type-best-single-turn = أفضل نتيجة في دور واحد
leaderboard-type-score-per-round = متوسط النقاط لكل جولة
leaderboard-type-most-enemies-defeated = أكثر الأعداء هزيمة
leaderboard-type-deepest-wave-reached = أبعد موجة تم الوصول إليها


leaderboard-wins-entry = { $rank }: { $player }، { $wins } { $wins ->
    [one] فوز واحد
    [two] فوزين
    [few] انتصارات
   *[other] فوزاً
    } مقابل { $losses } { $losses ->
    [one] خسارة واحدة
    [two] خسارتين
    [few] خسائر
   *[other] خسارة
    }، نسبة الفوز { $percentage }%
leaderboard-score-entry = { $rank }. { $player }: { $value }
leaderboard-games-entry = { $rank }. { $player }: { $value } { $value ->
    [one] لعبة واحدة
    [two] لعبتين
    [few] ألعاب
    *[other] لعبة
    }
leaderboard-avg-entry = { $rank }. { $player }: { $value }

leaderboard-no-player-stats = لم تقم بلعب هذه اللعبة بعد.

leaderboard-no-ratings = لا توجد بيانات تصنيف متاحة لهذه اللعبة.
leaderboard-rating-entry = { $rank }. { $player }: التصنيف { $rating } ({ $mu } ± { $sigma })
leaderboard-no-player-rating = ليس لديك تصنيف مهارة في هذه اللعبة بعد.

my-stats = إحصائياتي
my-stats-select-game = اختر لعبة لعرض إحصائياتك الشخصية
my-stats-no-data = لا توجد بيانات مسجلة لك في هذه اللعبة.
my-stats-no-games = لم تشارك في أي ألعاب بعد.
my-stats-header = { $game } - إحصائياتك الشخصية
my-stats-wins = عدد الانتصارات: { $value }
my-stats-losses = عدد الخسائر: { $value }
my-stats-winrate = نسبة الفوز: { $value }%
my-stats-games-played = إجمالي الألعاب الملعوبة: { $value }
my-stats-total-score = إجمالي النقاط المحرزة: { $value }
my-stats-high-score = أعلى نتيجة مسجلة: { $value }
my-stats-rating = تصنيف المهارة: { $value } ({ $mu } ± { $sigma })
my-stats-no-rating = لم يتم احتساب تصنيف المهارة بعد
my-stats-avg-per-turn = متوسط النقاط لكل دور: { $value }
my-stats-best-turn = أفضل نتيجة في دور واحد: { $value }
my-stats-score-per-round = متوسط النقاط لكل جولة: { $value }
my-stats-most-enemies-defeated = أكثر الأعداء هزيمة: { $value }
my-stats-deepest-wave-reached = أبعد موجة تم الوصول إليها: { $value }

predict-outcomes = توقعات النتائج
predict-header = النتائج المتوقعة (بناءً على تصنيف المهارة)
predict-note-multiplayer = يتم عرض احتمالات الفوز للمباريات ثنائية اللاعبين فقط. في المباريات الجماعية، يتم عرض تصنيفات المهارة فقط.
predict-entry = { $rank }. { $player } (التصنيف: { $rating })
predict-entry-2p = { $rank }. { $player } (التصنيف: { $rating }، فرصة الفوز { $probability }%)
predict-unavailable = توقعات التصنيف غير متاحة حالياً.
predict-need-players = تتطلب التوقعات وجود لاعبين بشريين اثنين على الأقل.
action-need-more-humans = هذه اللعبة تتطلب المزيد من اللاعبين البشريين.
confirm-leave-game = هل أنت متأكد من رغبتك في مغادرة الطاولة؟
confirm-yes = نعم
confirm-no = لا

administration = الإدارة

account-approval = الموافقة على الحسابات
no-pending-accounts = لا توجد طلبات معلقة حالياً.
approve-account = موافقة
decline-account = رفض
account-approved = تمت الموافقة على حساب اللاعب { $player }.
account-declined = تم رفض طلب اللاعب { $player } وحذف حسابه.

waiting-for-approval = حسابك قيد المراجعة من قبل المسؤول. يرجى الانتظار...
account-approved-welcome = تمت الموافقة على حسابك! مرحباً بك في PlayAural!
account-declined-goodbye = عذراً، لقد تم رفض طلب تسجيلك.

account-request = طلب حساب جديد
account-action = تم اتخاذ إجراء بشأن الحساب

promote-admin = ترقية لمسؤول
demote-admin = تخفيض الرتبة من مسؤول
ban-user = حظر مستخدم
unban-user = إلغاء الحظر
no-users-to-promote = لا يوجد مستخدمون مؤهلون للترقية حالياً.
no-admins-to-demote = لا يوجد مسؤولون مؤهلون لتخفيض الرتبة.
confirm-promote = هل أنت متأكد من ترقية { $player } إلى رتبة مسؤول؟
confirm-demote = هل أنت متأكد من تخفيض { $player } من رتبة مسؤول؟
broadcast-to-all = إعلان للجميع
broadcast-to-admins = إعلان للمسؤولين فقط
broadcast-to-nobody = بدون إعلان (صامت)
promote-announcement = تم ترقية { $player } إلى رتبة مسؤول!
promote-announcement-you = تمت ترقيتك إلى رتبة مسؤول بنجاح!
demote-announcement = تم سحب رتبة المسؤول من { $player }.
demote-announcement-you = تم سحب رتبة المسؤول منك.
not-admin-anymore = لم تعد تملك صلاحيات المسؤول للقيام بهذا الإجراء.
dev-only-action = هذا الإجراء مخصص للمطورين فقط.

ban-duration-1h = ساعة واحدة
ban-duration-6h = 6 ساعات
ban-duration-12h = 12 ساعة
ban-duration-1d = يوم واحد
ban-duration-3d = 3 أيام
ban-duration-1w = أسبوع واحد
ban-duration-1m = شهر واحد
ban-duration-permanent = دائم (نهائي)

reason-spam = رسائل مزعجة (سبام)
reason-harassment = مضايقات وسلوك عدواني
reason-cheating = الغش والتلاعب
reason-inappropriate = سلوك غير لائق
reason-custom = سبب آخر مخصص

no-users-to-ban = لا يوجد مستخدمون متاحون للحظر حالياً.
no-banned-users = لا يوجد مستخدمون محظورون حالياً.

ban-broadcast = قام { $actor } بحظر { $target } بسبب { $reason }. المدة: { $duration }.
unban-broadcast = قام { $actor } بإلغاء حظر { $target }.

banned-menu-title = الحساب محظور
banned-reason = السبب: { $reason }
banned-expires = تاريخ انتهاء الحظر: { $expires }
banned-permanent = تاريخ انتهاء الحظر: نهائي
disconnect = قطع الاتصال

enter-custom-ban-reason = أدخل السبب المخصص للحظر:

mute-user = كتم المستخدم
unmute-user = إلغاء كتم المستخدم
no-users-to-mute = لا يوجد مستخدمون لكتمهم حالياً.
no-muted-users = لا يوجد مستخدمون مكتومون حالياً.
mute-duration-5m = 5 دقائق
mute-duration-15m = 15 دقيقة
mute-duration-30m = 30 دقيقة
mute-duration-1h = ساعة واحدة
mute-duration-6h = 6 ساعات
mute-duration-1d = يوم واحد
mute-duration-permanent = دائم
enter-custom-mute-reason = أدخل السبب المخصص للكتم:
mute-broadcast = قام { $actor } بكتم { $target } بسبب { $reason }. المدة: { $duration }.
unmute-broadcast = قام { $actor } بإلغاء كتم { $target }.
you-have-been-muted = لقد تم كتمك. السبب: { $reason }. المدة: { $duration }.
you-have-been-unmuted = تم إلغاء كتمك؛ يمكنك استخدام الدردشة الآن.
muted-remaining-seconds = أنت مكتوم حالياً؛ يتبقى { $seconds } ثانية.
muted-remaining-minutes = أنت مكتوم حالياً؛ يتبقى { $minutes } دقيقة.
muted-permanent = لقد تم كتمك بشكل دائم؛ يرجى التواصل مع الإدارة.
auto-muted-seconds = تم كتمك تلقائياً بسبب الإزعاج؛ يتبقى { $seconds } ثانية.
auto-muted-minutes = تم كتمك تلقائياً بسبب الإزعاج؛ يتبقى { $minutes } دقيقة.
auto-muted-applied-seconds = تم كتمك تلقائياً لمدة { $seconds } ثانية لفرط استخدام الدردشة.
auto-muted-applied-minutes = تم كتمك تلقائياً لمدة { $minutes } دقيقة لفرط استخدام الدردشة.
chat-rate-limited = تمهل قليلاً! أنت ترسل الرسائل بسرعة كبيرة جداً.
chat-global-disabled-send = الدردشة العامة معطلة في إعداداتك. قم بتفعيلها أولاً قبل الإرسال.
chat-table-disabled-send = دردشة الطاولة معطلة في إعداداتك. قم بتفعيلها أولاً قبل الإرسال.
admin-spam-alert = تحذير الإدارة: تم كتم { $username } تلقائياً بسبب إزعاج الدردشة.

broadcast-announcement = بث إعلان عام
admin-broadcast-prompt = أدخل الرسالة المراد بثها لجميع المستخدمين المتصلين:
admin-broadcast-sent = تم بث الرسالة إلى { $count } مستخدمين بنجاح.

manage-motd = إدارة رسالة اليوم (MOTD)
create-update-motd = إنشاء أو تحديث رسالة اليوم
view-motd = عرض رسالة اليوم الحالية
delete-motd = حذف رسالة اليوم
motd-version-prompt = أدخل رقم إصدار الرسالة الجديد (يجب أن يكون أكبر من 0):
invalid-motd-version = رقم إصدار غير صحيح؛ يجب أن يكون رقماً موجباً.
motd-prompt = أدخل رسالة اليوم للغة { $language } (استخدم Enter لسطر جديد):
motd-created = تم إنشاء رسالة اليوم (الإصدار { $version }) بنجاح.
motd-cancelled = تم إلغاء عملية إنشاء الرسالة.
motd-deleted = تم حذف رسالة اليوم بنجاح.
motd-delete-empty = لا توجد رسالة يوم نشطة لحذفها.
motd-not-exists = لا توجد رسالة يوم نشطة حالياً.
motd-announcement = رسالة اليوم
motd-broadcast = رسالة يوم جديدة: { $message }
error-no-languages = خطأ: لم يتم العثور على لغات مدعومة.
ok = موافق

milebymile-rig-none = لا شيء
milebymile-rig-no-duplicates = بدون تكرار
milebymile-rig-2x-attacks = هجمات مضاعفة (2x)
milebymile-rig-2x-defenses = دفاعات مضاعفة (2x)

unknown-player = لاعب مجهول

logout-confirm-title = هل أنت متأكد من رغبتك في تسجيل الخروج وإغلاق اللعبة؟
logout-confirm-yes = نعم، تسجيل الخروج
logout-confirm-no = لا، البقاء في اللعبة

system-name = النظام
server-restarting = الخادم سيعيد التشغيل خلال { $seconds } ثانية...
server-restarting-now = الخادم يعيد التشغيل الآن؛ يرجى المحاولة مرة أخرى قريباً.
server-shutting-down = الخادم سيغلق خلال { $seconds } ثانية...
server-shutting-down-now = الخادم يغلق الآن؛ وداعاً!
server-error-changing-language = خطأ أثناء تغيير اللغة: { $error }
default-save-name = { $game } - { $date }

speech-settings = إعدادات النطق
speech-mode-option = وضع النطق الحالي: { $status }
speech-rate-option = سرعة النطق: { $value }%
speech-voice-option = الصوت المختار: { $voice }
select-voice = اختر الصوت
enter-speech-rate = أدخل سرعة النطق (50-300):
invalid-rate = قيمة غير صحيحة؛ يرجى إدخال رقم بين 50 و300.
mode-aria = نظام Aria-live
mode-web-speech = Web Speech API
default-voice = الصوت الافتراضي
mobile-speech-settings = إعدادات نطق الموبايل
mobile-tts-engine-option = محرك TTS: { $engine }
mobile-tts-engine-system = افتراضي النظام
mobile-tts-engine-system-selected = تم اختيار محرك النطق الافتراضي للنظام.
mobile-tts-engine-api-note = يتم ضبط إعدادات محرك أندرويد من خلال إعدادات النظام في هذا الإصدار.
mobile-tts-voice-option = صوت الهاتف: { $voice }
mobile-tts-rate-option = سرعة النطق على الهاتف: { $value }%
mobile-tts-enter-rate = أدخل سرعة النطق للهاتف (50-200):
mobile-tts-invalid-rate = قيمة غير صحيحة؛ يرجى إدخال رقم بين 50 و200.

player-kicked-offline = تم طرد اللاعب { $player } (لعدم اتصاله).
game-paused-host-disconnect = اللعبة متوقفة مؤقتاً؛ في انتظار إعادة اتصال المضيف { $player }...
game-resumed = عاد المضيف { $player } للاتصال؛ تم استئناف اللعبة!
new-host = المضيف الجديد: { $player }

auth-error-username-length = يجب أن يتراوح اسم المستخدم بين 3 و30 حرفاً.
auth-error-username-invalid-chars = يجب أن يحتوي اسم المستخدم على أحرف وأرقام ومسافات فقط.
auth-error-password-weak = يجب أن تتكون كلمة المرور من 8 أحرف على الأقل، وتحتوي على مزيج من الحروف والأرقام.

personal-and-options = الإعدادات الشخصية والعامة
profile = الملف الشخصي
friends = قائمة الأصدقاء
profile-registration-date = تاريخ التسجيل: { $date }
profile-username = اسم المستخدم: { $username }
profile-email = البريد الإلكتروني: { $email }
admin-view-email = (عرض الإدارة) البريد: { $email }
profile-gender = الجنس: { $gender }
profile-bio = النبذة التعريفية: { $bio }
profile-bio-empty = لم يتم تحديد نبذة بعد.
profile-email-empty = لم يتم تحديد بريد إلكتروني.

gender-male = ذكر
gender-female = أنثى
gender-non-binary = غير ثنائي
gender-not-set = غير محدد

action-set-edit = ضبط أو تعديل
action-delete = حذف
bio-already-empty = النبذة التعريفية فارغة بالفعل.
bio-deleted = تم حذف النبذة التعريفية بنجاح.
bio-updated = تم تحديث النبذة التعريفية بنجاح.

enter-email = أدخل عنوان البريد الإلكتروني الجديد:
email-updated = تم تحديث عنوان البريد الإلكتروني بنجاح.
enter-bio = أدخل نبذتك التعريفية الجديدة:

gender-updated = تم تحديث الجنس بنجاح.
no-changes-made = لم يتم إجراء أي تغييرات.
confirm-email-change = هل أنت متأكد من تغيير بريدك الإلكتروني إلى { $email }؟

mandatory-email-notice = يجب تحديد عنوان بريد إلكتروني للمتابعة؛ بريدك سيبقى خاصاً ولن يظهر للآخرين.
error-email-empty = البريد الإلكتروني مطلوب ولا يمكن تركه فارغاً.
error-email-invalid = تنسيق البريد الإلكتروني غير صحيح؛ يرجى التأكد من كتابته بشكل سليم.
reg-error-email = البريد الإلكتروني مطلوب لإتمام عملية التسجيل.

error-email-taken = عنوان البريد الإلكتروني هذا مرتبط بحساب آخر بالفعل.

error-bio-length = يجب ألا تتجاوز النبذة التعريفية 250 حرفاً.
error-captcha-failed = فشلت عملية التحقق (CAPTCHA)؛ يرجى المحاولة مرة أخرى.
error-rate-limit-login = محاولات دخول فاشلة كثيرة جداً؛ يرجى الانتظار لمدة 15 دقيقة قبل المحاولة مجدداً.
error-rate-limit-register = لقد تجاوزت الحد الأقصى لإنشاء الحسابات لهذا اليوم.

friends-my-friends = قائمة الأصدقاء
friends-pending-requests = الطلبات المعلقة ({ $count })
friends-no-pending-requests = لا توجد طلبات معلقة حالياً
friends-send-request = إرسال طلب صداقة
friends-list-empty = قائمة أصدقائك فارغة حالياً.
friend-status-offline = غير متصل
friend-status-playing = يلعب الآن: { $game }
friend-status-spectating = يشاهد الآن: { $game }
friend-status-lobby = متواجد في الردهة
friend-list-entry = { $username } ({ $status })

friend-actions-title = إجراءات الصداقة: { $username }
view-profile = عرض الملف الشخصي
join-table = انضمام للطاولة
remove-friend = إزالة من قائمة الأصدقاء
already-in-table = أنت موجود بالفعل في هذه الطاولة.
friend-removed-success = تم إزالة { $username } من قائمة أصدقائك.
friend-removed-notify = لقد قام { $username } بإزالتك من قائمة أصدقائه.

no-pending-requests = لا توجد طلبات صداقة معلقة.
friend-request-from = طلب صداقة جديد من: { $username }
accept = قبول
decline = رفض
friend-accepted-success = أصبحت الآن صديقاً لـ { $username }.
friend-accepted-notify = لقد قبل { $username } طلب صداقتك!
request-not-found = طلب الصداقة هذا لم يعد متاحاً.
friend-declined-success = تم رفض طلب الصداقة بنجاح.
friend-declined-notify = عذراً، لقد رفض { $username } طلب صداقتك.

public-profile-title = الملف الشخصي لـ { $username }
enter-friend-username = أدخل اسم المستخدم للشخص الذي ترغب في إضافته:
friend-error-self = لا يمكنك إرسال طلب صداقة لنفسك.
friend-error-already-friends = هذا المستخدم موجود بالفعل في قائمة أصدقائك.
friend-error-duplicate = لقد أرسلت بالفعل طلب صداقة لهذا المستخدم وهو قيد الانتظار.
friend-request-sent = تم إرسال طلب الصداقة إلى { $username } بنجاح.
friend-request-received = لقد تلقيت طلب صداقة جديداً من اللاعب { $username }.

friends-grouped-requests = لديك طلبات صداقة معلقة من: { $usernames }
friends-grouped-accepted = تم قبول طلبات صداقتك من قبل: { $usernames }
friends-grouped-declined = تم رفض طلبات صداقتك من قبل: { $usernames }
friends-grouped-removed = تم إزالتك من قائمة الأصدقاء بواسطة: { $usernames }
friends-and-others = { $names } و { $count } { $count ->
    [one] آخر
    [two] آخرين
    [few] آخرين
   *[other] آخرين
    }

send-private-message = إرسال رسالة خاصة
enter-pm-message = أدخل رسالتك إلى { $username }:
pm-error-not-friends = يمكنك إرسال الرسائل الخاصة للأصدقاء فقط.
pm-error-offline = اللاعب { $username } غير متصل حالياً.
pm-sent-success = تم إرسال الرسالة إلى { $username } بنجاح.
pm-sent-content = (رسالتك إلى { $username }): { $message }
pm-received = (رسالة خاصة من { $username }): { $message }

host-management = إدارة المضيف
table-spectator-suffix = (مشاهد)
host-management-set-private = جعل الطاولة خاصة (دعوات فقط)
host-management-set-public = جعل الطاولة عامة للجميع
host-management-invite = دعوة صديق
host-management-pass-host = نقل صلاحيات المضيف
host-management-kick = طرد لاعب
host-management-kick-ban = طرد وحظر لاعب نهائياً
host-management-restart-game = إعادة تشغيل المباراة
host-management-table-now-private = أصبحت الطاولة الآن خاصة؛ الانضمام عبر الدعوات فقط.
host-management-table-now-public = أصبحت الطاولة الآن عامة للجميع.
host-restart-confirm = هل ترغب في إنهاء المباراة الحالية والعودة لغرفة الانتظار؟ سيتم الاحتفاظ باللاعبين والدردشة الصوتية.
host-restart-broadcast = قام المضيف { $player } بإعادة تشغيل المباراة؛ عادت الطاولة لغرفة الانتظار.
host-restart-not-playing = لا توجد مباراة نشطة حالياً لإعادة تشغيلها.
host-invite-no-friends = (لا يوجد أصدقاء متاحون لدعوتهم حالياً)
host-invite-sent = تم إرسال دعوة الانضمام إلى { $player } بنجاح.
host-invite-friend-unavailable = هذا الصديق غير متصل حالياً.
host-invite-already-pending = هناك دعوة مرسلة بالفعل لهذا الصديق.
host-invite-friend-busy = هذا الصديق منشغل حالياً في لعبة أخرى.
host-invite-declined = اعتذر { $player } عن قبول دعوتك للطاولة.
table-invite-received = لقد دعاك { $host } للانضمام إلى طاولة { $game } الخاصة به.
table-invite-queued = تلقيت دعوة من { $host }؛ يرجى إتمام إجراءاتك الحالية للرد.
table-invite-expired = انتهت صلاحية دعوة الانضمام للطاولة.
invite-accept = قبول الدعوة
invite-decline = رفض الدعوة
host-pass-no-candidates = (لا يوجد لاعبون متاحون لنقل صلاحيات المضيف إليهم)
host-passed = تم نقل صلاحيات المضيف إلى { $player }.
host-pass-failed = فشل نقل صلاحيات المضيف؛ ربما غادر اللاعب الطاولة.
host-kick-no-candidates = (لا يوجد لاعبون متاحون لطردهم)
host-kick-invalid-target = لم يتم تحديد هدف صحيح لعملية الطرد.
host-kick-broadcast = تم طرد اللاعب { $player } من الطاولة.
host-kick-ban-broadcast = تم طرد وحظر اللاعب { $player } من الطاولة نهائياً.
host-kick-you = لقد قام المضيف { $host } بطردك من الطاولة.
host-kick-ban-you = لقد قام المضيف { $host } بطردك وحظرك من الطاولة نهائياً.
table-you-are-banned = عذراً، أنت محظور من دخول هذه الطاولة.
table-private-invite-only = هذه الطاولة خاصة؛ يجب تلقي دعوة رسمية من المضيف لتتمكن من الانضمام.

voice-room-table-label = الدردشة الصوتية لطاولة { $game }
voice-unavailable = خدمة الدردشة الصوتية غير متوفرة حالياً.
voice-invalid-context = طلب الانضمام لغرفة الصوت غير صحيح.
voice-not-at-table = يجب الانضمام إلى طاولة أولاً قبل استخدام الدردشة الصوتية.
voice-not-in-context = يجب أن تتواجد داخل الطاولة لتتمكن من الانضمام لدردشتها الصوتية.
voice-rate-limited = تمهل؛ عمليات التبديل في الدردشة الصوتية تجري بسرعة كبيرة.
voice-muted-seconds = لا يمكنك الانضمام للدردشة الصوتية حالياً لكونك مكتوماً؛ يتبقى { $seconds } ثانية.
voice-muted-minutes = لا يمكنك الانضمام للدردشة الصوتية حالياً لكونك مكتوماً؛ يتبقى { $minutes } دقيقة.
voice-muted-permanent = أنت مكتوم بشكل دائم ولا يحق لك استخدام الدردشة الصوتية.
voice-status-connected = انضم { $player } إلى الدردشة الصوتية للطاولة.
voice-status-disconnected = غادر { $player } الدردشة الصوتية.
voice-status-connection-lost = فقد { $player } الاتصال وتم استبعاده من الدردشة الصوتية.
voice-status-left-table = غادر { $player } الطاولة وبالتالي تم فصله من الدردشة الصوتية.

error-smtp-not-configured = خدمة استعادة كلمة المرور معطلة مؤقتاً؛ يرجى التواصل مع الإدارة.
error-email-not-found = لم يتم العثور على أي حساب مرتبط بهذا البريد الإلكتروني.
success-reset-email-sent = تم إرسال رمز إعادة تعيين كلمة المرور إلى بريدك الإلكتروني بنجاح.
error-smtp-send-failed = فشل إرسال البريد الإلكتروني؛ يرجى المحاولة مرة أخرى لاحقاً.
error-invalid-reset-code = رمز إعادة التعيين غير صحيح أو انتهت صلاحيته.
success-password-reset = تم إعادة تعيين كلمة المرور بنجاح؛ يمكنك الآن تسجيل الدخول بكلمة المرور الجديدة.
