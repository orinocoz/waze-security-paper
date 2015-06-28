.class Lcom/waze/test/BgTest$3;
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
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public tester()V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/waze/test/BgTest;->access$0()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    :pswitch_0
    return-void

    .line 131
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/ifs/ui/ActivityBase;->setGlobalOrientation(I)V

    .line 132
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/waze/test/BgTest;->access$1(I)V

    goto :goto_0

    .line 137
    :pswitch_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/waze/ifs/ui/ActivityBase;->setGlobalOrientation(I)V

    .line 138
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/waze/test/BgTest;->access$1(I)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
