.class public Lcom/waze/ifs/ui/FullScreenTooltip;
.super Ljava/lang/Object;
.source "FullScreenTooltip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;
    }
.end annotation


# instance fields
.field private density:F

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowHeadPaint:Landroid/graphics/Paint;

.field private mArrowLinePaint:Landroid/graphics/Paint;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCircle:Landroid/widget/ImageView;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mClose:Landroid/widget/ImageButton;

.field protected mContext:Landroid/content/Context;

.field private mDismissCalled:Z

.field private mHeight:I

.field private mHole:Landroid/widget/ImageView;

.field private mIToolTipClicked:Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;

.field private mLeft:I

.field private mOnLeft:Z

.field private mOnTop:Z

.field private mShowAgain:Z

.field private mTextView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mTop:I

.field protected mView:Landroid/view/View;

.field private mWidth:I

.field protected mWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "text"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v2, 0x0

    iput v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mLeft:I

    .line 63
    const/4 v2, 0x0

    iput v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTop:I

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    .line 65
    const/4 v2, 0x0

    iput v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHeight:I

    .line 73
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mDismissCalled:Z

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mShowAgain:Z

    .line 77
    iput-object p1, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mContext:Landroid/content/Context;

    .line 78
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    .line 81
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 83
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030063

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    .line 84
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    const v3, 0x7f090307

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTitleView:Landroid/widget/TextView;

    .line 85
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTextView:Landroid/widget/TextView;

    .line 86
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    const v3, 0x7f090309

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCircle:Landroid/widget/ImageView;

    .line 87
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    const v3, 0x7f090305

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHole:Landroid/widget/ImageView;

    .line 88
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    const v3, 0x7f090306

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrow:Landroid/widget/ImageView;

    .line 89
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    const v3, 0x7f09030b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mClose:Landroid/widget/ImageButton;

    .line 90
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    const v3, 0x7f09030a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCheckBox:Landroid/widget/CheckBox;

    .line 91
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 96
    .local v1, xfermode:Landroid/graphics/PorterDuffXfermode;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mClearPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mClearPaint:Landroid/graphics/Paint;

    const v3, 0xffffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mClearPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mClearPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCirclePaint:Landroid/graphics/Paint;

    .line 103
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4000

    iget v4, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x100

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 106
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3fc0

    iget v4, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowLinePaint:Landroid/graphics/Paint;

    .line 110
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowLinePaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 114
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 115
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowLinePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ComposePathEffect;

    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    .line 116
    const/high16 v7, 0x4080

    iget v8, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x4080

    iget v8, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    new-instance v5, Landroid/graphics/CornerPathEffect;

    const/high16 v6, 0x40a0

    iget v7, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    mul-float/2addr v6, v7

    invoke-direct {v5, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-direct {v3, v4, v5}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    .line 115
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 118
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowHeadPaint:Landroid/graphics/Paint;

    .line 119
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowHeadPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowHeadPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowHeadPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    const/high16 v4, 0x4000

    iget v5, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    mul-float/2addr v4, v5

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 123
    new-instance v2, Lcom/waze/ifs/ui/FullScreenTooltip$1;

    invoke-direct {v2, p0, p1}, Lcom/waze/ifs/ui/FullScreenTooltip$1;-><init>(Lcom/waze/ifs/ui/FullScreenTooltip;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    .line 136
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 137
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 138
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 139
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 140
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 141
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 142
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 146
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mClose:Landroid/widget/ImageButton;

    new-instance v3, Lcom/waze/ifs/ui/FullScreenTooltip$2;

    invoke-direct {v3, p0}, Lcom/waze/ifs/ui/FullScreenTooltip$2;-><init>(Lcom/waze/ifs/ui/FullScreenTooltip;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_DONT_SHOW_AGAIN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/waze/ifs/ui/FullScreenTooltip$3;

    invoke-direct {v3, p0}, Lcom/waze/ifs/ui/FullScreenTooltip$3;-><init>(Lcom/waze/ifs/ui/FullScreenTooltip;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 165
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    new-instance v3, Lcom/waze/ifs/ui/FullScreenTooltip$4;

    invoke-direct {v3, p0}, Lcom/waze/ifs/ui/FullScreenTooltip$4;-><init>(Lcom/waze/ifs/ui/FullScreenTooltip;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v2, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCircle:Landroid/widget/ImageView;

    new-instance v3, Lcom/waze/ifs/ui/FullScreenTooltip$5;

    invoke-direct {v3, p0}, Lcom/waze/ifs/ui/FullScreenTooltip$5;-><init>(Lcom/waze/ifs/ui/FullScreenTooltip;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method

.method static synthetic access$0(Lcom/waze/ifs/ui/FullScreenTooltip;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mDismissCalled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/FullScreenTooltip;)Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mIToolTipClicked:Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/ifs/ui/FullScreenTooltip;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mShowAgain:Z

    return-void
.end method


# virtual methods
.method public dismissTooltip()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 352
    iput-boolean v3, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mDismissCalled:Z

    .line 353
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 354
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 355
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 356
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 357
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 359
    iget-object v1, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    new-instance v1, Lcom/waze/ifs/ui/FullScreenTooltip$6;

    invoke-direct {v1, p0}, Lcom/waze/ifs/ui/FullScreenTooltip$6;-><init>(Lcom/waze/ifs/ui/FullScreenTooltip;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 373
    return-void
.end method

.method public initTooltip(Landroid/view/View;)V
    .locals 26
    .parameter "anchor"

    .prologue
    .line 191
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v11, v0, [I

    .line 192
    .local v11, location:[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 194
    const/16 v22, 0x0

    aget v9, v11, v22

    .line 195
    .local v9, left:I
    const/16 v22, 0x1

    aget v17, v11, v22

    .line 196
    .local v17, top:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 197
    .local v19, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 199
    .local v6, height:I
    move/from16 v0, v19

    if-ge v0, v6, :cond_0

    .line 200
    const/high16 v22, 0x4120

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v22, v22, v6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/FullScreenTooltip;->mHeight:I

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    .line 202
    const/high16 v22, 0x40a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/FullScreenTooltip;->mTop:I

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v19

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v9, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/FullScreenTooltip;->mLeft:I

    .line 211
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 212
    .local v16, screenWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v15, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 214
    .local v15, screenHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f090303

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 215
    .local v18, topBg:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 216
    .local v12, p:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 217
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f090304

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 220
    .local v10, leftBg:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12           #p:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 221
    .restart local v12       #p:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 222
    invoke-virtual {v10, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCircle:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12           #p:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 225
    .restart local v12       #p:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCircle:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHole:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12           #p:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 230
    .restart local v12       #p:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHole:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v14, v22, v23

    .line 237
    .local v14, radius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHeight:I

    move/from16 v23, v0

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 238
    .local v4, circleBmp:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    .local v5, circleCanvas:Landroid/graphics/Canvas;
    const/high16 v22, 0x4000

    sub-float v22, v14, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v14, v14, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCircle:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHeight:I

    move/from16 v23, v0

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 245
    .local v7, holeBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f080060

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 246
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 247
    .local v8, holeCanvas:Landroid/graphics/Canvas;
    const/high16 v22, 0x4000

    sub-float v22, v14, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mClearPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v14, v14, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHole:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v23, v0

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_1

    const/16 v22, 0x1

    :goto_1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnTop:Z

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mLeft:I

    move/from16 v22, v0

    div-int/lit8 v23, v19, 0x2

    add-int v22, v22, v23

    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrow:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12           #p:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 255
    .restart local v12       #p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnTop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    const v22, 0x7f090305

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 256
    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnTop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 257
    const/16 v23, 0x5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 258
    const/16 v23, 0x7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    const v22, 0x7f090305

    :goto_6
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 260
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    move/from16 v22, v0

    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    :goto_8
    move/from16 v0, v22

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrow:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v22, v0

    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v23, v0

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 266
    .local v2, arrowBmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    .local v3, arrowCanvas:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 268
    .local v13, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnTop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 269
    const/high16 v22, 0x4140

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 270
    .local v21, y:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 271
    const/high16 v22, 0x4080

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 275
    :goto_9
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v22, v0

    div-int/lit8 v20, v22, 0x2

    .line 276
    .local v20, x:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 277
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 289
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowLinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v13, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 291
    new-instance v13, Landroid/graphics/Path;

    .end local v13           #path:Landroid/graphics/Path;
    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 292
    .restart local v13       #path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnTop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 293
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 294
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v22, v0

    div-int/lit8 v20, v22, 0x2

    .line 295
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 296
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4080

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4100

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 297
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4080

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4100

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 298
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 307
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrowHeadPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v13, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mArrow:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    const/16 v22, 0x5

    :goto_c
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12           #p:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 314
    .restart local v12       #p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0x6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnTop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    const v22, 0x7f090306

    :goto_d
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 315
    const/16 v23, 0x8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnTop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 316
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 317
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    const v22, 0x7f090306

    :goto_10
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    const/16 v22, 0x5

    :goto_11
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12           #p:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 323
    .restart local v12       #p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0x5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    const/16 v22, 0x0

    :goto_12
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 324
    const/16 v23, 0x7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    const v22, 0x7f090307

    :goto_13
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    return-void

    .line 205
    .end local v2           #arrowBmp:Landroid/graphics/Bitmap;
    .end local v3           #arrowCanvas:Landroid/graphics/Canvas;
    .end local v4           #circleBmp:Landroid/graphics/Bitmap;
    .end local v5           #circleCanvas:Landroid/graphics/Canvas;
    .end local v7           #holeBmp:Landroid/graphics/Bitmap;
    .end local v8           #holeCanvas:Landroid/graphics/Canvas;
    .end local v10           #leftBg:Landroid/view/View;
    .end local v12           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13           #path:Landroid/graphics/Path;
    .end local v14           #radius:F
    .end local v15           #screenHeight:I
    .end local v16           #screenWidth:I
    .end local v18           #topBg:Landroid/view/View;
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_0
    const/high16 v22, 0x4120

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v22, v22, v19

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/FullScreenTooltip;->mHeight:I

    .line 207
    const/high16 v22, 0x40a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v22, v9, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/FullScreenTooltip;->mLeft:I

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mHeight:I

    move/from16 v22, v0

    sub-int v22, v22, v6

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/FullScreenTooltip;->mTop:I

    goto/16 :goto_0

    .line 251
    .restart local v4       #circleBmp:Landroid/graphics/Bitmap;
    .restart local v5       #circleCanvas:Landroid/graphics/Canvas;
    .restart local v7       #holeBmp:Landroid/graphics/Bitmap;
    .restart local v8       #holeCanvas:Landroid/graphics/Canvas;
    .restart local v10       #leftBg:Landroid/view/View;
    .restart local v12       #p:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v14       #radius:F
    .restart local v15       #screenHeight:I
    .restart local v16       #screenWidth:I
    .restart local v18       #topBg:Landroid/view/View;
    :cond_1
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 252
    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 255
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 256
    :cond_4
    const v22, 0x7f090305

    goto/16 :goto_4

    .line 257
    :cond_5
    const v22, 0x7f090305

    goto/16 :goto_5

    .line 258
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 259
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWidth:I

    move/from16 v22, v0

    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    goto/16 :goto_7

    .line 260
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 273
    .restart local v2       #arrowBmp:Landroid/graphics/Bitmap;
    .restart local v3       #arrowCanvas:Landroid/graphics/Canvas;
    .restart local v13       #path:Landroid/graphics/Path;
    .restart local v21       #y:I
    :cond_9
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4080

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto/16 :goto_9

    .line 279
    .end local v21           #y:I
    :cond_a
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v22, v0

    const/high16 v23, 0x4140

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v21, v22, v23

    .line 280
    .restart local v21       #y:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mOnLeft:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 281
    const/high16 v22, 0x4080

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 285
    :goto_14
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v22, v0

    div-int/lit8 v20, v22, 0x2

    .line 286
    .restart local v20       #x:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_a

    .line 283
    .end local v20           #x:I
    :cond_b
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4080

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_14

    .line 300
    .restart local v20       #x:I
    :cond_c
    const/high16 v22, 0x40a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 301
    iget v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move/from16 v22, v0

    div-int/lit8 v20, v22, 0x2

    .line 302
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 303
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4080

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4100

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 304
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4080

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4100

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->density:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 305
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 311
    :cond_d
    const/16 v22, 0x3

    goto/16 :goto_c

    .line 314
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_d

    .line 315
    :cond_f
    const v22, 0x7f090306

    goto/16 :goto_e

    .line 316
    :cond_10
    const v22, 0x7f090306

    goto/16 :goto_f

    .line 317
    :cond_11
    const/16 v22, 0x0

    goto/16 :goto_10

    .line 320
    :cond_12
    const/16 v22, 0x3

    goto/16 :goto_11

    .line 323
    :cond_13
    const v22, 0x7f090307

    goto/16 :goto_12

    .line 324
    :cond_14
    const/16 v22, 0x0

    goto/16 :goto_13
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setOnClickListeners(Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mIToolTipClicked:Lcom/waze/ifs/ui/FullScreenTooltip$IToolTipClicked;

    .line 188
    return-void
.end method

.method public setShowAgainChecked(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mShowAgain:Z

    .line 381
    iget-object v1, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 382
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldShowAgain()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mShowAgain:Z

    return v0
.end method

.method public show(Landroid/view/View;)V
    .locals 12
    .parameter "anchor"

    .prologue
    const/high16 v6, 0x3f00

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    .line 330
    invoke-virtual {p0, p1}, Lcom/waze/ifs/ui/FullScreenTooltip;->initTooltip(Landroid/view/View;)V

    .line 332
    iput-boolean v1, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mDismissCalled:Z

    .line 333
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 335
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 336
    .local v10, circleAnimSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x4000

    const/high16 v3, 0x4000

    move v4, v2

    move v7, v5

    move v8, v6

    .line 337
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 336
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 338
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v11, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 339
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 340
    const-wide/16 v0, 0xc8

    invoke-virtual {v10, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 341
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 343
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v11, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 344
    .local v9, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v0, 0x12c

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 345
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 346
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 347
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 348
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 349
    return-void
.end method
