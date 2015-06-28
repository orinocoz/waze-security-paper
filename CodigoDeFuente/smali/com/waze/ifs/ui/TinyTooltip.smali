.class public Lcom/waze/ifs/ui/TinyTooltip;
.super Lcom/waze/ifs/ui/LayoutTooltip;
.source "TinyTooltip.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mTextView:Landroid/widget/TextView;

.field protected mWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "text"

    .prologue
    .line 16
    const v0, 0x7f03011d

    invoke-direct {p0, p1, v0}, Lcom/waze/ifs/ui/LayoutTooltip;-><init>(Landroid/content/Context;I)V

    .line 18
    const/high16 v0, 0x4040

    iget v1, p0, Lcom/waze/ifs/ui/TinyTooltip;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x4120

    iget v2, p0, Lcom/waze/ifs/ui/TinyTooltip;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/waze/ifs/ui/TinyTooltip;->setDelta(II)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/TinyTooltip;->mPreferLeft:Z

    .line 21
    iget-object v0, p0, Lcom/waze/ifs/ui/TinyTooltip;->mView:Landroid/view/View;

    const v1, 0x7f090727

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/ifs/ui/TinyTooltip;->mTextView:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/waze/ifs/ui/TinyTooltip;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method
