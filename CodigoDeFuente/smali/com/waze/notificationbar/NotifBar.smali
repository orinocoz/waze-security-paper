.class public Lcom/waze/notificationbar/NotifBar;
.super Landroid/widget/RelativeLayout;
.source "NotifBar.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/notificationbar/NotifBar;->inflater:Landroid/view/LayoutInflater;

    .line 16
    iget-object v0, p0, Lcom/waze/notificationbar/NotifBar;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03009a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    return-void
.end method
