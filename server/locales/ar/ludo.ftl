game-name-ludo = لودو

ludo-roll-die = رمي النرد
ludo-move-token = تحريك الرمز
ludo-move-token-n = تحريك الرمز { $token }
ludo-check-board = عرض حالة اللوحة
ludo-select-token = اختر الرمز المراد تحريكه:

ludo-roll = يرمي { $player } النرد ويحصل على { $roll }.
ludo-you-roll = لقد رميت النرد وحصلت على { $roll }.
ludo-no-moves = لا توجد حركات صالحة للاعب { $player }.
ludo-you-no-moves = ليس لديك حركات صالحة.
ludo-you-enter-board =
    { $brief ->
        [yes] { $safe ->
            [yes] أنت: الرمز { $token } خارج +{ $spaces } إلى { $position }، آمن.
           *[no] أنت: الرمز { $token } خارج +{ $spaces } إلى { $position }.
        }
       *[no] { $safe ->
            [yes] لقد أدخلت الرمز { $token } إلى الموضع { $position }، وهو مربع آمن.
           *[no] لقد أدخلت الرمز { $token } إلى الموضع { $position }.
        }
    }
ludo-enter-board =
    { $brief ->
        [yes] { $safe ->
            [yes] { $player } ({ $color ->
                [red] أحمر
                [blue] أزرق
                [green] أخضر
                [yellow] أصفر
               *[other] { $color }
            }): الرمز { $token } خارج +{ $spaces } إلى { $position }، آمن.
           *[no] { $player } ({ $color ->
                [red] أحمر
                [blue] أزرق
                [green] أخضر
                [yellow] أصفر
               *[other] { $color }
            }): الرمز { $token } خارج +{ $spaces } إلى { $position }.
        }
       *[no] { $safe ->
            [yes] يُدخل { $player } ({ $color ->
                [red] أحمر
                [blue] أزرق
                [green] أخضر
                [yellow] أصفر
               *[other] { $color }
            }) الرمز { $token } إلى الموضع { $position }، وهو مربع آمن.
           *[no] يُدخل { $player } ({ $color ->
                [red] أحمر
                [blue] أزرق
                [green] أخضر
                [yellow] أصفر
               *[other] { $color }
            }) الرمز { $token } إلى الموضع { $position }.
        }
    }
ludo-you-move-track =
    { $brief ->
        [yes] { $safe ->
            [yes] أنت: الرمز { $token } +{ $spaces } إلى { $position }، آمن.
           *[no] أنت: الرمز { $token } +{ $spaces } إلى { $position }.
        }
       *[no] { $safe ->
            [yes] لقد نقلت الرمز { $token } إلى الموضع { $position }، وهو مربع آمن.
           *[no] لقد نقلت الرمز { $token } إلى الموضع { $position }.
        }
    }
ludo-move-track =
    { $brief ->
        [yes] { $safe ->
            [yes] { $player } ({ $color ->
                [red] أحمر
                [blue] أزرق
                [green] أخضر
                [yellow] أصفر
               *[other] { $color }
            }): الرمز { $token } +{ $spaces } إلى { $position }، آمن.
           *[no] { $player } ({ $color ->
                [red] أحمر
                [blue] أزرق
                [green] أخضر
                [yellow] أصفر
               *[other] { $color }
            }): الرمز { $token } +{ $spaces } إلى { $position }.
        }
       *[no] { $safe ->
            [yes] ينقل { $player } ({ $color ->
                [red] أحمر
                [blue] أزرق
                [green] أخضر
                [yellow] أصفر
               *[other] { $color }
            }) الرمز { $token } إلى الموضع { $position }، وهو مربع آمن.
           *[no] ينقل { $player } ({ $color ->
                [red] أحمر
                [blue] أزرق
                [green] أخضر
                [yellow] أصفر
               *[other] { $color }
            }) الرمز { $token } إلى الموضع { $position }.
        }
    }
ludo-you-enter-home =
    { $brief ->
        [yes] أنت: الرمز { $token } +{ $spaces } إلى العمود الداخلي { $position }/{ $total }.
       *[no] لقد نقلت الرمز { $token } إلى العمود الداخلي الخاص بك ({ $position }/{ $total }).
    }
ludo-enter-home =
    { $brief ->
        [yes] { $player } ({ $color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
           *[other] { $color }
        }): الرمز { $token } +{ $spaces } إلى العمود الداخلي { $position }/{ $total }.
       *[no] ينقل { $player } ({ $color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
            *[other] { $color }
        }) الرمز { $token } إلى العمود الداخلي ({ $position }/{ $total }).
    }
ludo-you-home-finish =
    { $brief ->
        [yes] أنت: الرمز { $token } في النهاية ({ $finished }/4).
       *[no] وصل رمزك { $token } إلى النهاية. (اكتمل { $finished }/4)
    }
