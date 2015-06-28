.class public Lcom/waze/reports/ReportMenuPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ReportMenuPageAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private reportMenu:Lcom/waze/reports/ReportMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
    .locals 0
    .parameter "context"
    .parameter "reportMenu"

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/waze/reports/ReportMenuPageAdapter;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/waze/reports/ReportMenuPageAdapter;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 17
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "collection"
    .parameter "index"
    .parameter "arg2"

    .prologue
    .line 21
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 25
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .parameter "collection"
    .parameter "position"

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, layout:Landroid/view/View;
    if-nez p2, :cond_0

    .line 36
    new-instance v0, Lcom/waze/reports/ReportMenu1;

    .end local v0           #layout:Landroid/view/View;
    iget-object v1, p0, Lcom/waze/reports/ReportMenuPageAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/waze/reports/ReportMenuPageAdapter;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-direct {v0, v1, v2}, Lcom/waze/reports/ReportMenu1;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V

    .restart local v0       #layout:Landroid/view/View;
    :goto_0
    move-object v1, p1

    .line 40
    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 42
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lcom/waze/reports/ReportMenu2;

    .end local v0           #layout:Landroid/view/View;
    iget-object v1, p0, Lcom/waze/reports/ReportMenuPageAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/waze/reports/ReportMenuPageAdapter;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-direct {v0, v1, v2}, Lcom/waze/reports/ReportMenu2;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V

    .restart local v0       #layout:Landroid/view/View;
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 47
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 52
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 61
    return-void
.end method
