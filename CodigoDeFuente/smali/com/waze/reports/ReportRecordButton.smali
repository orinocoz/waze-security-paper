.class public Lcom/waze/reports/ReportRecordButton;
.super Landroid/widget/ImageButton;
.source "ReportRecordButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onWindowVisibilityChanged(I)V

    .line 38
    invoke-static {}, Lcom/waze/pioneer/PioneerManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/waze/reports/ReportRecordButton;->setVisibility(I)V

    .line 42
    :cond_0
    return-void
.end method
