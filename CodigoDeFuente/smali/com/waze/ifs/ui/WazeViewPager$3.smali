.class Lcom/waze/ifs/ui/WazeViewPager$3;
.super Ljava/lang/Object;
.source "WazeViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/WazeViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/WazeViewPager;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/WazeViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/WazeViewPager$3;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager$3;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    const/4 v1, 0x0

    #calls: Lcom/waze/ifs/ui/WazeViewPager;->setScrollState(I)V
    invoke-static {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->access$0(Lcom/waze/ifs/ui/WazeViewPager;I)V

    .line 251
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager$3;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/WazeViewPager;->populate()V

    .line 252
    return-void
.end method
