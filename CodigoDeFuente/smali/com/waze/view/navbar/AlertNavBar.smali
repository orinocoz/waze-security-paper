.class public Lcom/waze/view/navbar/AlertNavBar;
.super Landroid/widget/RelativeLayout;
.source "AlertNavBar.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/view/navbar/AlertNavBar;->inflater:Landroid/view/LayoutInflater;

    .line 17
    iget-object v0, p0, Lcom/waze/view/navbar/AlertNavBar;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030018

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    return-void
.end method
