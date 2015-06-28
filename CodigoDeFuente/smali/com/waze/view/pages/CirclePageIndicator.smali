.class public Lcom/waze/view/pages/CirclePageIndicator;
.super Landroid/widget/LinearLayout;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/waze/view/pages/PageIndicator;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private selected:I

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v1, 0x0

    iput v1, p0, Lcom/waze/view/pages/CirclePageIndicator;->selected:I

    .line 20
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 21
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03002e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    return-void
.end method

.method private setCircles()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 41
    invoke-virtual {p0}, Lcom/waze/view/pages/CirclePageIndicator;->removeAllViewsInLayout()V

    .line 42
    iget-object v4, p0, Lcom/waze/view/pages/CirclePageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_1

    .line 57
    :cond_0
    return-void

    .line 45
    :cond_1
    iget-object v4, p0, Lcom/waze/view/pages/CirclePageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 46
    .local v2, nPages:I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 48
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/waze/view/pages/CirclePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget v4, p0, Lcom/waze/view/pages/CirclePageIndicator;->selected:I

    if-ne v0, v4, :cond_2

    .line 51
    const v4, 0x7f020296

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    :goto_1
    invoke-virtual {p0, v1}, Lcom/waze/view/pages/CirclePageIndicator;->addView(Landroid/view/View;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_2
    const v4, 0x7f020295

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 35
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 38
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 59
    iput p1, p0, Lcom/waze/view/pages/CirclePageIndicator;->selected:I

    .line 60
    invoke-direct {p0}, Lcom/waze/view/pages/CirclePageIndicator;->setCircles()V

    .line 61
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter "viewPager"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/waze/view/pages/CirclePageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 26
    invoke-direct {p0}, Lcom/waze/view/pages/CirclePageIndicator;->setCircles()V

    .line 27
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .parameter "viewPager"
    .parameter "initialPosition"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/waze/view/pages/CirclePageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 31
    invoke-direct {p0}, Lcom/waze/view/pages/CirclePageIndicator;->setCircles()V

    .line 32
    return-void
.end method
