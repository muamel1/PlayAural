# رسائل لعبة الكرات المتدحرجة
# ملاحظة: الرسائل المشتركة مثل بداية الجولة وبداية الدور موجودة في games.ftl

# معلومات اللعبة
game-name-rollingballs = الكرات المتدحرجة

# حركات الدور
rb-take = سحب { $count } { $count ->
    [one] كرة واحدة
    [two] كرتين
    [few] كرات
    *[other] كرة
    }
rb-reshuffle-action = إعادة خلط الأنبوب (تبقى { $remaining } استخدامات)
rb-view-pipe-action = فحص الأنبوب (تبقى { $remaining } استخدامات)

# أحداث سحب الكرات
rb-you-take = لقد سحبت { $count } { $count ->
    [one] كرة واحدة
    [two] كرتين
    [few] كرات
    *[other] كرة
    }!
rb-player-takes = سحب { $player } { $count } { $count ->
    [one] كرة واحدة
    [two] كرتين
    [few] كرات
    *[other] كرة
    }!
rb-ball-plus = الكرة { $num }: { $description }! إضافة { $value } نقطة!
rb-ball-minus = الكرة { $num }: { $description }! خصم { $value } نقطة!
rb-ball-zero = الكرة { $num }: { $description }! لا يوجد تغيير!
rb-new-score = رصيد { $player }: { $score } نقطة.

# أحداث إعادة الخلط
rb-you-reshuffle = قمت بإعادة خلط الأنبوب!
rb-player-reshuffles = قام { $player } بإعادة خلط الأنبوب!
rb-reshuffled = تم إعادة خلط محتويات الأنبوب!
rb-reshuffle-penalty = فقد { $player } { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    } بسبب إعادة الخلط.

# فحص الأنبوب
rb-view-pipe-header = يحتوي الأنبوب على { $count } { $count ->
    [one] كرة واحدة
    [two] كرتين
    [few] كرات
    *[other] كرة
    }:
rb-view-pipe-ball = { $num }: { $description }. القيمة: { $value } نقطة.

# بداية اللعبة
rb-pipe-filled = تم ملء الأنبوب بـ { $count } { $count ->
    [one] كرة واحدة
    [two] كرتين
    [few] كرات
    *[other] كرة
    }!
rb-balls-remaining = يتبقى { $count } { $count ->
    [one] كرة واحدة
    [two] كرتين
    [few] كرات
    *[other] كرة
    } في الأنبوب.

# نهاية اللعبة
rb-pipe-empty = الأنبوب فارغ الآن!
rb-score-line = { $player }: { $score } نقطة.
rb-winner = الفائز هو { $player } برصيد { $score } نقطة!
rb-you-win = لقد فزت برصيد { $score } نقطة!
rb-tie = تعادل بين { $players } برصيد { $score } نقطة!
rb-line-format = { $rank }. { $player }: { $points }

# الخيارات
rb-set-min-take = الحد الأدنى للكرات المسحوبة كل دور: { $count }
rb-enter-min-take = أدخل الحد الأدنى لسحب الكرات (1-5):
rb-option-changed-min-take = تم ضبط الحد الأدنى لسحب الكرات على { $count }.

rb-set-max-take = الحد الأقصى للكرات المسموح بسحبها كل دور: { $count }
rb-enter-max-take = أدخل الحد الأقصى لسحب الكرات (1-5):
rb-option-changed-max-take = تم ضبط الحد الأقصى لسحب الكرات على { $count }.

rb-set-view-pipe-limit = حد فحص الأنبوب: { $count }
rb-enter-view-pipe-limit = أدخل حد فحص الأنبوب (0 للتعطيل، الأقصى 100):
rb-option-changed-view-pipe-limit = تم ضبط حد فحص الأنبوب على { $count }.

rb-set-reshuffle-limit = حد إعادة الخلط: { $count }
rb-enter-reshuffle-limit = أدخل حد إعادة الخلط (0 للتعطيل، الأقصى 100):
rb-option-changed-reshuffle-limit = تم ضبط حد إعادة الخلط على { $count }.

rb-set-reshuffle-penalty = غرامة إعادة الخلط: { $points }
rb-enter-reshuffle-penalty = أدخل غرامة إعادة الخلط (0-5):
rb-option-changed-reshuffle-penalty = تم ضبط غرامة إعادة الخلط على { $points }.

