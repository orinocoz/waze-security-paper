.class public Lcom/waze/view/navbar/NavBarText;
.super Landroid/widget/TextView;
.source "NavBarText.java"


# instance fields
.field private navBar:Lcom/waze/navbar/NavBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 20
    iget-object v0, p0, Lcom/waze/view/navbar/NavBarText;->navBar:Lcom/waze/navbar/NavBar;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/waze/view/navbar/NavBarText;->navBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->adjustImages()V

    .line 23
    :cond_0
    return-void
.end method

.method public setNavBar(Lcom/waze/navbar/NavBar;)V
    .locals 0
    .parameter "navBar"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/waze/view/navbar/NavBarText;->navBar:Lcom/waze/navbar/NavBar;

    .line 27
    return-void
.end method
