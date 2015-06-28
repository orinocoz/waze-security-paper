.class public Lcom/waze/ifs/ui/CheckedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckedRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field protected mCheckedTextView:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/ui/CheckedRelativeLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    .line 15
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/waze/ifs/ui/CheckedRelativeLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/ifs/ui/CheckedRelativeLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0906c0

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/CheckedRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/waze/ifs/ui/CheckedRelativeLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    .line 48
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/ifs/ui/CheckedRelativeLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/waze/ifs/ui/CheckedRelativeLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 33
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/waze/ifs/ui/CheckedRelativeLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/waze/ifs/ui/CheckedRelativeLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 42
    :cond_0
    return-void
.end method
