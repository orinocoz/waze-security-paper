.class Lcom/waze/test/BgTest$4;
.super Ljava/util/TimerTask;
.source "BgTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/test/BgTest;->startPeriodicTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCount:I

.field private final synthetic val$finalTest:Lcom/waze/test/BgTest$IPeriodicTester;


# direct methods
.method constructor <init>(Lcom/waze/test/BgTest$IPeriodicTester;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/test/BgTest$4;->val$finalTest:Lcom/waze/test/BgTest$IPeriodicTester;

    .line 39
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/test/BgTest$4;->mCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    iget v0, p0, Lcom/waze/test/BgTest$4;->mCount:I

    int-to-long v0, v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/waze/test/BgTest$4;->cancel()Z

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    iget v0, p0, Lcom/waze/test/BgTest$4;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/test/BgTest$4;->mCount:I

    .line 51
    iget-object v0, p0, Lcom/waze/test/BgTest$4;->val$finalTest:Lcom/waze/test/BgTest$IPeriodicTester;

    invoke-interface {v0}, Lcom/waze/test/BgTest$IPeriodicTester;->tester()V

    goto :goto_0
.end method
