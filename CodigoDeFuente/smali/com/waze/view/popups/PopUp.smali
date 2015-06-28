.class public abstract Lcom/waze/view/popups/PopUp;
.super Landroid/widget/RelativeLayout;
.source "PopUp.java"


# static fields
.field public static ANIMATION_DURATION:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x12c

    sput v0, Lcom/waze/view/popups/PopUp;->ANIMATION_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/view/popups/PopUp;->mContext:Landroid/content/Context;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/view/popups/PopUp;->mTimer:I

    .line 17
    iput-object p1, p0, Lcom/waze/view/popups/PopUp;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public GetHeight()I
    .locals 4

    .prologue
    .line 35
    const/16 v2, 0xb9

    .line 36
    .local v2, dpValue:I
    iget-object v3, p0, Lcom/waze/view/popups/PopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 37
    .local v1, d:F
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 39
    .local v0, Height:I
    return v0
.end method

.method public GetTimer()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/waze/view/popups/PopUp;->mTimer:I

    return v0
.end method

.method public abstract hide()V
.end method

.method public abstract onBackPressed()V
.end method

.method public setPopUpTimer(I)V
    .locals 0
    .parameter "nTimer"

    .prologue
    .line 30
    iput p1, p0, Lcom/waze/view/popups/PopUp;->mTimer:I

    .line 31
    return-void
.end method
