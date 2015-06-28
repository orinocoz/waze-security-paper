.class public final Lcom/waze/test/BgTest;
.super Ljava/lang/Object;
.source "BgTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/test/BgTest$IPeriodicTester;
    }
.end annotation


# static fields
.field private static final PERIODIC_TEST_COUNT:J = 0x64L

.field private static final PERIODIC_TEST_PERIOD:J = 0xfa0L

.field private static final STATE_BACKGROUND:I = 0x1

.field private static final STATE_BACKGROUND_ROTATED:I = 0x3

.field private static final STATE_FOREGROUND:I = 0x0

.field private static final STATE_FOREGROUND_ROTATED:I = 0x2

.field private static final STATE_ORIENTATION_LANDSCAPE:I = 0x5

.field private static final STATE_ORIENTATION_PORTRAIT:I = 0x4

.field public static final TEST_BACKGROUND_ONLY:I = 0x0

.field public static final TEST_BACKGROUND_ORIENTATION:I = 0x1

.field public static final TEST_ORIENTATION_ONLY:I = 0x2

.field private static mBgOnlyTest:Lcom/waze/test/BgTest$IPeriodicTester; = null

.field private static mBgOrientationTest:Lcom/waze/test/BgTest$IPeriodicTester; = null

.field private static mCurrentState:I = 0x0

.field private static mOrientationOnlyTest:Lcom/waze/test/BgTest$IPeriodicTester; = null

.field private static final mTest:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/waze/test/BgTest$1;

    invoke-direct {v0}, Lcom/waze/test/BgTest$1;-><init>()V

    sput-object v0, Lcom/waze/test/BgTest;->mBgOrientationTest:Lcom/waze/test/BgTest$IPeriodicTester;

    .line 98
    new-instance v0, Lcom/waze/test/BgTest$2;

    invoke-direct {v0}, Lcom/waze/test/BgTest$2;-><init>()V

    sput-object v0, Lcom/waze/test/BgTest;->mBgOnlyTest:Lcom/waze/test/BgTest$IPeriodicTester;

    .line 121
    new-instance v0, Lcom/waze/test/BgTest$3;

    invoke-direct {v0}, Lcom/waze/test/BgTest$3;-><init>()V

    sput-object v0, Lcom/waze/test/BgTest;->mOrientationOnlyTest:Lcom/waze/test/BgTest$IPeriodicTester;

    .line 160
    const/4 v0, 0x0

    sput v0, Lcom/waze/test/BgTest;->mCurrentState:I

    .line 164
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 160
    sget v0, Lcom/waze/test/BgTest;->mCurrentState:I

    return v0
.end method

.method static synthetic access$1(I)V
    .locals 0
    .parameter

    .prologue
    .line 160
    sput p0, Lcom/waze/test/BgTest;->mCurrentState:I

    return-void
.end method

.method public static startPeriodicTest()V
    .locals 9

    .prologue
    const-wide/16 v2, 0xfa0

    .line 21
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v7

    .line 22
    .local v7, mgr:Lcom/waze/NativeManager;
    const/4 v8, 0x0

    .line 24
    .local v8, test:Lcom/waze/test/BgTest$IPeriodicTester;
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    move-object v6, v8

    .line 39
    .local v6, finalTest:Lcom/waze/test/BgTest$IPeriodicTester;
    new-instance v1, Lcom/waze/test/BgTest$4;

    invoke-direct {v1, v6}, Lcom/waze/test/BgTest$4;-><init>(Lcom/waze/test/BgTest$IPeriodicTester;)V

    .line 57
    .local v1, testTask:Ljava/util/TimerTask;
    invoke-virtual {v7}, Lcom/waze/NativeManager;->getTimer()Ljava/util/Timer;

    move-result-object v0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 58
    return-void

    .line 27
    .end local v1           #testTask:Ljava/util/TimerTask;
    .end local v6           #finalTest:Lcom/waze/test/BgTest$IPeriodicTester;
    :pswitch_0
    sget-object v8, Lcom/waze/test/BgTest;->mBgOnlyTest:Lcom/waze/test/BgTest$IPeriodicTester;

    .line 28
    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v8, Lcom/waze/test/BgTest;->mBgOrientationTest:Lcom/waze/test/BgTest$IPeriodicTester;

    .line 31
    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v8, Lcom/waze/test/BgTest;->mOrientationOnlyTest:Lcom/waze/test/BgTest$IPeriodicTester;

    .line 34
    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
