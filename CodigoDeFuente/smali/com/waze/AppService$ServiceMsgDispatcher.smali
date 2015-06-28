.class final Lcom/waze/AppService$ServiceMsgDispatcher;
.super Landroid/os/Handler;
.source "AppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/AppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceMsgDispatcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/AppService$ServiceMsgDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/waze/AppService$ServiceMsgDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "aMsg"

    .prologue
    .line 668
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 712
    :goto_0
    return-void

    .line 673
    :pswitch_0
    #calls: Lcom/waze/AppService;->ShowMainActivityHandler()V
    invoke-static {}, Lcom/waze/AppService;->access$3()V

    goto :goto_0

    .line 679
    :pswitch_1
    #calls: Lcom/waze/AppService;->ShowHomeHandler()V
    invoke-static {}, Lcom/waze/AppService;->access$4()V

    goto :goto_0

    .line 685
    :pswitch_2
    #calls: Lcom/waze/AppService;->ShowDialerHandler()V
    invoke-static {}, Lcom/waze/AppService;->access$5()V

    goto :goto_0

    .line 691
    :pswitch_3
    #calls: Lcom/waze/AppService;->ShowCameraPreviewHandler()V
    invoke-static {}, Lcom/waze/AppService;->access$6()V

    goto :goto_0

    .line 697
    :pswitch_4
    #calls: Lcom/waze/AppService;->OpenBrowserForUpgradeHandler()V
    invoke-static {}, Lcom/waze/AppService;->access$7()V

    goto :goto_0

    .line 702
    :pswitch_5
    #calls: Lcom/waze/AppService;->RestartApplicationHandler()V
    invoke-static {}, Lcom/waze/AppService;->access$8()V

    goto :goto_0

    .line 707
    :pswitch_6
    #calls: Lcom/waze/AppService;->ShowContactsHandler()V
    invoke-static {}, Lcom/waze/AppService;->access$9()V

    goto :goto_0

    .line 668
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