rb-set-ball-pack = حزمة الكرات: { $pack }
rb-select-ball-pack = اختر حزمة الكرات المستخدمة:
rb-option-changed-ball-pack = تم ضبط حزمة الكرات على { $pack }.

# أسباب التعطيل
rb-not-enough-balls = لا توجد كرات كافية في الأنبوب.
rb-no-reshuffles-left = لم يتبقَ محاولات لإعادة الخلط.
rb-already-reshuffled = لقد قمت بإعادة الخلط بالفعل في هذا الدور.
rb-no-views-left = لم يتبقَ محاولات لفحص الأنبوب.

# عناصر حزم الكرات
rb-pack-all = مزيج من جميع الحزم
rb-pack-international = حول العالم
rb-ball-paris-pickpocket = لص في باريس
rb-ball-lost-luggage-in-london = حقائب ضائعة في لندن
rb-ball-tokyo-train-delay = تأخر قطار طوكيو
rb-ball-sahara-sandstorm = عاصفة رملية في الصحراء
rb-ball-venice-flood = فيضان في البندقية
rb-ball-new-york-traffic = زحام نيويورك
rb-ball-amazon-mosquito-swarm = سرب بعوض في الأمازون
rb-ball-berlin-club-rejected = منع الدخول لنادي في برلين
rb-ball-spilled-coffee-in-rome = قهوة مسكوبة في روما
rb-ball-sydney-sunburn = حروق شمس في سيدني
rb-ball-istanbul-bazaar-scam = احتيال في بازار إسطنبول
rb-ball-moscow-blizzard = عاصفة ثلجية في موسكو
rb-ball-dubai-heatwave = موجة حر في دبي
rb-ball-mexico-city-smog = ضباب دخاني في مكسيكو سيتي
rb-ball-cairo-camel-spit = بصقة جمل في القاهرة
rb-ball-athens-ruins-trip = تعثر في آثار أثينا
rb-ball-rio-carnival-hangover = إعياء كرنفال ريو
rb-ball-bali-belly = نزلة معوية في بالي
rb-ball-swiss-alps-avalanche = انهيار ثلجي في جبال الألب
rb-ball-amsterdam-bicycle-crash = حادث دراجة في أمستردام
rb-ball-bangkok-tuk-tuk-breakdown = عطل "توك توك" في بانكوك
rb-ball-iceland-volcano-ash = رماد بركاني في آيسلندا
rb-ball-cape-town-wind = رياح كيب تاون
rb-ball-neutral-passport = جواز سفر محايد
rb-ball-airport-layover = انتظار في المطار
rb-ball-hotel-lobby = انتظار في ردهة الفندق
rb-ball-tourist-map = خريطة سياحية
rb-ball-souvenir-magnet = مغناطيس تذكاري
rb-ball-free-museum-day = يوم متاحف مجاني
rb-ball-street-food-snack = وجبة شارع خفيفة
rb-ball-post-card-home = بطاقة بريدية للأهل
rb-ball-friendly-local = مواطن محلي ودود
rb-ball-sunny-day = يوم مشمس
rb-ball-eiffel-tower-view = إطلالة على برج إيفل
rb-ball-taj-mahal-sunrise = شروق الشمس في تاج محل
rb-ball-great-wall-hike = تسلق سور الصين العظيم
rb-ball-machu-picchu-climb = صعود ماتشو بيتشو
rb-ball-kyoto-cherry-blossoms = أزهار الكرز في كيوتو
rb-ball-colosseum-tour = جولة في الكولوسيوم
rb-ball-pyramids-exploration = استكشاف الأهرامات
rb-ball-santorini-sunset = غروب الشمس في سانتوريني
rb-ball-aurora-borealis = الشفق القطبي
rb-ball-safari-lion-sighting = مشاهدة أسد في سفاري
rb-ball-bora-bora-villa = فيلا في بورا بورا
rb-ball-maldives-scuba = غوص في جزر المالديف
rb-ball-niagara-falls-boat = قارب في شلالات نياجرا
rb-ball-grand-canyon-heli = مروحية فوق الأخدود العظيم
rb-ball-serengeti-migration = هجرة السيرينغيتي
rb-ball-first-class-upgrade = ترقية للدرجة الأولى
rb-ball-lottery-in-macau = فوز باليانصيب في ماكاو
rb-ball-private-jet = رحلة بطائرة خاصة
rb-ball-royal-palace-invite = دعوة لقصر ملكي
rb-ball-world-tour-ticket = تذكرة حول العالم

