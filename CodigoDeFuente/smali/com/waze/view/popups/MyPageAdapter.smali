.class public Lcom/waze/view/popups/MyPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MyPageAdapter.java"


# instance fields
.field Container:Landroid/view/ViewGroup;

.field mNumberOfViews:I

.field mViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(I[Landroid/view/View;)V
    .locals 0
    .parameter "nCount"
    .parameter "Views"

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 16
    iput p1, p0, Lcom/waze/view/popups/MyPageAdapter;->mNumberOfViews:I

    .line 17
    iput-object p2, p0, Lcom/waze/view/popups/MyPageAdapter;->mViews:[Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method public DestroyAllItems()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/waze/view/popups/MyPageAdapter;->mNumberOfViews:I

    if-lt v0, v1, :cond_0

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/waze/view/popups/MyPageAdapter;->mNumberOfViews:I

    .line 55
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/waze/view/popups/MyPageAdapter;->Container:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/waze/view/popups/MyPageAdapter;->mViews:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v0, v2}, Lcom/waze/view/popups/MyPageAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 52
    iget-object v1, p0, Lcom/waze/view/popups/MyPageAdapter;->mViews:[Landroid/view/View;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 59
    if-nez p3, :cond_0

    .line 61
    .end local p1
    .end local p3
    :goto_0
    return-void

    .line 60
    .restart local p1
    .restart local p3
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/waze/view/popups/MyPageAdapter;->Container:Landroid/view/ViewGroup;

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 31
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/waze/view/popups/MyPageAdapter;->mNumberOfViews:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/waze/view/popups/MyPageAdapter;->mViews:[Landroid/view/View;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/waze/view/popups/MyPageAdapter;->mViews:[Landroid/view/View;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 43
    .end local p1
    :cond_0
    :goto_0
    return-object v0

    .line 40
    .restart local p1
    :cond_1
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/waze/view/popups/MyPageAdapter;->mViews:[Landroid/view/View;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/waze/view/popups/MyPageAdapter;->mViews:[Landroid/view/View;

    aget-object v0, v0, p2

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 65
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
