.class public Lcom/waze/ifs/ui/WazeViewPager$SimpleOnPageChangeListener;
.super Ljava/lang/Object;
.source "WazeViewPager.java"

# interfaces
.implements Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/WazeViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnPageChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 313
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 303
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 308
    return-void
.end method
