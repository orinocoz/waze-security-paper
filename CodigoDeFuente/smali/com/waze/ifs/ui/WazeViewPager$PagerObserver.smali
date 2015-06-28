.class Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "WazeViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/WazeViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/WazeViewPager;


# direct methods
.method private constructor <init>(Lcom/waze/ifs/ui/WazeViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2824
    iput-object p1, p0, Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/ifs/ui/WazeViewPager;Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2824
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;-><init>(Lcom/waze/ifs/ui/WazeViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/WazeViewPager;->dataSetChanged()V

    .line 2828
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager$PagerObserver;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/WazeViewPager;->dataSetChanged()V

    .line 2832
    return-void
.end method