rb-pack-vietnam = مغامرة في فيتنام
rb-ball-stolen-motorbike = دراجة نارية مسروقة
rb-ball-flooded-street-saigon = شارع مغمور في سايغون
rb-ball-food-poisoning-bun-mam = تسمم غذائي من "بون مام"
rb-ball-fake-taxi-scam = احتيال سيارة أجرة وهمية
rb-ball-typhoon-in-central-vietnam = إعصار في وسط فيتنام
rb-ball-lost-wallet-ben-thanh = محفظة ضائعة في سوق بن ثانه
rb-ball-traffic-jam-hanoi = زحام مروري في هانوي
rb-ball-pickpocketed-in-bui-vien = سرقة محفظة في بوي فين
rb-ball-spilled-pho = حساء "فو" مسكوب
rb-ball-overcharged-for-coffee = سعر مبالغ فيه للقهوة
rb-ball-sunburn-in-mui-ne = حروق شمس في موي ني
rb-ball-missed-train-to-sapa = قطار ضائع إلى سابا
rb-ball-loud-karaoke-next-door = كاريوكي صاخب في الجوار
rb-ball-broken-flip-flop = صندل مقطوع
rb-ball-sudden-downpour = هطول مطر مفاجئ
rb-ball-dog-chased-you = مطاردة من كلب
rb-ball-bitten-by-mosquitoes = لدغات بعوض
rb-ball-out-of-gas = نفاد الوقود
rb-ball-spicy-chili-bite = قضمة فلفل حار
rb-ball-delayed-flight = رحلة جوية متأخرة
rb-ball-wifi-disconnected = انقطاع الواي فاي
rb-ball-forgot-umbrella = نسيان المظلة
rb-ball-minor-scratch = خدش بسيط
rb-ball-plastic-stool = كرسي بلاستيكي
rb-ball-iced-tea-tra-da = شاي مثلج (ترا دا)
rb-ball-waiting-for-green-light = انتظار الإشارة الخضراء
rb-ball-bamboo-hat = قبعة بامبو (نون لا)
rb-ball-motorbike-helmet = خوذة دراجة نارية
rb-ball-tasty-banh-mi = ساندوتش "بانه مي" لذيذ
rb-ball-free-sugar-cane-juice = عصير قصب مجاني
rb-ball-friendly-street-vendor = بائع متجول ودود
rb-ball-cool-breeze = نسمة باردة
rb-ball-found-10k-vnd = العثور على 10 آلاف دونغ
rb-ball-delicious-pho-bowl = وعاء حساء "فو" شهي
rb-ball-egg-coffee-in-hanoi = قهوة بالبيض في هانوي
rb-ball-boat-ride-in-ninh-binh = رحلة قارب في نينه بينه
rb-ball-lantern-festival-hoian = مهرجان الفوانيس في هوي آن
rb-ball-motorbike-road-trip = رحلة برية بالدراجة النارية
rb-ball-ha-long-bay-cruise = رحلة في خليج ها لونغ
rb-ball-golden-bridge-bana-hills = الجسر الذهبي في تلال با نا
rb-ball-phu-quoc-sunset = غروب الشمس في فو كوك
rb-ball-sapa-terraced-fields = حقول سابا المدرجة
rb-ball-phong-nha-cave-exploration = استكشاف كهف فونج نها
rb-ball-tet-holiday-lucky-money = عيدية عيد التيت
rb-ball-vip-ticket-to-concert = تذكرة كبار الشخصيات لحفل غنائي
rb-ball-luxury-resort-stay = إقامة في منتجع فاخر
rb-ball-business-class-flight = رحلة على درجة رجال الأعمال
rb-ball-won-lottery-vietlott = فوز بيانصيب "فيتلوت"
rb-ball-billionaire-inheritance = ورثة ملياردير
rb-ball-found-gold-treasure = العثور على كنز ذهبي
rb-ball-free-house-in-district-1 = منزل مجاني في الحي الأول
rb-ball-national-hero-award = وسام البطل القومي
rb-ball-ultimate-happiness = السعادة المطلقة
