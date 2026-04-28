game-name-chess = الشطرنج

# الخيارات
chess-set-time-control = ضبط الوقت: { $control }
chess-select-time-control = اختر نمط الوقت
chess-option-changed-time-control = تم ضبط الوقت إلى { $control }.
chess-time-untimed = بدون مؤقت
chess-time-bullet-1-0 = خاطف (Bullet) 1+0
chess-time-bullet-2-1 = خاطف (Bullet) 2+1
chess-time-blitz-3-0 = سريع (Blitz) 3+0
chess-time-blitz-3-2 = سريع (Blitz) 3+2
chess-time-blitz-5-0 = سريع (Blitz) 5+0
chess-time-rapid-10-0 = سريع جداً (Rapid) 10+0
chess-time-rapid-10-5 = سريع جداً (Rapid) 10+5
chess-time-classical-30-0 = كلاسيكي 30+0

chess-set-draw-handling = معالجة التعادل: { $mode }
chess-select-draw-handling = اختر طريقة معالجة التعادل
chess-option-changed-draw-handling = تم ضبط معالجة التعادل إلى { $mode }.
chess-draw-handling-automatic = تلقائي
chess-draw-handling-claim-required = يتطلب المطالبة

chess-toggle-draw-offers = السماح بطلب التعادل: { $enabled }
chess-option-changed-draw-offers = تم ضبط السماح بطلب التعادل إلى { $enabled }.
chess-toggle-undo-requests = السماح بطلب التراجع: { $enabled }
chess-option-changed-undo-requests = تم ضبط السماح بطلب التراجع إلى { $enabled }.

# الإجراءات
chess-read-board = قراءة الرقعة
chess-check-status = فحص الحالة
chess-flip-board = قلب الرقعة
chess-check-clock = فحص الساعة
chess-claim-draw = المطالبة بالتعادل
chess-offer-draw = عرض التعادل
chess-accept-draw = قبول التعادل
chess-decline-draw = رفض التعادل
chess-request-undo = طلب تراجع
chess-accept-undo = قبول التراجع
chess-decline-undo = رفض التراجع

chess-promote-queen = ترقية إلى وزير
chess-promote-rook = ترقية إلى قلعة
chess-promote-bishop = ترقية إلى فيل
chess-promote-knight = ترقية إلى حصان

chess-color-white = الأبيض
chess-color-black = الأسود

chess-piece-pawn = جندي
chess-piece-knight = حصان
chess-piece-bishop = فيل
chess-piece-rook = قلعة
chess-piece-queen = وزير
chess-piece-king = ملك

chess-square-empty-label = { $square }، فارغ
chess-square-piece-label = { $square }، { $piece }
chess-square-selected-label = مختار، { $label }
chess-square-move-target = { $square }، حركة قانونية
chess-square-capture-target = { $square }، أسر { $piece }
chess-square-empty = { $square } فارغ.
chess-square-occupied = { $square }: { $piece }.

chess-select-own-piece = اختر إحدى قطعك أولاً.
chess-piece-no-legal-moves = هذه القطعة ليس لها حركات قانونية.
chess-piece-selected = تم اختيار { $piece } في { $square }. تتوفر { $count } حركات قانونية.
chess-selection-cleared = تم إلغاء الاختيار.
chess-illegal-move = حركة غير قانونية.
chess-invalid-castle = التبييت غير قانوني هنا.
chess-promotion-pending = اختر قطعة للترقية أولاً.
chess-choose-promotion = اختر قطعة للترقية.

chess-game-started = بدأت مباراة الشطرنج. { $white } باللون الأبيض. { $black } باللون الأسود.
chess-you-win-checkmate = كش ملك. أنت الفائز.
chess-player-wins-checkmate = كش ملك. فاز { $player }.
chess-draw = تعادل.
chess-draw-stalemate = تعادل بـ "خنق الملك" (Stalemate).
chess-draw-fifty-move = تعادل بقاعدة الخمسين حركة.
chess-draw-threefold = تعادل بتكرار الموضع ثلاث مرات.
chess-draw-insufficient-material = تعادل لعدم كفاية القطع.
chess-draw-agreement = تعادل بالاتفاق.
chess-draw-timeout-insufficient = تعادل. انتهى وقت الخصم ولكن لا توجد قطع كافية لإماتة الملك.
chess-check = تهديد (كش) على { $player }.
chess-timeout-loss = انتهى وقت { $player }. فاز { $winner } بالوقت.

chess-you-en-passant = أسررت بالمرور (En Passant) من { $from_square } إلى { $to_square }.
chess-player-en-passant = أسر { $player } بالمرور من { $from_square } إلى { $to_square }.
chess-you-capture = قمت بالأسر من { $from_square } إلى { $to_square }.
chess-player-captures = أسر { $player } من { $from_square } إلى { $to_square }.
chess-you-castle-kingside = قمت بالتبييت في جهة الملك.
chess-player-castles-kingside = قام { $player } بالتبييت في جهة الملك.
chess-you-castle-queenside = قمت بالتبييت في جهة الوزير.
chess-player-castles-queenside = قام { $player } بالتبييت في جهة الوزير.
chess-you-move = حركت من { $from_square } إلى { $to_square }.
chess-player-moves = حرك { $player } من { $from_square } إلى { $to_square }.
chess-you-promote = قمت بالترقية في { $square }.
chess-player-promotes = قام { $player } بالترقية في { $square }.
chess-you-offer-draw = عرضت التعادل.
chess-player-offers-draw = عرض { $player } التعادل.
chess-you-accept-draw = قبلت التعادل.
chess-player-accepts-draw = قبل { $player } التعادل.
chess-you-decline-draw = رفضت التعادل.
chess-player-declines-draw = رفض { $player } التعادل.
chess-you-request-undo = طلبت التراجع عن النقلة.
chess-player-requests-undo = طلب { $player } التراجع عن النقلة.
chess-you-accept-undo = قبلت طلب التراجع.
chess-player-accepts-undo = قبل { $player } طلب التراجع.
chess-you-decline-undo = رفضت طلب التراجع.
chess-player-declines-undo = رفض { $player } طلب التراجع.
chess-claim-available-fifty-move = يمكن الآن المطالبة بالتعادل بقاعدة الخمسين حركة.
chess-claim-available-threefold = يمكن الآن المطالبة بالتعادل بتكرار الموضع.
chess-draw-claimed-fifty-move = طالب { $player } بالتعادل بقاعدة الخمسين حركة.
chess-draw-claimed-threefold = طالب { $player } بالتعادل بتكرار الموضع.

chess-status-white = الأبيض: { $player }
chess-status-black = الأسود: { $player }
chess-status-turn = الدور: { $color } ({ $player })
chess-status-move-count = عدد النقلات: { $count }
chess-status-promotion-pending = بانتظار قرار الترقية.
chess-status-check = اللاعب الذي عليه الدور مهدد بكش.
chess-status-time-control = ضبط الوقت: { $control }
chess-status-draw-offer = عرض تعادل معلق من { $player }.
chess-status-undo-request = طلب تراجع معلق من { $player }.
chess-clock-line = ساعة { $color }: { $time }
chess-clock-untimed = غير محدود
chess-clock-announcement = الأبيض { $white }. الأسود { $black }.
chess-clock-announcement-untimed = هذه المباراة بدون مؤقت.

chess-board-flipped = تم قلب الرقعة لجهة { $color }.
chess-empty = فارغ
chess-board-rank-line = الصف { $rank }: { $pieces }

chess-end-winner = فاز { $player } باللون { $color }.
chess-end-move-count = إجمالي النقلات: { $count }
