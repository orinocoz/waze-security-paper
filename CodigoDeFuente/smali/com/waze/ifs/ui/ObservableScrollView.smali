.class public Lcom/waze/ifs/ui/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;
    }
.end annotation


# instance fields
.field mDisallowIntercept:Z

.field private scrollViewListener:Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/ObservableScrollView;->mDisallowIntercept:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/ui/ObservableScrollView;->scrollViewListener:Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/ObservableScrollView;->mDisallowIntercept:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/ui/ObservableScrollView;->scrollViewListener:Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/ObservableScrollView;->mDisallowIntercept:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/ui/ObservableScrollView;->scrollViewListener:Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;

    .line 27
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "oldx"
    .parameter "oldy"

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 36
    iget-object v0, p0, Lcom/waze/ifs/ui/ObservableScrollView;->scrollViewListener:Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/waze/ifs/ui/ObservableScrollView;->scrollViewListener:Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;->onScrollChanged(Lcom/waze/ifs/ui/ObservableScrollView;IIII)V

    .line 39
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-boolean v1, p0, Lcom/waze/ifs/ui/ObservableScrollView;->mDisallowIntercept:Z

    if-eqz v1, :cond_0

    .line 50
    iput-boolean v0, p0, Lcom/waze/ifs/ui/ObservableScrollView;->mDisallowIntercept:Z

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/waze/ifs/ui/ObservableScrollView;->mDisallowIntercept:Z

    .line 44
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 45
    return-void
.end method

.method public setOnScrollListener(Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;)V
    .locals 0
    .parameter "scrollViewListener"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/waze/ifs/ui/ObservableScrollView;->scrollViewListener:Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;

    .line 31
    return-void
.end method
