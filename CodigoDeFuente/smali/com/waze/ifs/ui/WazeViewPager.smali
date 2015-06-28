.class public Lcom/waze/ifs/ui/WazeViewPager;
.super Landroid/view/ViewGroup;
.source "WazeViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ifs/ui/WazeViewPager$Decor;,
        Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;,
        Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;,
        Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;,
        Lcom/waze/ifs/ui/WazeViewPager$OnAdapterChangeListener;,
        Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;,
        Lcom/waze/ifs/ui/WazeViewPager$PageTransformer;,
        Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;,
        Lcom/waze/ifs/ui/WazeViewPager$SavedState;,
        Lcom/waze/ifs/ui/WazeViewPager$SimpleOnPageChangeListener;,
        Lcom/waze/ifs/ui/WazeViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I = null

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/waze/ifs/ui/WazeViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

.field private mAdapterChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/waze/ifs/ui/WazeViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 106
    const v2, 0x10100b3

    aput v2, v0, v1

    .line 105
    sput-object v0, Lcom/waze/ifs/ui/WazeViewPager;->LAYOUT_ATTRS:[I

    .line 123
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$1;

    invoke-direct {v0}, Lcom/waze/ifs/ui/WazeViewPager$1;-><init>()V

    sput-object v0, Lcom/waze/ifs/ui/WazeViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 130
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$2;

    invoke-direct {v0}, Lcom/waze/ifs/ui/WazeViewPager$2;-><init>()V

    sput-object v0, Lcom/waze/ifs/ui/WazeViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 230
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/waze/ifs/ui/WazeViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/waze/ifs/ui/WazeViewPager;->sPositionComparator:Lcom/waze/ifs/ui/WazeViewPager$ViewPositionComparator;

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 351
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTempItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 144
    iput v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredCurItem:I

    .line 145
    iput-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 146
    iput-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 158
    const v0, -0x800001

    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstOffset:F

    .line 159
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastOffset:F

    .line 168
    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOffscreenPageLimit:I

    .line 187
    iput v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    .line 214
    iput-boolean v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstLayout:Z

    .line 215
    iput-boolean v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mNeedCalculatePageOffsets:Z

    .line 248
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$3;

    invoke-direct {v0, p0}, Lcom/waze/ifs/ui/WazeViewPager$3;-><init>(Lcom/waze/ifs/ui/WazeViewPager;)V

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 255
    iput v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScrollState:I

    .line 352
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->initViewPager()V

    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 356
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTempItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 144
    iput v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredCurItem:I

    .line 145
    iput-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 146
    iput-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 158
    const v0, -0x800001

    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstOffset:F

    .line 159
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastOffset:F

    .line 168
    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOffscreenPageLimit:I

    .line 187
    iput v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    .line 214
    iput-boolean v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstLayout:Z

    .line 215
    iput-boolean v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mNeedCalculatePageOffsets:Z

    .line 248
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$3;

    invoke-direct {v0, p0}, Lcom/waze/ifs/ui/WazeViewPager$3;-><init>(Lcom/waze/ifs/ui/WazeViewPager;)V

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 255
    iput v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScrollState:I

    .line 357
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->initViewPager()V

    .line 358
    return-void
.end method

.method static synthetic access$0(Lcom/waze/ifs/ui/WazeViewPager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/WazeViewPager;)Lcom/waze/ifs/ui/WazePagerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/ifs/ui/WazeViewPager;)I
    .locals 1
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$3()[I
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/waze/ifs/ui/WazeViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;ILcom/waze/ifs/ui/WazeViewPager$ItemInfo;)V
    .locals 14
    .parameter "curItem"
    .parameter "curIndex"
    .parameter "oldCurInfo"

    .prologue
    .line 1130
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v12}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v1

    .line 1131
    .local v1, N:I
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v11

    .line 1132
    .local v11, width:I
    if-lez v11, :cond_1

    iget v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1134
    .local v6, marginOffset:F
    :goto_0
    if-eqz p3, :cond_0

    .line 1135
    move-object/from16 v0, p3

    iget v8, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    .line 1137
    .local v8, oldCurPosition:I
    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_6

    .line 1138
    const/4 v5, 0x0

    .line 1139
    .local v5, itemIndex:I
    const/4 v3, 0x0

    .line 1140
    .local v3, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1141
    .local v7, offset:F
    add-int/lit8 v9, v8, 0x1

    .line 1142
    .local v9, pos:I
    :goto_1
    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_0

    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1141
    if-lt v5, v12, :cond_2

    .line 1181
    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v7           #offset:F
    .end local v8           #oldCurPosition:I
    .end local v9           #pos:I
    :cond_0
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1182
    .local v4, itemCount:I
    iget v7, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    .line 1183
    .restart local v7       #offset:F
    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1184
    .restart local v9       #pos:I
    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    :goto_2
    iput v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstOffset:F

    .line 1185
    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_b

    .line 1186
    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    .line 1185
    :goto_3
    iput v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastOffset:F

    .line 1188
    add-int/lit8 v2, p2, -0x1

    .local v2, i:I
    :goto_4
    if-gez v2, :cond_c

    .line 1197
    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1198
    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1200
    add-int/lit8 v2, p2, 0x1

    :goto_5
    if-lt v2, v4, :cond_f

    .line 1212
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mNeedCalculatePageOffsets:Z

    .line 1213
    return-void

    .line 1132
    .end local v2           #i:I
    .end local v4           #itemCount:I
    .end local v6           #marginOffset:F
    .end local v7           #offset:F
    .end local v9           #pos:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1143
    .restart local v3       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .restart local v5       #itemIndex:I
    .restart local v6       #marginOffset:F
    .restart local v7       #offset:F
    .restart local v8       #oldCurPosition:I
    .restart local v9       #pos:I
    :cond_2
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    check-cast v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 1144
    .restart local v3       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :goto_6
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_3

    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-lt v5, v12, :cond_4

    .line 1148
    :cond_3
    :goto_7
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_5

    .line 1154
    iput v7, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    .line 1155
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1142
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1145
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 1146
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    check-cast v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .restart local v3       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    goto :goto_6

    .line 1151
    :cond_5
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v12, v9}, Lcom/waze/ifs/ui/WazePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1152
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1157
    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v7           #offset:F
    .end local v9           #pos:I
    :cond_6
    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_0

    .line 1158
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1159
    .restart local v5       #itemIndex:I
    const/4 v3, 0x0

    .line 1160
    .restart local v3       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    .line 1161
    .restart local v7       #offset:F
    add-int/lit8 v9, v8, -0x1

    .line 1162
    .restart local v9       #pos:I
    :goto_8
    iget v12, p1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_0

    .line 1161
    if-ltz v5, :cond_0

    .line 1163
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    check-cast v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 1164
    .restart local v3       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :goto_9
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_7

    if-gtz v5, :cond_8

    .line 1168
    :cond_7
    :goto_a
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_9

    .line 1174
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1175
    iput v7, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    .line 1162
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 1165
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 1166
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    check-cast v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .restart local v3       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    goto :goto_9

    .line 1171
    :cond_9
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v12, v9}, Lcom/waze/ifs/ui/WazePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1172
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    .line 1184
    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v8           #oldCurPosition:I
    .restart local v4       #itemCount:I
    :cond_a
    const v12, -0x800001

    goto/16 :goto_2

    .line 1186
    :cond_b
    const v12, 0x7f7fffff

    goto/16 :goto_3

    .line 1189
    .restart local v2       #i:I
    :cond_c
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 1190
    .restart local v3       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :goto_b
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_e

    .line 1193
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1194
    iput v7, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    .line 1195
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-nez v12, :cond_d

    iput v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstOffset:F

    .line 1188
    :cond_d
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_4

    .line 1191
    :cond_e
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9           #pos:I
    .local v10, pos:I
    invoke-virtual {v12, v9}, Lcom/waze/ifs/ui/WazePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_b

    .line 1201
    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_f
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 1202
    .restart local v3       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_11

    .line 1205
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_10

    .line 1206
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastOffset:F

    .line 1208
    :cond_10
    iput v7, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    .line 1209
    iget v12, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1200
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 1203
    :cond_11
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9           #pos:I
    .restart local v10       #pos:I
    invoke-virtual {v12, v9}, Lcom/waze/ifs/ui/WazePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_c
.end method

