.class public Lcom/waze/navigate/SearchButtonsBarVerticalScrollView;
.super Landroid/widget/ScrollView;
.source "SearchButtonsBarVerticalScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 36
    const-string v6, "WAZE"

    const-string v7, "ontouchevent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 38
    const-string v6, "WAZE"

    const-string v7, "action up"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, min_dist:Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 42
    .local v3, min_se:Lcom/waze/navigate/SearchEngine;
    const v6, 0x7f09002a

    invoke-virtual {p0, v6}, Lcom/waze/navigate/SearchButtonsBarVerticalScrollView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 43
    .local v0, engines:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Lcom/waze/navigate/SearchEngine;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/waze/navigate/SearchEngine;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 52
    const v6, 0x7f09002b

    invoke-virtual {p0, v6}, Lcom/waze/navigate/SearchButtonsBarVerticalScrollView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/waze/navigate/SearchActivity;

    invoke-virtual {v6, v3}, Lcom/waze/navigate/SearchActivity;->setActiveEngine(Lcom/waze/navigate/SearchEngine;)V

    .line 54
    .end local v0           #engines:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Lcom/waze/navigate/SearchEngine;>;"
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/waze/navigate/SearchEngine;>;"
    .end local v2           #min_dist:Ljava/lang/Integer;
    .end local v3           #min_se:Lcom/waze/navigate/SearchEngine;
    :cond_1
    return v8

    .line 45
    .restart local v0       #engines:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Lcom/waze/navigate/SearchEngine;>;"
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/waze/navigate/SearchEngine;>;"
    .restart local v2       #min_dist:Ljava/lang/Integer;
    .restart local v3       #min_se:Lcom/waze/navigate/SearchEngine;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/waze/navigate/SearchEngine;

    .line 46
    .local v5, tmp_se:Lcom/waze/navigate/SearchEngine;
    invoke-virtual {v5}, Lcom/waze/navigate/SearchEngine;->getButton()Lcom/waze/navigate/SearchButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/navigate/SearchButton;->getButtonYPosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/waze/navigate/SearchButtonsBarVerticalScrollView;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/waze/navigate/SearchButtonsBarVerticalScrollView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 47
    .local v4, tmp_dist:I
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 48
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 49
    move-object v3, v5

    goto :goto_0
.end method
