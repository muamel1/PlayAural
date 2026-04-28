game-name-yahtzee = ياختزي (Yahtzee)

yahtzee-roll = إعادة رمي (تبقى { $count })
yahtzee-roll-all = رمي النرد

yahtzee-score-ones = الآحاد مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-twos = الاثنينات مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-threes = الثلاثات مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-fours = الأربعات مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-fives = الخمسات مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-sixes = الستات مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }

yahtzee-score-three-kind = ثلاثية من نوع واحد مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-four-kind = رباعية من نوع واحد مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-full-house = فول هاوس مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-small-straight = متسلسلة صغيرة مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-large-straight = متسلسلة كبيرة مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-yahtzee = ياختزي مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }
yahtzee-score-chance = فرصة مقابل { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }

yahtzee-you-rolled = كانت رميتك: { $dice }. { $remaining ->
    [0] اختر فئة للتسجيل.
   *[other] تتبقى { $remaining } { $remaining ->
        [one] رمية واحدة
        [two] رميتان
        [few] رميات
       *[other] رمية
    }.
    }
yahtzee-player-rolled = رمى { $player }: { $dice }. { $remaining ->
    [0] لا توجد رميات متبقية.
   *[other] تتبقى { $remaining } { $remaining ->
        [one] رمية واحدة
        [two] رميتان
        [few] رميات
       *[other] رمية
    }.
    }

yahtzee-you-scored = أحرزت { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    } في فئة { $category }.
yahtzee-player-scored = أحرز { $player } { $points } { $points ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    } في فئة { $category }.

yahtzee-you-bonus = مكافأة ياختزي! +100 نقطة
yahtzee-player-bonus = حصل { $player } على مكافأة ياختزي! +100 نقطة

yahtzee-you-upper-bonus = مكافأة القسم العلوي! +35 نقطة ({ $total } في القسم العلوي)
yahtzee-player-upper-bonus = كسب { $player } مكافأة القسم العلوي! +35 نقطة
yahtzee-you-upper-bonus-missed = لم تكتمل مكافأة القسم العلوي. رصيدك { $total }، كنت تحتاج 63.
yahtzee-player-upper-bonus-missed = لم يتمكن { $player } من كسب مكافأة القسم العلوي.

yahtzee-check-scoresheet = التحقق من ورقة النتائج
yahtzee-view-dice = التحقق من يدك
yahtzee-your-dice = أحجار النرد الخاصة بك: { $dice }.
yahtzee-your-dice-kept = أحجار النرد الخاصة بك: { $dice }. المحتفظ به: { $kept }.
yahtzee-current-dice = أحجار النرد الخاصة بـ { $player }: { $dice }.
yahtzee-current-dice-kept = أحجار النرد الخاصة بـ { $player }: { $dice }. المحتفظ به: { $kept }.
yahtzee-not-rolled = لم يقم اللاعب الحالي بالرمي بعد.

yahtzee-scoresheet-header = ورقة نتائج { $player }
yahtzee-scoresheet-upper = القسم العلوي:
yahtzee-scoresheet-lower = القسم السفلي:
yahtzee-scoresheet-upper-total-bonus = إجمالي العلوي: { $total } (المكافأة: +35)
yahtzee-scoresheet-upper-total-needed = إجمالي العلوي: { $total } (يتبقى { $needed } للمكافأة)
yahtzee-scoresheet-yahtzee-bonus = مكافآت ياختزي: { $count } × 100 = { $total }
yahtzee-scoresheet-grand-total = الرصيد الإجمالي: { $total }

yahtzee-category-ones = الآحاد
yahtzee-category-twos = الاثنينات
yahtzee-category-threes = الثلاثات
yahtzee-category-fours = الأربعات
yahtzee-category-fives = الخمسات
yahtzee-category-sixes = الستات
yahtzee-category-three-kind = ثلاثية من نوع واحد
yahtzee-category-four-kind = رباعية من نوع واحد
yahtzee-category-full-house = فول هاوس
yahtzee-category-small-straight = متسلسلة صغيرة
yahtzee-category-large-straight = متسلسلة كبيرة
yahtzee-category-yahtzee = ياختزي
yahtzee-category-chance = فرصة

yahtzee-winner = الفائز هو { $player } برصيد { $score } { $score ->
    [one] نقطة واحدة
    [two] نقطتين
    [few] نقاط
    *[other] نقطة
    }!
yahtzee-winners-tie = إنه تعادل! حصل { $players } جميعاً على { $score } نقطة!

yahtzee-set-rounds = عدد الجولات: { $rounds }
yahtzee-enter-rounds = أدخل عدد الجولات (1-10):
yahtzee-option-changed-rounds = تم ضبط عدد الجولات على { $rounds }.

yahtzee-no-rolls-left = لا توجد رميات متبقية لديك.
yahtzee-roll-first = يجب عليك الرمي أولاً.
yahtzee-category-filled = هذه الفئة ممتلئة بالفعل.
