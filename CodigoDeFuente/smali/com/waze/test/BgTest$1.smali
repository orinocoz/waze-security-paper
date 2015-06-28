.class Lcom/waze/test/BgTest$1;
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public tester()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-static {}, Lcom/waze/test/BgTest;->access$0()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 72
    :pswitch_0
    invoke-static {v2}, Lcom/waze/ifs/ui/ActivityBase;->setGlobalOrientation(I)V

    .line 73
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/waze/test/BgTest;->access$1(I)V

    goto :goto_0

    .line 78
    :pswitch_1
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/waze/AppService;->ShowHomeWindow(J)V

    .line 79
    invoke-static {v3}, Lcom/waze/test/BgTest;->access$1(I)V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-static {v3}, Lcom/waze/ifs/ui/ActivityBase;->setGlobalOrientation(I)V

    .line 85
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/waze/test/BgTest;->access$1(I)V

    goto :goto_0

    .line 90
    :pswitch_3
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/waze/AppService;->ShowMainActivityWindow(J)V

    .line 91
    invoke-static {v2}, Lcom/waze/test/BgTest;->access$1(I)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