.method private completeScroll(Z)V
    .locals 10
    .parameter "postEvents"

    .prologue
    const/4 v7, 0x0

    .line 1744
    iget v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1745
    .local v2, needPopulate:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1747
    invoke-direct {p0, v7}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollingCacheEnabled(Z)V

    .line 1748
    iget-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1749
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v3

    .line 1750
    .local v3, oldX:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollY()I

    move-result v4

    .line 1751
    .local v4, oldY:I
    iget-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1752
    .local v5, x:I
    iget-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1753
    .local v6, y:I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1754
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/waze/ifs/ui/WazeViewPager;->scrollTo(II)V

    .line 1757
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_1
    iput-boolean v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPopulatePending:Z

    .line 1758
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v0, v8, :cond_4

    .line 1765
    if-eqz v2, :cond_2

    .line 1766
    if-eqz p1, :cond_6

    .line 1767
    iget-object v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1772
    :cond_2
    :goto_2
    return-void

    .end local v0           #i:I
    .end local v2           #needPopulate:Z
    :cond_3
    move v2, v7

    .line 1744
    goto :goto_0

    .line 1759
    .restart local v0       #i:I
    .restart local v2       #needPopulate:Z
    :cond_4
    iget-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 1760
    .local v1, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget-boolean v8, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_5

    .line 1761
    const/4 v2, 0x1

    .line 1762
    iput-boolean v7, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->scrolling:Z

    .line 1758
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1769
    .end local v1           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_6
    iget-object v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 6
    .parameter "currentPage"
    .parameter "pageOffset"
    .parameter "velocity"
    .parameter "deltaX"

    .prologue
    .line 2159
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFlingDistance:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mMinimumVelocity:I

    if-le v4, v5, :cond_2

    .line 2160
    if-lez p3, :cond_1

    move v2, p1

    .line 2166
    .local v2, targetPage:I
    :goto_0
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2167
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 2168
    .local v0, firstItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 2171
    .local v1, lastItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget v4, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2174
    .end local v0           #firstItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v1           #lastItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_0
    return v2

    .line 2160
    .end local v2           #targetPage:I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2162
    :cond_2
    iget v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd

    .line 2163
    .local v3, truncator:F
    :goto_1
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    .restart local v2       #targetPage:I
    goto :goto_0

    .line 2162
    .end local v2           #targetPage:I
    .end local v3           #truncator:F
    :cond_3
    const v3, 0x3f19999a

    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 1779
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v0

    .line 1780
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1785
    return-void

    .line 1781
    :cond_0
    if-eqz p1, :cond_1

    .line 1782
    const/4 v2, 0x2

    .line 1783
    .local v2, layerType:I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1782
    .end local v2           #layerType:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2407
    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    .line 2408
    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsUnableToDrag:Z

    .line 2410
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2414
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .parameter "outRect"
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 2588
    if-nez p1, :cond_0

    .line 2589
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2591
    .restart local p1
    :cond_0
    if-nez p2, :cond_2

    .line 2592
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2610
    :cond_1
    return-object p1

    .line 2595
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2596
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2597
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2598
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2600
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2601
    .local v1, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2602
    check-cast v0, Landroid/view/ViewGroup;

    .line 2603
    .local v0, group:Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2604
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2605
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2606
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2608
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 2116
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v12

    .line 2117
    .local v12, width:I
    if-lez v12, :cond_2

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2118
    .local v11, scrollOffset:F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2119
    .local v8, marginOffset:F
    :cond_0
    const/4 v5, -0x1

    .line 2120
    .local v5, lastPos:I
    const/4 v4, 0x0

    .line 2121
    .local v4, lastOffset:F
    const/4 v6, 0x0

    .line 2122
    .local v6, lastWidth:F
    const/4 v0, 0x1

    .line 2124
    .local v0, first:Z
    const/4 v3, 0x0

    .line 2125
    .local v3, lastItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v13, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v1, v13, :cond_3

    .line 2154
    .end local v3           #lastItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_1
    :goto_2
    return-object v3

    .end local v0           #first:Z
    .end local v1           #i:I
    .end local v4           #lastOffset:F
    .end local v5           #lastPos:I
    .end local v6           #lastWidth:F
    .end local v8           #marginOffset:F
    .end local v11           #scrollOffset:F
    :cond_2
    move v11, v8

    .line 2117
    goto :goto_0

    .line 2126
    .restart local v0       #first:Z
    .restart local v1       #i:I
    .restart local v3       #lastItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .restart local v4       #lastOffset:F
    .restart local v5       #lastPos:I
    .restart local v6       #lastWidth:F
    .restart local v8       #marginOffset:F
    .restart local v11       #scrollOffset:F
    :cond_3
    iget-object v13, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 2128
    .local v2, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    if-nez v0, :cond_4

    iget v13, v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_4

    .line 2130
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTempItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 2131
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    .line 2132
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    .line 2133
    iget-object v13, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    iget v14, v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/waze/ifs/ui/WazePagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    .line 2134
    add-int/lit8 v1, v1, -0x1

    .line 2136
    :cond_4
    iget v9, v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    .line 2138
    .local v9, offset:F
    move v7, v9

    .line 2139
    .local v7, leftBound:F
    iget v13, v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2140
    .local v10, rightBound:F
    if-nez v0, :cond_5

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_1

    .line 2141
    :cond_5
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_6

    iget-object v13, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_7

    :cond_6
    move-object v3, v2

    .line 2142
    goto :goto_2

    .line 2147
    :cond_7
    const/4 v0, 0x0

    .line 2148
    iget v5, v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    .line 2149
    move v4, v9

    .line 2150
    iget v6, v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    .line 2151
    move-object v3, v2

    .line 2125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .parameter "x"
    .parameter "dx"

    .prologue
    const/4 v2, 0x0

    .line 1775
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    cmpg-float v0, p2, v2

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 2392
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2393
    .local v2, pointerIndex:I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2394
    .local v1, pointerId:I
    iget v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2397
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2398
    .local v0, newPointerIndex:I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 2399
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    .line 2400
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2401
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2404
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 2397
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .parameter "xpos"

    .prologue
    const/4 v7, 0x0

    .line 1639
    iget-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1640
    iput-boolean v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCalledSuper:Z

    .line 1641
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Lcom/waze/ifs/ui/WazeViewPager;->onPageScrolled(IFI)V

    .line 1642
    iget-boolean v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1643
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1644
    const-string v8, "onPageScrolled did not call superclass implementation"

    .line 1643
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1648
    :cond_0
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->infoForCurrentScrollPosition()Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v1

    .line 1649
    .local v1, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v5

    .line 1650
    .local v5, width:I
    iget v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    add-int v6, v5, v8

    .line 1651
    .local v6, widthWithMargin:I
    iget v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1652
    .local v2, marginOffset:F
    iget v0, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    .line 1653
    .local v0, currentPage:I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    .line 1654
    iget v9, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    .line 1653
    div-float v4, v8, v9

    .line 1655
    .local v4, pageOffset:F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1657
    .local v3, offsetPixels:I
    iput-boolean v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCalledSuper:Z

    .line 1658
    invoke-virtual {p0, v0, v4, v3}, Lcom/waze/ifs/ui/WazeViewPager;->onPageScrolled(IFI)V

    .line 1659
    iget-boolean v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1660
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1661
    const-string v8, "onPageScrolled did not call superclass implementation"

    .line 1660
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1663
    :cond_1
    const/4 v7, 0x1

    .end local v0           #currentPage:I
    .end local v1           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v2           #marginOffset:F
    .end local v3           #offsetPixels:I
    .end local v4           #pageOffset:F
    .end local v5           #width:I
    .end local v6           #widthWithMargin:I
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .parameter "x"

    .prologue
    .line 2065
    const/4 v7, 0x0

    .line 2067
    .local v7, needsInvalidate:Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    .line 2068
    .local v2, deltaX:F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 2070
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 2071
    .local v8, oldScrollX:F
    add-float v12, v8, v2

    .line 2072
    .local v12, scrollX:F
    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v13

    .line 2074
    .local v13, width:I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    .line 2075
    .local v6, leftBound:F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    .line 2076
    .local v11, rightBound:F
    const/4 v5, 0x1

    .line 2077
    .local v5, leftAbsolute:Z
    const/4 v10, 0x1

    .line 2079
    .local v10, rightAbsolute:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 2080
    .local v3, firstItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 2081
    .local v4, lastItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget v14, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 2082
    const/4 v5, 0x0

    .line 2083
    iget v14, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 2085
    :cond_0
    iget v14, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v15}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2086
    const/4 v10, 0x0

    .line 2087
    iget v14, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 2090
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 2091
    if-eqz v5, :cond_2

    .line 2092
    sub-float v9, v6, v12

    .line 2093
    .local v9, over:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 2095
    .end local v9           #over:F
    :cond_2
    move v12, v6

    .line 2104
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 2105
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/waze/ifs/ui/WazeViewPager;->scrollTo(II)V

    .line 2106
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/waze/ifs/ui/WazeViewPager;->pageScrolled(I)Z

    .line 2108
    return v7

    .line 2096
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 2097
    if-eqz v10, :cond_5

    .line 2098
    sub-float v9, v12, v11

    .line 2099
    .restart local v9       #over:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/ifs/ui/WazeViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 2101
    .end local v9           #over:F
    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .parameter "width"
    .parameter "oldWidth"
    .parameter "margin"
    .parameter "oldMargin"

    .prologue
    .line 1476
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1477
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1478
    .local v12, widthWithMargin:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1480
    .local v7, oldWidthWithMargin:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v13

    .line 1481
    .local v13, xpos:I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1482
    .local v8, pageOffset:F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1484
    .local v1, newOffsetPixels:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/waze/ifs/ui/WazeViewPager;->scrollTo(II)V

    .line 1485
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1488
    .local v5, newDuration:I
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->infoForPosition(I)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v11

    .line 1489
    .local v11, targetInfo:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    .line 1490
    iget v3, v11, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    .line 1489
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1502
    .end local v1           #newOffsetPixels:I
    .end local v5           #newDuration:I
    .end local v7           #oldWidthWithMargin:I
    .end local v8           #pageOffset:F
    .end local v11           #targetInfo:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v12           #widthWithMargin:I
    .end local v13           #xpos:I
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->infoForPosition(I)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v6

    .line 1494
    .local v6, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    if-eqz v6, :cond_2

    iget v0, v6, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    iget v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1496
    .local v9, scrollOffset:F
    :goto_1
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 1495
    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1497
    .local v10, scrollPos:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    .line 1498
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->completeScroll(Z)V

    .line 1499
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/waze/ifs/ui/WazeViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1494
    .end local v9           #scrollOffset:F
    .end local v10           #scrollPos:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 461
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 469
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 463
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    .line 464
    .local v2, lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_1

    .line 465
    invoke-virtual {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->removeViewAt(I)V

    .line 466
    add-int/lit8 v1, v1, -0x1

    .line 461
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .parameter "disallowIntercept"

    .prologue
    .line 2058
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2059
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2060
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2062
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "velocity"
    .parameter "dispatchSelected"

    .prologue
    const/4 v7, 0x0

    .line 564
    invoke-virtual {p0, p1}, Lcom/waze/ifs/ui/WazeViewPager;->infoForPosition(I)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v0

    .line 565
    .local v0, curInfo:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 566
    .local v1, destX:I
    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v2

    .line 568
    .local v2, width:I
    int-to-float v3, v2

    iget v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstOffset:F

    .line 569
    iget v5, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 568
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 571
    .end local v2           #width:I
    :cond_0
    if-eqz p2, :cond_3

    .line 572
    invoke-virtual {p0, v1, v7, p3}, Lcom/waze/ifs/ui/WazeViewPager;->smoothScrollTo(III)V

    .line 573
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 574
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 576
    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 577
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 590
    :cond_2
    :goto_0
    return-void

    .line 580
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    if-eqz v3, :cond_4

    .line 581
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 583
    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 584
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 586
    :cond_5
    invoke-direct {p0, v7}, Lcom/waze/ifs/ui/WazeViewPager;->completeScroll(Z)V

    .line 587
    invoke-virtual {p0, v1, v7}, Lcom/waze/ifs/ui/WazeViewPager;->scrollTo(II)V

    .line 588
    invoke-direct {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 395
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iput p1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScrollState:I

    .line 400
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageTransformer:Lcom/waze/ifs/ui/WazeViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 402
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->enableLayers(Z)V

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 402
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2417
    iget-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2418
    iput-boolean p1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScrollingCacheEnabled:Z

    .line 2429
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1114
    iget v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDrawingOrder:I

    if-eqz v3, :cond_0

    .line 1115
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1120
    :goto_0
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v1

    .line 1121
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 1125
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/waze/ifs/ui/WazeViewPager;->sPositionComparator:Lcom/waze/ifs/ui/WazeViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1127
    .end local v1           #childCount:I
    .end local v2           #i:I
    :cond_0
    return-void

    .line 1118
    :cond_1
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1122
    .restart local v1       #childCount:I
    .restart local v2       #i:I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1123
    .local v0, child:Landroid/view/View;
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2634
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2636
    .local v2, focusableCount:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2638
    .local v1, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v1, v5, :cond_0

    .line 2639
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 2655
    .end local v3           #i:I
    :cond_0
    const/high16 v5, 0x4

    if-ne v1, v5, :cond_1

    .line 2657
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 2660
    :cond_1
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2671
    :cond_2
    :goto_1
    return-void

    .line 2640
    .restart local v3       #i:I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2641
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 2642
    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->infoForChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v4

    .line 2643
    .local v4, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    if-eqz v4, :cond_4

    iget v5, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    if-ne v5, v6, :cond_4

    .line 2644
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2639
    .end local v4           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2663
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_5
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 2664
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2667
    :cond_6
    if-eqz p1, :cond_2

    .line 2668
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .locals 2
    .parameter "position"
    .parameter "index"

    .prologue
    .line 837
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;-><init>()V

    .line 838
    .local v0, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iput p1, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    .line 839
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/waze/ifs/ui/WazePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 840
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v1, p1}, Lcom/waze/ifs/ui/WazePagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    .line 841
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 842
    :cond_0
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :goto_0
    return-object v0

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2681
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 2690
    return-void

    .line 2682
    :cond_0
    invoke-virtual {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2683
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2684
    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->infoForChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v2

    .line 2685
    .local v2, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    if-ne v3, v4, :cond_1

    .line 2686
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2681
    .end local v2           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1300
    invoke-virtual {p0, p3}, Lcom/waze/ifs/ui/WazeViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1301
    invoke-virtual {p0, p3}, Lcom/waze/ifs/ui/WazeViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1303
    check-cast v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    .line 1304
    .local v0, lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/waze/ifs/ui/WazeViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    .line 1305
    iget-boolean v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1306
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1307
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1309
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->needsMeasure:Z

    .line 1310
    invoke-virtual {p0, p1, p2, p3}, Lcom/waze/ifs/ui/WazeViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1322
    :goto_0
    return-void

    .line 1312
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .parameter "direction"

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2522
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2523
    .local v1, currentFocused:Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2524
    const/4 v1, 0x0

    .line 2548
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2550
    .local v2, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2552
    .local v4, nextFocused:Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2553
    if-ne p1, v11, :cond_8

    .line 2556
    iget-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/waze/ifs/ui/WazeViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2557
    .local v5, nextLeft:I
    iget-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/waze/ifs/ui/WazeViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2558
    .local v0, currLeft:I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2559
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->pageLeft()Z

    move-result v2

    .line 2581
    .end local v0           #currLeft:I
    .end local v5           #nextLeft:I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2582
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/waze/ifs/ui/WazeViewPager;->playSoundEffect(I)V

    .line 2584
    :cond_2
    return v2

    .line 2525
    .end local v2           #handled:Z
    .end local v4           #nextFocused:Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2526
    const/4 v3, 0x0

    .line 2527
    .local v3, isChild:Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, parent:Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-nez v8, :cond_4

    .line 2534
    :goto_3
    if-nez v3, :cond_0

    .line 2536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2537
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_4
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-nez v8, :cond_6

    .line 2542
    const-string v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2543
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2542
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    const/4 v1, 0x0

    goto :goto_0

    .line 2529
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_4
    if-ne v6, p0, :cond_5

    .line 2530
    const/4 v3, 0x1

    .line 2531
    goto :goto_3

    .line 2528
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2540
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    :cond_6
    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_4

    .line 2561
    .end local v3           #isChild:Z
    .end local v6           #parent:Landroid/view/ViewParent;
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .restart local v0       #currLeft:I
    .restart local v2       #handled:Z
    .restart local v4       #nextFocused:Landroid/view/View;
    .restart local v5       #nextLeft:I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 2563
    goto :goto_1

    .end local v0           #currLeft:I
    .end local v5           #nextLeft:I
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2566
    iget-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/waze/ifs/ui/WazeViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2567
    .restart local v5       #nextLeft:I
    iget-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/waze/ifs/ui/WazeViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2568
    .restart local v0       #currLeft:I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2569
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->pageRight()Z

    move-result v2

    .line 2570
    goto/16 :goto_1

    .line 2571
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 2574
    goto/16 :goto_1

    .end local v0           #currLeft:I
    .end local v5           #nextLeft:I
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2576
    :cond_b
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->pageLeft()Z

    move-result v2

    .line 2577
    goto/16 :goto_1

    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2579
    :cond_d
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2281
    iget-boolean v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2297
    :goto_0
    return v4

    .line 2284
    :cond_0
    iput-boolean v9, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFakeDragging:Z

    .line 2285
    invoke-direct {p0, v9}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollState(I)V

    .line 2286
    iput v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    iput v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionX:F

    .line 2287
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2288
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2292
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, time:J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2293
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2294
    .local v8, ev:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2295
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2296
    iput-wide v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 2297
    goto :goto_0

    .line 2290
    .end local v0           #time:J
    .end local v8           #ev:Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2459
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 2460
    check-cast v7, Landroid/view/ViewGroup;

    .line 2461
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2462
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2463
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2465
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-gez v8, :cond_1

    .line 2478
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_0
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2468
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_1
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2469
    .local v1, child:Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2470
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2471
    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    .line 2472
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2471
    invoke-virtual/range {v0 .. v5}, Lcom/waze/ifs/ui/WazeViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 2472
    if-eqz v0, :cond_2

    .line 2473
    const/4 v0, 0x1

    goto :goto_1

    .line 2465
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2478
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2432
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-nez v4, :cond_1

    .line 2443
    :cond_0
    :goto_0
    return v2

    .line 2436
    :cond_1
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v1

    .line 2437
    .local v1, width:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v0

    .line 2438
    .local v0, scrollX:I
    if-gez p1, :cond_2

    .line 2439
    int-to-float v4, v1

    iget v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 2440
    :cond_2
    if-lez p1, :cond_0

    .line 2441
    int-to-float v4, v1

    iget v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 2760
    instance-of v0, p1, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1615
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1616
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v0

    .line 1617
    .local v0, oldX:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollY()I

    move-result v1

    .line 1618
    .local v1, oldY:I
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1619
    .local v2, x:I
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1621
    .local v3, y:I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1622
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/waze/ifs/ui/WazeViewPager;->scrollTo(II)V

    .line 1623
    invoke-direct {p0, v2}, Lcom/waze/ifs/ui/WazeViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1624
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1625
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/waze/ifs/ui/WazeViewPager;->scrollTo(II)V

    .line 1630
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1636
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_0
    return-void

    .line 1635
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/waze/ifs/ui/WazeViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 852
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v12}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v0

    .line 853
    .local v0, adapterCount:I
    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mExpectedAdapterCount:I

    .line 854
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_2

    .line 855
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 854
    if-ge v12, v0, :cond_2

    move v7, v10

    .line 856
    .local v7, needPopulate:Z
    :goto_0
    iget v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    .line 858
    .local v8, newCurrItem:I
    const/4 v5, 0x0

    .line 859
    .local v5, isUpdating:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v3, v12, :cond_3

    .line 898
    if-eqz v5, :cond_0

    .line 899
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v12, p0}, Lcom/waze/ifs/ui/WazePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 902
    :cond_0
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Lcom/waze/ifs/ui/WazeViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 904
    if-eqz v7, :cond_1

    .line 906
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v2

    .line 907
    .local v2, childCount:I
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v2, :cond_9

    .line 915
    invoke-virtual {p0, v8, v11, v10}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItemInternal(IZZ)V

    .line 916
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->requestLayout()V

    .line 918
    .end local v2           #childCount:I
    :cond_1
    return-void

    .end local v3           #i:I
    .end local v5           #isUpdating:Z
    .end local v7           #needPopulate:Z
    .end local v8           #newCurrItem:I
    :cond_2
    move v7, v11

    .line 854
    goto :goto_0

    .line 860
    .restart local v3       #i:I
    .restart local v5       #isUpdating:Z
    .restart local v7       #needPopulate:Z
    .restart local v8       #newCurrItem:I
    :cond_3
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 861
    .local v4, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    iget-object v13, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lcom/waze/ifs/ui/WazePagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 863
    .local v9, newPos:I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_5

    .line 859
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 867
    :cond_5
    const/4 v12, -0x2

    if-ne v9, v12, :cond_7

    .line 868
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 869
    add-int/lit8 v3, v3, -0x1

    .line 871
    if-nez v5, :cond_6

    .line 872
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v12, p0}, Lcom/waze/ifs/ui/WazePagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 873
    const/4 v5, 0x1

    .line 876
    :cond_6
    iget-object v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    iget v13, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    iget-object v14, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Lcom/waze/ifs/ui/WazePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 877
    const/4 v7, 0x1

    .line 879
    iget v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    iget v13, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_4

    .line 881
    iget v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 882
    const/4 v7, 0x1

    .line 884
    goto :goto_3

    .line 887
    :cond_7
    iget v12, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-eq v12, v9, :cond_4

    .line 888
    iget v12, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    iget v13, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    if-ne v12, v13, :cond_8

    .line 890
    move v8, v9

    .line 893
    :cond_8
    iput v9, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    .line 894
    const/4 v7, 0x1

    goto :goto_3

    .line 908
    .end local v4           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v9           #newPos:I
    .restart local v2       #childCount:I
    :cond_9
    invoke-virtual {p0, v3}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 909
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    .line 910
    .local v6, lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    iget-boolean v12, v6, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_a

    .line 911
    const/4 v12, 0x0

    iput v12, v6, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->widthFactor:F

    .line 907
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2484
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/waze/ifs/ui/WazeViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 2728
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2729
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2745
    :goto_0
    return v4

    .line 2733
    :cond_0
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v1

    .line 2734
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 2745
    const/4 v4, 0x0

    goto :goto_0

    .line 2735
    :cond_1
    invoke-virtual {p0, v2}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2736
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2737
    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->infoForChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v3

    .line 2738
    .local v3, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    if-ne v4, v5, :cond_2

    .line 2739
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2740
    const/4 v4, 0x1

    goto :goto_0

    .line 2734
    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 773
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 774
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 775
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v6, 0x1

    .line 2179
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2180
    const/4 v1, 0x0

    .line 2182
    .local v1, needsInvalidate:Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    .line 2183
    .local v2, overScrollMode:I
    if-eqz v2, :cond_0

    .line 2184
    if-ne v2, v6, :cond_4

    .line 2185
    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v5}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2186
    :cond_0
    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2188
    .local v3, restoreCount:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2189
    .local v0, height:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getWidth()I

    move-result v4

    .line 2191
    .local v4, width:I
    const/high16 v5, 0x4387

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2192
    neg-int v5, v0

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2193
    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2194
    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2195
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2197
    .end local v0           #height:I
    .end local v3           #restoreCount:I
    .end local v4           #width:I
    :cond_1
    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2199
    .restart local v3       #restoreCount:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getWidth()I

    move-result v4

    .line 2200
    .restart local v4       #width:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2202
    .restart local v0       #height:I
    const/high16 v5, 0x42b4

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2203
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastOffset:F

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2204
    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2205
    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2206
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2213
    .end local v0           #height:I
    .end local v3           #restoreCount:I
    .end local v4           #width:I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2215
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2217
    :cond_3
    return-void

    .line 2209
    :cond_4
    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2210
    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 761
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 762
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 763
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 766
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2307
    iget-boolean v9, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2308
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2311
    :cond_0
    iget-object v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2312
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/waze/ifs/ui/WazeViewPager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2314
    iget v9, p0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    .line 2313
    invoke-static {v7, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v9

    float-to-int v2, v9

    .line 2315
    .local v2, initialVelocity:I
    iput-boolean v11, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPopulatePending:Z

    .line 2316
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v8

    .line 2317
    .local v8, width:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v5

    .line 2318
    .local v5, scrollX:I
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->infoForCurrentScrollPosition()Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v1

    .line 2319
    .local v1, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget v0, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    .line 2320
    .local v0, currentPage:I
    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    .line 2321
    .local v4, pageOffset:F
    iget v9, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    iget v10, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 2322
    .local v6, totalDelta:I
    invoke-direct {p0, v0, v4, v2, v6}, Lcom/waze/ifs/ui/WazeViewPager;->determineTargetPage(IFII)I

    move-result v3

    .line 2324
    .local v3, nextPage:I
    invoke-virtual {p0, v3, v11, v11, v2}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItemInternal(IZZI)V

    .line 2325
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->endDrag()V

    .line 2327
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFakeDragging:Z

    .line 2328
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 2496
    const/4 v0, 0x0

    .line 2497
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2498
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2518
    :cond_0
    :goto_0
    return v0

    .line 2500
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2501
    goto :goto_0

    .line 2503
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2504
    goto :goto_0

    .line 2506
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2509
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2510
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2511
    goto :goto_0

    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2512
    invoke-virtual {p0, v3}, Lcom/waze/ifs/ui/WazeViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2498
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 17
    .parameter "xOffset"

    .prologue
    .line 2338
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/waze/ifs/ui/WazeViewPager;->mFakeDragging:Z

    if-nez v1, :cond_0

    .line 2339
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2342
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 2344
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v1

    int-to-float v13, v1

    .line 2345
    .local v13, oldScrollX:F
    sub-float v15, v13, p1

    .line 2346
    .local v15, scrollX:F
    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v16

    .line 2348
    .local v16, width:I
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstOffset:F

    mul-float v12, v1, v2

    .line 2349
    .local v12, leftBound:F
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastOffset:F

    mul-float v14, v1, v2

    .line 2351
    .local v14, rightBound:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 2352
    .local v10, firstItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 2353
    .local v11, lastItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget v1, v10, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-eqz v1, :cond_1

    .line 2354
    iget v1, v10, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float v12, v1, v2

    .line 2356
    :cond_1
    iget v1, v11, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2357
    iget v1, v11, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float v14, v1, v2

    .line 2360
    :cond_2
    cmpg-float v1, v15, v12

    if-gez v1, :cond_4

    .line 2361
    move v15, v12

    .line 2366
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    float-to-int v2, v15

    int-to-float v2, v2

    sub-float v2, v15, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 2367
    float-to-int v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/waze/ifs/ui/WazeViewPager;->scrollTo(II)V

    .line 2368
    float-to-int v1, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->pageScrolled(I)Z

    .line 2371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2372
    .local v3, time:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/waze/ifs/ui/WazeViewPager;->mFakeDragBeginTime:J

    const/4 v5, 0x2

    .line 2373
    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2372
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2374
    .local v9, ev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2375
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 2376
    return-void

    .line 2362
    .end local v3           #time:J
    .end local v9           #ev:Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v1, v15, v14

    if-lez v1, :cond_3

    .line 2363
    move v15, v14

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2750
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2765
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 2755
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/waze/ifs/ui/WazePagerAdapter;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 649
    iget v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 650
    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    iget v1, v2, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->childIndex:I

    .line 651
    .local v1, result:I
    return v1

    .end local v0           #index:I
    .end local v1           #result:I
    :cond_0
    move v0, p2

    .line 649
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .locals 2
    .parameter "child"

    .prologue
    .line 1345
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-ne v0, p0, :cond_0

    .line 1351
    invoke-virtual {p0, p1}, Lcom/waze/ifs/ui/WazeViewPager;->infoForChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v1

    :goto_1
    return-object v1

    .line 1346
    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_2

    .line 1347
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 1349
    check-cast p1, Landroid/view/View;

    goto :goto_0
.end method

.method infoForChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .locals 4
    .parameter "child"

    .prologue
    .line 1334
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1340
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 1335
    :cond_1
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 1336
    .local v1, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    iget-object v3, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/waze/ifs/ui/WazePagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method infoForPosition(I)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 1355
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1361
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 1356
    :cond_1
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 1357
    .local v1, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget v2, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-eq v2, p1, :cond_0

    .line 1355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 361
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/waze/ifs/ui/WazeViewPager;->setWillNotDraw(Z)V

    .line 362
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/waze/ifs/ui/WazeViewPager;->setDescendantFocusability(I)V

    .line 363
    invoke-virtual {p0, v5}, Lcom/waze/ifs/ui/WazeViewPager;->setFocusable(Z)V

    .line 364
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 365
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/waze/ifs/ui/WazeViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    .line 366
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 367
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 369
    .local v2, density:F
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTouchSlop:I

    .line 370
    const/high16 v3, 0x43c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mMinimumVelocity:I

    .line 371
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mMaximumVelocity:I

    .line 372
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 373
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 375
    const/high16 v3, 0x41c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFlingDistance:I

    .line 376
    const/high16 v3, 0x4000

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCloseEnough:I

    .line 377
    const/high16 v3, 0x4180

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDefaultGutterSize:I

    .line 379
    new-instance v3, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;-><init>(Lcom/waze/ifs/ui/WazeViewPager;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 381
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 383
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 386
    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2388
    iget-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1366
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstLayout:Z

    .line 1368
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 391
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 392
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 2221
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2224
    move-object/from16 v0, p0

    iget v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-eqz v13, :cond_0

    .line 2225
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v10

    .line 2226
    .local v10, scrollX:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getWidth()I

    move-result v11

    .line 2228
    .local v11, width:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2229
    .local v7, marginOffset:F
    const/4 v5, 0x0

    .line 2230
    .local v5, itemIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 2231
    .local v3, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget v8, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    .line 2232
    .local v8, offset:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2233
    .local v4, itemCount:I
    iget v2, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    .line 2234
    .local v2, firstPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    iget v6, v13, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    .line 2235
    .local v6, lastPos:I
    move v9, v2

    .local v9, pos:I
    :goto_0
    if-lt v9, v6, :cond_2

    .line 2261
    .end local v2           #firstPos:I
    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v4           #itemCount:I
    .end local v5           #itemIndex:I
    .end local v6           #lastPos:I
    .end local v7           #marginOffset:F
    .end local v8           #offset:F
    .end local v9           #pos:I
    .end local v10           #scrollX:I
    .end local v11           #width:I
    :cond_0
    return-void

    .line 2237
    .restart local v2       #firstPos:I
    .restart local v3       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .restart local v4       #itemCount:I
    .restart local v5       #itemIndex:I
    .restart local v6       #lastPos:I
    .restart local v7       #marginOffset:F
    .restart local v8       #offset:F
    .restart local v9       #pos:I
    .restart local v10       #scrollX:I
    .restart local v11       #width:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    check-cast v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 2236
    .restart local v3       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_2
    iget v13, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_3

    if-lt v5, v4, :cond_1

    .line 2241
    :cond_3
    iget v13, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_5

    .line 2242
    iget v13, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2243
    .local v1, drawAt:F
    iget v13, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2250
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    .line 2251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mTopPageBounds:I

    .line 2252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f00

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    .line 2251
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2256
    :cond_4
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-gtz v13, :cond_0

    .line 2235
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2245
    .end local v1           #drawAt:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v13, v9}, Lcom/waze/ifs/ui/WazePagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2246
    .local v12, widthFactor:F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2247
    .restart local v1       #drawAt:F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 1795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1798
    .local v6, action:I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1801
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    .line 1802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsUnableToDrag:Z

    .line 1803
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    .line 1804
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1805
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1808
    :cond_1
    const/4 v0, 0x0

    .line 1928
    :goto_0
    return v0

    .line 1813
    :cond_2
    if-eqz v6, :cond_4

    .line 1814
    iget-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 1816
    const/4 v0, 0x1

    goto :goto_0

    .line 1818
    :cond_3
    iget-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_4

    .line 1820
    const/4 v0, 0x0

    goto :goto_0

    .line 1824
    :cond_4
    sparse-switch v6, :sswitch_data_0

    .line 1919
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1920
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1922
    :cond_6
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1928
    iget-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1835
    :sswitch_0
    iget v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    .line 1836
    .local v7, activePointerId:I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    .line 1841
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1842
    .local v9, pointerIndex:I
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1843
    .local v10, x:F
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1844
    .local v8, dx:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1845
    .local v11, xDiff:F
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1846
    .local v12, y:F
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1849
    .local v13, yDiff:F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/waze/ifs/ui/WazeViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1850
    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/waze/ifs/ui/WazeViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1852
    iput v10, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 1853
    iput v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionY:F

    .line 1854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsUnableToDrag:Z

    .line 1855
    const/4 v0, 0x0

    goto :goto_0

    .line 1857
    :cond_7
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f00

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_a

    .line 1859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    .line 1860
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1861
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollState(I)V

    .line 1862
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_9

    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 1864
    iput v12, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionY:F

    .line 1865
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollingCacheEnabled(Z)V

    .line 1874
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1876
    invoke-direct {p0, v10}, Lcom/waze/ifs/ui/WazeViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1877
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1863
    :cond_9
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1866
    :cond_a
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_8

    .line 1872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1888
    .end local v7           #activePointerId:I
    .end local v8           #dx:F
    .end local v9           #pointerIndex:I
    .end local v10           #x:F
    .end local v11           #xDiff:F
    .end local v12           #y:F
    .end local v13           #yDiff:F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 1889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionY:F

    .line 1890
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    .line 1891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsUnableToDrag:Z

    .line 1893
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1894
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1895
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    .line 1897
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPopulatePending:Z

    .line 1899
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->populate()V

    .line 1900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    .line 1901
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1902
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1904
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->completeScroll(Z)V

    .line 1905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1915
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/WazeViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1824
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1506
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v9

    .line 1507
    .local v9, count:I
    sub-int v24, p4, p2

    .line 1508
    .local v24, width:I
    sub-int v11, p5, p3

    .line 1509
    .local v11, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingLeft()I

    move-result v19

    .line 1510
    .local v19, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingTop()I

    move-result v21

    .line 1511
    .local v21, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingRight()I

    move-result v20

    .line 1512
    .local v20, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingBottom()I

    move-result v18

    .line 1513
    .local v18, paddingBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v22

    .line 1515
    .local v22, scrollX:I
    const/4 v10, 0x0

    .line 1519
    .local v10, decorCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-lt v14, v9, :cond_1

    .line 1571
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    .line 1573
    .local v8, childWidth:I
    const/4 v14, 0x0

    :goto_1
    if-lt v14, v9, :cond_3

    .line 1603
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mTopPageBounds:I

    .line 1604
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mBottomPageBounds:I

    .line 1605
    move-object/from16 v0, p0

    iput v10, v0, Lcom/waze/ifs/ui/WazeViewPager;->mDecorChildCount:I

    .line 1607
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1608
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/waze/ifs/ui/WazeViewPager;->scrollToItem(IZIZ)V

    .line 1610
    :cond_0
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mFirstLayout:Z

    .line 1611
    return-void

    .line 1520
    .end local v8           #childWidth:I
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1521
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 1522
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    .line 1523
    .local v17, lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    const/4 v6, 0x0

    .line 1524
    .local v6, childLeft:I
    const/4 v7, 0x0

    .line 1525
    .local v7, childTop:I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1526
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1527
    .local v13, hgrav:I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1528
    .local v23, vgrav:I
    packed-switch v13, :pswitch_data_0

    .line 1530
    :pswitch_0
    move/from16 v6, v19

    .line 1545
    :goto_2
    sparse-switch v23, :sswitch_data_0

    .line 1547
    move/from16 v7, v21

    .line 1562
    :goto_3
    add-int v6, v6, v22

    .line 1564
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1565
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1563
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1566
    add-int/lit8 v10, v10, 0x1

    .line 1519
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v13           #hgrav:I
    .end local v17           #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    .end local v23           #vgrav:I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1533
    .restart local v6       #childLeft:I
    .restart local v7       #childTop:I
    .restart local v13       #hgrav:I
    .restart local v17       #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    .restart local v23       #vgrav:I
    :pswitch_1
    move/from16 v6, v19

    .line 1534
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1535
    goto :goto_2

    .line 1537
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1539
    goto :goto_2

    .line 1541
    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    .line 1542
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_2

    .line 1550
    :sswitch_0
    move/from16 v7, v21

    .line 1551
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1552
    goto :goto_3

    .line 1554
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1556
    goto :goto_3

    .line 1558
    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1559
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_3

    .line 1574
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v13           #hgrav:I
    .end local v17           #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    .end local v23           #vgrav:I
    .restart local v8       #childWidth:I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1575
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 1576
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    .line 1578
    .restart local v17       #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/waze/ifs/ui/WazeViewPager;->infoForChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v15

    .local v15, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    if-eqz v15, :cond_5

    .line 1579
    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1580
    .local v16, loff:I
    add-int v6, v19, v16

    .line 1581
    .restart local v6       #childLeft:I
    move/from16 v7, v21

    .line 1582
    .restart local v7       #childTop:I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1585
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->needsMeasure:Z

    .line 1587
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1588
    const/high16 v27, 0x4000

    .line 1586
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1590
    .local v25, widthSpec:I
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    .line 1591
    const/high16 v27, 0x4000

    .line 1589
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1592
    .local v12, heightSpec:I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1598
    .end local v12           #heightSpec:I
    .end local v25           #widthSpec:I
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1599
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1597
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1573
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v15           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v16           #loff:I
    .end local v17           #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1528
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1545
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1377
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->getDefaultSize(II)I

    move-result v21

    .line 1378
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->getDefaultSize(II)I

    move-result v22

    .line 1377
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/waze/ifs/ui/WazeViewPager;->setMeasuredDimension(II)V

    .line 1380
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1381
    .local v15, measuredWidth:I
    div-int/lit8 v14, v15, 0xa

    .line 1382
    .local v14, maxGutterSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mGutterSize:I

    .line 1385
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1386
    .local v5, childWidthSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1393
    .local v4, childHeightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v16

    .line 1394
    .local v16, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v16

    if-lt v12, v0, :cond_0

    .line 1439
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mChildWidthMeasureSpec:I

    .line 1440
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mChildHeightMeasureSpec:I

    .line 1443
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mInLayout:Z

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->populate()V

    .line 1445
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mInLayout:Z

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v16

    .line 1449
    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v16

    if-lt v12, v0, :cond_9

    .line 1463
    return-void

    .line 1395
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1396
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1397
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    .line 1398
    .local v13, lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    if-eqz v13, :cond_4

    iget-boolean v0, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 1399
    iget v0, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1400
    .local v11, hgrav:I
    iget v0, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1401
    .local v17, vgrav:I
    const/high16 v18, -0x8000

    .line 1402
    .local v18, widthMode:I
    const/high16 v8, -0x8000

    .line 1403
    .local v8, heightMode:I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    const/4 v7, 0x0

    .line 1404
    .local v7, consumeVertical:Z
    :goto_2
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_6

    const/16 v21, 0x5

    move/from16 v0, v21

    if-eq v11, v0, :cond_6

    const/4 v6, 0x0

    .line 1406
    .local v6, consumeHorizontal:Z
    :goto_3
    if-eqz v7, :cond_7

    .line 1407
    const/high16 v18, 0x4000

    .line 1412
    :cond_1
    :goto_4
    move/from16 v19, v5

    .line 1413
    .local v19, widthSize:I
    move v9, v4

    .line 1414
    .local v9, heightSize:I
    iget v0, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1415
    const/high16 v18, 0x4000

    .line 1416
    iget v0, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1417
    iget v0, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1420
    :cond_2
    iget v0, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1421
    const/high16 v8, 0x4000

    .line 1422
    iget v0, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1423
    iget v9, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->height:I

    .line 1426
    :cond_3
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1427
    .local v20, widthSpec:I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1428
    .local v10, heightSpec:I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1430
    if-eqz v7, :cond_8

    .line 1431
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1394
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v11           #hgrav:I
    .end local v13           #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    .end local v17           #vgrav:I
    .end local v18           #widthMode:I
    .end local v19           #widthSize:I
    .end local v20           #widthSpec:I
    :cond_4
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1403
    .restart local v8       #heightMode:I
    .restart local v11       #hgrav:I
    .restart local v13       #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    .restart local v17       #vgrav:I
    .restart local v18       #widthMode:I
    :cond_5
    const/4 v7, 0x1

    goto :goto_2

    .line 1404
    .restart local v7       #consumeVertical:Z
    :cond_6
    const/4 v6, 0x1

    goto :goto_3

    .line 1408
    .restart local v6       #consumeHorizontal:Z
    :cond_7
    if-eqz v6, :cond_1

    .line 1409
    const/high16 v8, 0x4000

    goto :goto_4

    .line 1432
    .restart local v9       #heightSize:I
    .restart local v10       #heightSpec:I
    .restart local v19       #widthSize:I
    .restart local v20       #widthSpec:I
    :cond_8
    if-eqz v6, :cond_4

    .line 1433
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_5

    .line 1450
    .end local v3           #child:Landroid/view/View;
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v11           #hgrav:I
    .end local v13           #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    .end local v17           #vgrav:I
    .end local v18           #widthMode:I
    .end local v19           #widthSize:I
    .end local v20           #widthSpec:I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1451
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 1455
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    .line 1456
    .restart local v13       #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    if-eqz v13, :cond_a

    iget-boolean v0, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 1458
    :cond_a
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    .line 1457
    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1459
    .restart local v20       #widthSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1449
    .end local v13           #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    .end local v20           #widthSpec:I
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .parameter "position"
    .parameter "offset"
    .parameter "offsetPixels"

    .prologue
    .line 1680
    move-object/from16 v0, p0

    iget v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mDecorChildCount:I

    if-lez v15, :cond_0

    .line 1681
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v12

    .line 1682
    .local v12, scrollX:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingLeft()I

    move-result v10

    .line 1683
    .local v10, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingRight()I

    move-result v11

    .line 1684
    .local v11, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getWidth()I

    move-result v14

    .line 1685
    .local v14, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v4

    .line 1686
    .local v4, childCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-lt v8, v4, :cond_4

    .line 1719
    .end local v4           #childCount:I
    .end local v8           #i:I
    .end local v10           #paddingLeft:I
    .end local v11           #paddingRight:I
    .end local v12           #scrollX:I
    .end local v14           #width:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    if-eqz v15, :cond_1

    .line 1720
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1722
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    if-eqz v15, :cond_2

    .line 1723
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1726
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mPageTransformer:Lcom/waze/ifs/ui/WazeViewPager$PageTransformer;

    if-eqz v15, :cond_3

    .line 1727
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v12

    .line 1728
    .restart local v12       #scrollX:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v4

    .line 1729
    .restart local v4       #childCount:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1
    if-lt v8, v4, :cond_7

    .line 1740
    .end local v4           #childCount:I
    .end local v8           #i:I
    .end local v12           #scrollX:I
    :cond_3
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCalledSuper:Z

    .line 1741
    return-void

    .line 1687
    .restart local v4       #childCount:I
    .restart local v8       #i:I
    .restart local v10       #paddingLeft:I
    .restart local v11       #paddingRight:I
    .restart local v12       #scrollX:I
    .restart local v14       #width:I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1688
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    .line 1689
    .local v9, lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_6

    .line 1686
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1691
    :cond_6
    iget v15, v9, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v15, 0x7

    .line 1692
    .local v7, hgrav:I
    const/4 v5, 0x0

    .line 1693
    .local v5, childLeft:I
    packed-switch v7, :pswitch_data_0

    .line 1695
    :pswitch_0
    move v5, v10

    .line 1710
    :goto_3
    add-int/2addr v5, v12

    .line 1712
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .line 1713
    .local v6, childOffset:I
    if-eqz v6, :cond_5

    .line 1714
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2

    .line 1698
    .end local v6           #childOffset:I
    :pswitch_1
    move v5, v10

    .line 1699
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    .line 1700
    goto :goto_3

    .line 1702
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1704
    goto :goto_3

    .line 1706
    :pswitch_3
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    .line 1707
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_3

    .line 1730
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childLeft:I
    .end local v7           #hgrav:I
    .end local v9           #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    .end local v10           #paddingLeft:I
    .end local v11           #paddingRight:I
    .end local v14           #width:I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1731
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    .line 1733
    .restart local v9       #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_8

    .line 1729
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1735
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1736
    .local v13, transformPos:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/ifs/ui/WazeViewPager;->mPageTransformer:Lcom/waze/ifs/ui/WazeViewPager$PageTransformer;

    invoke-interface {v15, v3, v13}, Lcom/waze/ifs/ui/WazeViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1693
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2701
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v1

    .line 2702
    .local v1, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2703
    const/4 v6, 0x0

    .line 2704
    .local v6, index:I
    const/4 v5, 0x1

    .line 2705
    .local v5, increment:I
    move v2, v1

    .line 2711
    .local v2, end:I
    :goto_0
    move v3, v6

    .local v3, i:I
    :goto_1
    if-ne v3, v2, :cond_1

    .line 2722
    const/4 v7, 0x0

    :goto_2
    return v7

    .line 2707
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2708
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 2709
    .restart local v5       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 2712
    .restart local v3       #i:I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2713
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 2714
    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->infoForChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v4

    .line 2715
    .local v4, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    if-eqz v4, :cond_2

    iget v7, v4, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    if-ne v7, v8, :cond_2

    .line 2716
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2717
    const/4 v7, 0x1

    goto :goto_2

    .line 2711
    .end local v4           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_2
    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1280
    instance-of v1, p1, Lcom/waze/ifs/ui/WazeViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1281
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1296
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1285
    check-cast v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;

    .line 1286
    .local v0, ss:Lcom/waze/ifs/ui/WazeViewPager$SavedState;
    invoke-virtual {v0}, Lcom/waze/ifs/ui/WazeViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1288
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-eqz v1, :cond_1

    .line 1289
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    iget-object v2, v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/waze/ifs/ui/WazePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1290
    iget v1, v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1292
    :cond_1
    iget v1, v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;->position:I

    iput v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredCurItem:I

    .line 1293
    iget-object v1, v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1294
    iget-object v1, v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1269
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1270
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1271
    .local v0, ss:Lcom/waze/ifs/ui/WazeViewPager$SavedState;
    iget v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    iput v2, v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;->position:I

    .line 1272
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-eqz v2, :cond_0

    .line 1273
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/WazePagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/waze/ifs/ui/WazeViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1275
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1467
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1470
    if-eq p1, p3, :cond_0

    .line 1471
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    iget v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->recomputeScrollPosition(IIII)V

    .line 1473
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "ev"

    .prologue
    .line 1933
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mFakeDragging:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1937
    const/16 v24, 0x1

    .line 2054
    :goto_0
    return v24

    .line 1940
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_1

    .line 1943
    const/16 v24, 0x0

    goto :goto_0

    .line 1946
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_3

    .line 1948
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 1951
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    .line 1952
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1954
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1956
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1957
    .local v5, action:I
    const/4 v11, 0x0

    .line 1959
    .local v11, needsInvalidate:Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2051
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_6

    .line 2052
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2054
    :cond_6
    const/16 v24, 0x1

    goto :goto_0

    .line 1961
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1962
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mPopulatePending:Z

    .line 1963
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->populate()V

    .line 1966
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 1967
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionY:F

    .line 1968
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1972
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 1973
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1974
    .local v15, pointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1975
    .local v20, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1976
    .local v21, xDiff:F
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1977
    .local v22, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1979
    .local v23, yDiff:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_7

    cmpl-float v24, v21, v23

    if-lez v24, :cond_7

    .line 1981
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    .line 1982
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1983
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 1985
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionY:F

    .line 1986
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollState(I)V

    .line 1987
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollingCacheEnabled(Z)V

    .line 1990
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 1991
    .local v14, parent:Landroid/view/ViewParent;
    if-eqz v14, :cond_7

    .line 1992
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1997
    .end local v14           #parent:Landroid/view/ViewParent;
    .end local v15           #pointerIndex:I
    .end local v20           #x:F
    .end local v21           #xDiff:F
    .end local v22           #y:F
    .end local v23           #yDiff:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 2000
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    move/from16 v24, v0

    .line 1999
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 2001
    .local v6, activePointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2002
    .restart local v20       #x:F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->performDrag(F)Z

    move-result v24

    or-int v11, v11, v24

    .line 2004
    goto/16 :goto_1

    .line 1984
    .end local v6           #activePointerIndex:I
    .restart local v15       #pointerIndex:I
    .restart local v21       #xDiff:F
    .restart local v22       #y:F
    .restart local v23       #yDiff:F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_2

    .line 2006
    .end local v15           #pointerIndex:I
    .end local v20           #x:F
    .end local v21           #xDiff:F
    .end local v22           #y:F
    .end local v23           #yDiff:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 2008
    .local v18, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2010
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    move/from16 v24, v0

    .line 2009
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 2011
    .local v10, initialVelocity:I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mPopulatePending:Z

    .line 2012
    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v19

    .line 2013
    .local v19, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v16

    .line 2014
    .local v16, scrollX:I
    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->infoForCurrentScrollPosition()Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v8

    .line 2015
    .local v8, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget v7, v8, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    .line 2016
    .local v7, currentPage:I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v8, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->offset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v8, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 2018
    .local v13, pageOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 2019
    .restart local v6       #activePointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2020
    .restart local v20       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2021
    .local v17, totalDelta:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v13, v10, v1}, Lcom/waze/ifs/ui/WazeViewPager;->determineTargetPage(IFII)I

    move-result v12

    .line 2023
    .local v12, nextPage:I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItemInternal(IZZI)V

    .line 2025
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    .line 2026
    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->endDrag()V

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v25

    or-int v11, v24, v25

    .line 2029
    goto/16 :goto_1

    .line 2031
    .end local v6           #activePointerIndex:I
    .end local v7           #currentPage:I
    .end local v8           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v10           #initialVelocity:I
    .end local v12           #nextPage:I
    .end local v13           #pageOffset:F
    .end local v16           #scrollX:I
    .end local v17           #totalDelta:I
    .end local v18           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v19           #width:I
    .end local v20           #x:F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 2032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/waze/ifs/ui/WazeViewPager;->scrollToItem(IZIZ)V

    .line 2033
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    .line 2034
    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->endDrag()V

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v25

    or-int v11, v24, v25

    .line 2037
    goto/16 :goto_1

    .line 2039
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v9

    .line 2040
    .local v9, index:I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2041
    .restart local v20       #x:F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    .line 2042
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2046
    .end local v9           #index:I
    .end local v20           #x:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/waze/ifs/ui/WazeViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2048
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v24

    .line 2047
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2614
    iget v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2615
    iget v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItem(IZ)V

    .line 2618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2622
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2623
    iget v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItem(IZ)V

    .line 2626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 921
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->populate(I)V

    .line 922
    return-void
.end method

.method populate(I)V
    .locals 30
    .parameter "newCurrentItem"

    .prologue
    .line 925
    const/16 v21, 0x0

    .line 926
    .local v21, oldCurInfo:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    const/4 v15, 0x2

    .line 927
    .local v15, focusDirection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 928
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v15, 0x42

    .line 929
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->infoForPosition(I)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v21

    .line 930
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    .line 933
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->sortChildDrawingOrder()V

    .line 1111
    :cond_1
    :goto_1
    return-void

    .line 928
    :cond_2
    const/16 v15, 0x11

    goto :goto_0

    .line 942
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->sortChildDrawingOrder()V

    goto :goto_1

    .line 951
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/WazePagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mOffscreenPageLimit:I

    move/from16 v22, v0

    .line 958
    .local v22, pageLimit:I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 959
    .local v26, startPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v4

    .line 960
    .local v4, N:I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 962
    .local v12, endPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    .line 965
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 969
    .local v24, resName:Ljava/lang/String;
    :goto_2
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "The application\'s WazePagerAdapter changed the adapter\'s contents without calling WazePagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 972
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mExpectedAdapterCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 973
    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 974
    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 975
    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 969
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 966
    .end local v24           #resName:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 967
    .local v11, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #resName:Ljava/lang/String;
    goto :goto_2

    .line 979
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v24           #resName:Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    .line 980
    .local v8, curIndex:I
    const/4 v9, 0x0

    .line 981
    .local v9, curItem:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-lt v8, v0, :cond_d

    .line 989
    :cond_6
    :goto_4
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    .line 990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/waze/ifs/ui/WazeViewPager;->addNewItem(II)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v9

    .line 996
    :cond_7
    if-eqz v9, :cond_a

    .line 997
    const/4 v13, 0x0

    .line 998
    .local v13, extraWidthLeft:F
    add-int/lit8 v18, v8, -0x1

    .line 999
    .local v18, itemIndex:I
    if-ltz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1000
    .local v17, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v7

    .line 1001
    .local v7, clientWidth:I
    if-gtz v7, :cond_10

    const/16 v19, 0x0

    .line 1003
    .local v19, leftWidthNeeded:F
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, pos:I
    :goto_7
    if-gez v23, :cond_11

    .line 1031
    :cond_8
    iget v14, v9, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    .line 1032
    .local v14, extraWidthRight:F
    add-int/lit8 v18, v8, 0x1

    .line 1033
    const/high16 v27, 0x4000

    cmpg-float v27, v14, v27

    if-gez v27, :cond_9

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1035
    :goto_8
    if-gtz v7, :cond_19

    const/16 v25, 0x0

    .line 1037
    .local v25, rightWidthNeeded:F
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_a
    move/from16 v0, v23

    if-lt v0, v4, :cond_1a

    .line 1064
    .end local v25           #rightWidthNeeded:F
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, Lcom/waze/ifs/ui/WazeViewPager;->calculatePageOffsets(Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;ILcom/waze/ifs/ui/WazeViewPager$ItemInfo;)V

    .line 1074
    .end local v7           #clientWidth:I
    .end local v13           #extraWidthLeft:F
    .end local v14           #extraWidthRight:F
    .end local v17           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v18           #itemIndex:I
    .end local v19           #leftWidthNeeded:F
    .end local v23           #pos:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v29, v0

    if-eqz v9, :cond_21

    iget-object v0, v9, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_b
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/ifs/ui/WazePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/WazePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v6

    .line 1081
    .local v6, childCount:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_c
    move/from16 v0, v16

    if-lt v0, v6, :cond_22

    .line 1094
    invoke-direct/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->sortChildDrawingOrder()V

    .line 1096
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1098
    .local v10, currentFocused:Landroid/view/View;
    if-eqz v10, :cond_24

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/waze/ifs/ui/WazeViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v17

    .line 1099
    .restart local v17       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :goto_d
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1100
    :cond_b
    const/16 v16, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 1101
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1102
    .local v5, child:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/waze/ifs/ui/WazeViewPager;->infoForChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v17

    .line 1103
    if-eqz v17, :cond_c

    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 1104
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-nez v27, :cond_1

    .line 1100
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 982
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childCount:I
    .end local v10           #currentFocused:Landroid/view/View;
    .end local v16           #i:I
    .end local v17           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 983
    .restart local v17       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_e

    .line 984
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v17

    .line 985
    goto/16 :goto_4

    .line 981
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 999
    .end local v17           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .restart local v13       #extraWidthLeft:F
    .restart local v18       #itemIndex:I
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 1002
    .restart local v7       #clientWidth:I
    .restart local v17       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_10
    const/high16 v27, 0x4000

    iget v0, v9, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    goto/16 :goto_6

    .line 1004
    .restart local v19       #leftWidthNeeded:F
    .restart local v23       #pos:I
    :cond_11
    cmpl-float v27, v13, v19

    if-ltz v27, :cond_14

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    .line 1005
    if-eqz v17, :cond_8

    .line 1008
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_12

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/ifs/ui/WazePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1015
    add-int/lit8 v18, v18, -0x1

    .line 1016
    add-int/lit8 v8, v8, -0x1

    .line 1017
    if-ltz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1003
    :cond_12
    :goto_f
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_7

    .line 1017
    :cond_13
    const/16 v17, 0x0

    goto :goto_f

    .line 1019
    :cond_14
    if-eqz v17, :cond_16

    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 1020
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1021
    add-int/lit8 v18, v18, -0x1

    .line 1022
    if-ltz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1023
    :goto_10
    goto :goto_f

    .line 1022
    :cond_15
    const/16 v17, 0x0

    goto :goto_10

    .line 1024
    :cond_16
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/waze/ifs/ui/WazeViewPager;->addNewItem(II)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v17

    .line 1025
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1026
    add-int/lit8 v8, v8, 0x1

    .line 1027
    if-ltz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_11
    goto :goto_f

    :cond_17
    const/16 v17, 0x0

    goto :goto_11

    .line 1034
    .restart local v14       #extraWidthRight:F
    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 1036
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/waze/ifs/ui/WazeViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x4000

    add-float v25, v27, v28

    goto/16 :goto_9

    .line 1038
    .restart local v25       #rightWidthNeeded:F
    :cond_1a
    cmpl-float v27, v14, v25

    if-ltz v27, :cond_1d

    move/from16 v0, v23

    if-le v0, v12, :cond_1d

    .line 1039
    if-eqz v17, :cond_9

    .line 1042
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_1b

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/ifs/ui/WazePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1037
    :cond_1b
    :goto_12
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_a

    .line 1049
    :cond_1c
    const/16 v17, 0x0

    goto :goto_12

    .line 1051
    :cond_1d
    if-eqz v17, :cond_1f

    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    .line 1052
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1053
    add-int/lit8 v18, v18, 0x1

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1055
    :goto_13
    goto :goto_12

    .line 1054
    :cond_1e
    const/16 v17, 0x0

    goto :goto_13

    .line 1056
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/waze/ifs/ui/WazeViewPager;->addNewItem(II)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v17

    .line 1057
    add-int/lit8 v18, v18, 0x1

    .line 1058
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_14
    goto :goto_12

    :cond_20
    const/16 v17, 0x0

    goto :goto_14

    .line 1074
    .end local v7           #clientWidth:I
    .end local v13           #extraWidthLeft:F
    .end local v14           #extraWidthRight:F
    .end local v17           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .end local v18           #itemIndex:I
    .end local v19           #leftWidthNeeded:F
    .end local v23           #pos:I
    .end local v25           #rightWidthNeeded:F
    :cond_21
    const/16 v27, 0x0

    goto/16 :goto_b

    .line 1082
    .restart local v6       #childCount:I
    .restart local v16       #i:I
    :cond_22
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1083
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;

    .line 1084
    .local v20, lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->childIndex:I

    .line 1085
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_23

    move-object/from16 v0, v20

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_23

    .line 1087
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/waze/ifs/ui/WazeViewPager;->infoForChild(Landroid/view/View;)Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    move-result-object v17

    .line 1088
    .restart local v17       #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    if-eqz v17, :cond_23

    .line 1089
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->widthFactor:F

    .line 1090
    move-object/from16 v0, v17

    iget v0, v0, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;->position:I

    .line 1081
    .end local v17           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    :cond_23
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_c

    .line 1098
    .end local v5           #child:Landroid/view/View;
    .end local v20           #lp:Lcom/waze/ifs/ui/WazeViewPager$LayoutParams;
    .restart local v10       #currentFocused:Landroid/view/View;
    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_d
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1326
    iget-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {p0, p1}, Lcom/waze/ifs/ui/WazeViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1331
    :goto_0
    return-void

    .line 1329
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/waze/ifs/ui/WazePagerAdapter;)V
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 415
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-eqz v4, :cond_0

    .line 416
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mObserver:Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/waze/ifs/ui/WazePagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 417
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v4, p0}, Lcom/waze/ifs/ui/WazePagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 418
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 422
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v4, p0}, Lcom/waze/ifs/ui/WazePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 423
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 424
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->removeNonDecorViews()V

    .line 425
    iput v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    .line 426
    invoke-virtual {p0, v7, v7}, Lcom/waze/ifs/ui/WazeViewPager;->scrollTo(II)V

    .line 429
    .end local v0           #i:I
    :cond_0
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    .line 430
    .local v2, oldAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;
    iput-object p1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    .line 431
    iput v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mExpectedAdapterCount:I

    .line 433
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-eqz v4, :cond_2

    .line 434
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mObserver:Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;

    if-nez v4, :cond_1

    .line 435
    new-instance v4, Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;

    invoke-direct {v4, p0, v8}, Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;-><init>(Lcom/waze/ifs/ui/WazeViewPager;Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;)V

    iput-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mObserver:Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;

    .line 437
    :cond_1
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mObserver:Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/waze/ifs/ui/WazePagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 438
    iput-boolean v7, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPopulatePending:Z

    .line 439
    iget-boolean v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstLayout:Z

    .line 440
    .local v3, wasFirstLayout:Z
    iput-boolean v9, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstLayout:Z

    .line 441
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mExpectedAdapterCount:I

    .line 442
    iget v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 443
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    iget-object v5, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Lcom/waze/ifs/ui/WazePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 444
    iget v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItemInternal(IZZ)V

    .line 445
    const/4 v4, -0x1

    iput v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredCurItem:I

    .line 446
    iput-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 447
    iput-object v8, p0, Lcom/waze/ifs/ui/WazeViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 455
    .end local v3           #wasFirstLayout:Z
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapterChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnAdapterChangeListener;

    if-eqz v4, :cond_3

    if-eq v2, p1, :cond_3

    .line 456
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapterChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Lcom/waze/ifs/ui/WazeViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/waze/ifs/ui/WazePagerAdapter;Lcom/waze/ifs/ui/WazePagerAdapter;)V

    .line 458
    :cond_3
    return-void

    .line 419
    .end local v2           #oldAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;
    .restart local v0       #i:I
    :cond_4
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    .line 420
    .local v1, ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    iget v5, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->position:I

    iget-object v6, v1, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Lcom/waze/ifs/ui/WazePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    .end local v0           #i:I
    .end local v1           #ii:Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;
    .restart local v2       #oldAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;
    .restart local v3       #wasFirstLayout:Z
    :cond_5
    if-nez v3, :cond_6

    .line 449
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->populate()V

    goto :goto_1

    .line 451
    :cond_6
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 630
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 631
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 633
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    .line 634
    const-string v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 633
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 645
    :cond_1
    :goto_1
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 641
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 642
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 496
    iput-boolean v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPopulatePending:Z

    .line 497
    iget-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItemInternal(IZZ)V

    .line 498
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    const/4 v0, 0x0

    .line 507
    iput-boolean v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPopulatePending:Z

    .line 508
    invoke-virtual {p0, p1, p2, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItemInternal(IZZ)V

    .line 509
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItemInternal(IZZI)V

    .line 517
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"
    .parameter "velocity"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 520
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 521
    :cond_0
    invoke-direct {p0, v4}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollingCacheEnabled(Z)V

    .line 560
    :goto_0
    return-void

    .line 524
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 525
    invoke-direct {p0, v4}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 529
    :cond_2
    if-gez p1, :cond_8

    .line 530
    const/4 p1, 0x0

    .line 534
    :cond_3
    :goto_1
    iget v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOffscreenPageLimit:I

    .line 535
    .local v2, pageLimit:I
    iget v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_5

    .line 539
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_9

    .line 543
    .end local v1           #i:I
    :cond_5
    iget v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    if-eq v3, p1, :cond_a

    .line 545
    .local v0, dispatchSelected:Z
    :goto_3
    iget-boolean v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_b

    .line 548
    iput p1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    .line 549
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    if-eqz v3, :cond_6

    .line 550
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 552
    :cond_6
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    if-eqz v3, :cond_7

    .line 553
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 555
    :cond_7
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->requestLayout()V

    goto :goto_0

    .line 531
    .end local v0           #dispatchSelected:Z
    .end local v2           #pageLimit:I
    :cond_8
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 532
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 540
    .restart local v1       #i:I
    .restart local v2       #pageLimit:I
    :cond_9
    iget-object v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;

    iput-boolean v0, v3, Lcom/waze/ifs/ui/WazeViewPager$ItemInfo;->scrolling:Z

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    :cond_a
    move v0, v4

    .line 543
    goto :goto_3

    .line 557
    .restart local v0       #dispatchSelected:Z
    :cond_b
    invoke-virtual {p0, p1}, Lcom/waze/ifs/ui/WazeViewPager;->populate(I)V

    .line 558
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/waze/ifs/ui/WazeViewPager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method setInternalPageChangeListener(Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;)Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    .line 662
    .local v0, oldListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mInternalPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    .line 663
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .parameter "limit"

    .prologue
    const/4 v3, 0x1

    .line 695
    if-ge p1, v3, :cond_0

    .line 696
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 697
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 p1, 0x1

    .line 700
    :cond_0
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 701
    iput p1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOffscreenPageLimit:I

    .line 702
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->populate()V

    .line 704
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/waze/ifs/ui/WazeViewPager$OnAdapterChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapterChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnAdapterChangeListener;

    .line 482
    return-void
.end method

.method public setOnPageChangeListener(Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mOnPageChangeListener:Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;

    .line 600
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .parameter "marginPixels"

    .prologue
    .line 715
    iget v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    .line 716
    .local v0, oldMargin:I
    iput p1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    .line 718
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getWidth()I

    move-result v1

    .line 719
    .local v1, width:I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/waze/ifs/ui/WazeViewPager;->recomputeScrollPosition(IIII)V

    .line 721
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->requestLayout()V

    .line 722
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 752
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 739
    iput-object p1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 740
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->refreshDrawableState()V

    .line 741
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setWillNotDraw(Z)V

    .line 742
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->invalidate()V

    .line 743
    return-void

    .line 741
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/waze/ifs/ui/WazeViewPager$PageTransformer;)V
    .locals 5
    .parameter "reverseDrawingOrder"
    .parameter "transformer"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 616
    if-eqz p2, :cond_2

    move v0, v2

    .line 617
    .local v0, hasTransformer:Z
    :goto_0
    iget-object v4, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageTransformer:Lcom/waze/ifs/ui/WazeViewPager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    xor-int v1, v0, v4

    .line 618
    .local v1, needsPopulate:Z
    iput-object p2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageTransformer:Lcom/waze/ifs/ui/WazeViewPager$PageTransformer;

    .line 619
    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 620
    if-eqz v0, :cond_4

    .line 621
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDrawingOrder:I

    .line 625
    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->populate()V

    .line 627
    :cond_1
    return-void

    .end local v0           #hasTransformer:Z
    .end local v1           #needsPopulate:Z
    :cond_2
    move v0, v3

    .line 616
    goto :goto_0

    .restart local v0       #hasTransformer:Z
    :cond_3
    move v4, v3

    .line 617
    goto :goto_1

    .line 623
    .restart local v1       #needsPopulate:Z
    :cond_4
    iput v3, p0, Lcom/waze/ifs/ui/WazeViewPager;->mDrawingOrder:I

    goto :goto_2
.end method

.method smoothScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/waze/ifs/ui/WazeViewPager;->smoothScrollTo(III)V

    .line 786
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "velocity"

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 798
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollingCacheEnabled(Z)V

    .line 834
    :goto_0
    return-void

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollX()I

    move-result v2

    .line 802
    .local v2, sx:I
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getScrollY()I

    move-result v3

    .line 803
    .local v3, sy:I
    sub-int v4, p1, v2

    .line 804
    .local v4, dx:I
    sub-int v5, p2, v3

    .line 805
    .local v5, dy:I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 806
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->completeScroll(Z)V

    .line 807
    invoke-virtual {p0}, Lcom/waze/ifs/ui/WazeViewPager;->populate()V

    .line 808
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollState(I)V

    goto :goto_0

    .line 812
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollingCacheEnabled(Z)V

    .line 813
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->setScrollState(I)V

    .line 815
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager;->getClientWidth()I

    move-result v12

    .line 816
    .local v12, width:I
    div-int/lit8 v9, v12, 0x2

    .line 817
    .local v9, halfWidth:I
    const/high16 v1, 0x3f80

    const/high16 v13, 0x3f80

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 818
    .local v8, distanceRatio:F
    int-to-float v1, v9

    int-to-float v13, v9

    .line 819
    invoke-virtual {p0, v8}, Lcom/waze/ifs/ui/WazeViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    .line 818
    add-float v7, v1, v13

    .line 821
    .local v7, distance:F
    const/4 v6, 0x0

    .line 822
    .local v6, duration:I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 823
    if-lez p3, :cond_2

    .line 824
    const/high16 v1, 0x447a

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 830
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 832
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 833
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 826
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    iget v14, p0, Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Lcom/waze/ifs/ui/WazePagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 827
    .local v11, pageWidth:F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/waze/ifs/ui/WazeViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 828
    .local v10, pageDelta:F
    const/high16 v1, 0x3f80

    add-float/2addr v1, v10

    const/high16 v13, 0x42c8

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