ludo-home-finish =
    { $brief ->
        [yes] { $player } ({ $color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
           *[other] { $color }
        }): الرمز { $token } في النهاية ({ $finished }/4).
       *[no] وصل رمز { $player } ({ $color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
            *[other] { $color }
        }) الرمز { $token } إلى النهاية. (اكتمل { $finished }/4)
    }
ludo-you-move-home =
    { $brief ->
        [yes] أنت: الرمز { $token } +{ $spaces } إلى العمود الداخلي { $position }/{ $total }.
       *[no] لقد نقلت الرمز { $token } في العمود الداخلي الخاص بك ({ $position }/{ $total }).
    }
ludo-move-home =
    { $brief ->
        [yes] { $player } ({ $color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
           *[other] { $color }
        }): الرمز { $token } +{ $spaces } إلى العمود الداخلي { $position }/{ $total }.
       *[no] ينقل { $player } ({ $color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
           *[other] { $color }
        }) الرمز { $token } في العمود الداخلي ({ $position }/{ $total }).
    }
ludo-you-capture =
    { $brief ->
        [yes] أنت: أسرت { $count } لـ { $captured_player } ({ $captured_color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
           *[other] { $captured_color }
        }) إلى الساحة.
       *[no] لقد أسرت { $count ->
            [one] رمزًا واحدًا
           *[other] { $count } رموز
        } لـ { $captured_player } ({ $captured_color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
             *[other] { $captured_color }
        }) وأعدت { $count ->
            [one] الرمز
           *[other] الرموز
        } إلى الساحة.
    }
ludo-your-token-captured =
    { $brief ->
        [yes] { $player } ({ $color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
           *[other] { $color }
        }): أرسل { $count ->
            [one] رمزك
           *[other] رموزك الـ { $count }
        } إلى الساحة.
       *[no] أسر { $player } ({ $color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
             *[other] { $color }
         }) { $count ->
             [one] رمزًا لك
            *[other] { $count } رموز لك
         } وأعاد { $count ->
             [one] الرمز
            *[other] الرموز
         } إلى الساحة.
     }
ludo-captures =
    { $brief ->
        [yes] { $player } ({ $color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
           *[other] { $color }
        }): أسر { $count } لـ { $captured_player } ({ $captured_color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
           *[other] { $captured_color }
        }) إلى الساحة.
       *[no] أسر { $player } ({ $color ->
            [red] أحمر
            [blue] أزرق
            [green] أخضر
            [yellow] أصفر
             *[other] { $color }
         }) { $count ->
             [one] رمزًا واحدًا
            *[other] { $count } رموز
         } لـ { $captured_player } ({ $captured_color ->
             [red] أحمر
             [blue] أزرق
             [green] أخضر
             [yellow] أصفر
             *[other] { $captured_color }
         })، وتم إعادتها إلى الساحة.
     }
ludo-extra-turn = حصل { $player } على الرقم 6. دور إضافي.
ludo-you-extra-turn = حصلت على الرقم 6. دور إضافي.
ludo-you-too-many-sixes = لقد حصلت على الرقم 6 لـ { $count } مرات متتالية. تم التراجع عن حركاتك لهذا الدور، وانتهى دورك.
ludo-too-many-sixes = حصل { $player } على الرقم 6 لـ { $count } مرات متتالية. تم التراجع عن حركاته وانتهى دوره.
ludo-you-winner = لقد فزت! وصلت جميع الرموز الأربعة إلى النهاية.
ludo-winner = فاز { $player } ({ $color ->
    [red] أحمر
    [blue] أزرق
    [green] أخضر
    [yellow] أصفر
    *[other] { $color }
})! وصلت جميع الرموز الأربعة إلى النهاية.
ludo-end-score-line = { $index }. { $player }: { $count ->
    [one] رمز واحد في النهاية
   *[other] { $count } رموز في النهاية
}

ludo-board-player = { $player } ({ $color ->
    [red] أحمر
    [blue] أزرق
    [green] أخضر
    [yellow] أصفر
    *[other] { $color }
}): اكتمل { $finished }/4
ludo-token-yard = الرمز { $token } (في الساحة)
ludo-token-track =
    { $safe ->
        [yes] الرمز { $token } (الموضع { $position }، مربع آمن)
       *[no] الرمز { $token } (الموضع { $position })
    }
ludo-token-home = الرمز { $token } (العمود الداخلي { $position }/{ $total })
ludo-token-finished = الرمز { $token } (مكتمل)
ludo-last-roll = الرمية الأخيرة: { $roll }

ludo-set-max-sixes = الحد الأقصى للرقم 6 المتتالي: { $max_consecutive_sixes }
ludo-enter-max-sixes = أدخل الحد الأقصى للرقم 6 المتتالي
ludo-option-changed-max-sixes = تم ضبط الحد الأقصى للرقم 6 المتتالي إلى { $max_consecutive_sixes }.
ludo-set-safe-start-squares = مربعات بدء آمنة: { $enabled }
ludo-option-changed-safe-start-squares = تم ضبط مربعات البدء الآمنة إلى { $enabled }.
