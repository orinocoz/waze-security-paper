.class Lcom/waze/test/BgTest$2;
.super Ljava/lang/Object;
.source "BgTest.java"

# interfaces
.implements Lcom/waze/test/BgTest$IPeriodicTester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/test/BgTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public tester()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/waze/test/BgTest;->access$0()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 107
    :pswitch_0
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/waze/AppService;->ShowHomeWindow(J)V

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/waze/test/BgTest;->access$1(I)V

    goto :goto_0

    .line 113
    :pswitch_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/waze/AppService;->ShowMainActivityWindow(J)V

    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/test/BgTest;->access$1(I)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
