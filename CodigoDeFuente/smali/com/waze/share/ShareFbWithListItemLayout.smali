.class public Lcom/waze/share/ShareFbWithListItemLayout;
.super Lcom/waze/ifs/ui/CheckedRelativeLayout;
.source "ShareFbWithListItemLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/waze/ifs/ui/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/waze/ifs/ui/CheckedRelativeLayout;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/CheckedRelativeLayout;->setChecked(Z)V

    .line 25
    return-void
.end method

.method public toggle()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/waze/ifs/ui/CheckedRelativeLayout;->toggle()V

    .line 30
    return-void
.end method
