.class public Lcom/waze/NativeManager$UIMsgDispatcher;
.super Landroid/os/Handler;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UIMsgDispatcher"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$waze$NativeManager$UIEvent:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$waze$NativeManager$UIEvent()[I
    .locals 3

    .prologue
    .line 3794
    sget-object v0, Lcom/waze/NativeManager$UIMsgDispatcher;->$SWITCH_TABLE$com$waze$NativeManager$UIEvent:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/waze/NativeManager$UIEvent;->values()[Lcom/waze/NativeManager$UIEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_FORCE_NEW_CANVAS:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v1}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_KEY_DOWN:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v1}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_LOW_MEMORY:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v1}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v1}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_SCREENSHOT:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v1}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_START:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v1}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_STARTUP_GPUERROR:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v1}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_STARTUP_NOSDCARD:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v1}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_TOUCH:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v1}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_PRIORITY_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v1}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/waze/NativeManager$UIMsgDispatcher;->$SWITCH_TABLE$com$waze$NativeManager$UIEvent:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3794
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private handlePriorityEvents()V
    .locals 16

    .prologue
    .line 3885
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    .line 3890
    .local v9, nm:Lcom/waze/NativeManager;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 3892
    .local v7, lTouchEvent:Landroid/view/MotionEvent;
    #getter for: Lcom/waze/NativeManager;->mUITouchEventQueue:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/waze/NativeManager;->access$19(Lcom/waze/NativeManager;)Ljava/util/ArrayList;

    move-result-object v14

    monitor-enter v14

    .line 3893
    :try_start_0
    #getter for: Lcom/waze/NativeManager;->mUITouchEventQueue:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/waze/NativeManager;->access$19(Lcom/waze/NativeManager;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 3894
    #getter for: Lcom/waze/NativeManager;->mUITouchEventQueue:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/waze/NativeManager;->access$19(Lcom/waze/NativeManager;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Landroid/view/MotionEvent;

    move-object v7, v0

    .line 3892
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3898
    if-eqz v7, :cond_2

    .line 3901
    invoke-static {}, Lcom/waze/NativeManager;->access$2()Lcom/waze/NativeCanvas;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/waze/NativeCanvas;->OnTouchEventHandler(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 3892
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 3907
    :cond_2
    const/4 v6, 0x0

    .line 3909
    .local v6, lKeyEvent:Landroid/view/KeyEvent;
    #getter for: Lcom/waze/NativeManager;->mUIKeyEventQueue:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/waze/NativeManager;->access$20(Lcom/waze/NativeManager;)Ljava/util/ArrayList;

    move-result-object v14

    monitor-enter v14

    .line 3910
    :try_start_2
    #getter for: Lcom/waze/NativeManager;->mUIKeyEventQueue:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/waze/NativeManager;->access$20(Lcom/waze/NativeManager;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 3911
    #getter for: Lcom/waze/NativeManager;->mUIKeyEventQueue:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/waze/NativeManager;->access$20(Lcom/waze/NativeManager;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Landroid/view/KeyEvent;

    move-object v6, v0

    .line 3909
    :cond_3
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3915
    if-eqz v6, :cond_4

    .line 3917
    invoke-static {}, Lcom/waze/NativeManager;->access$2()Lcom/waze/NativeCanvas;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/waze/NativeCanvas;->OnKeyDownHandler(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 3909
    :catchall_1
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13

    .line 3922
    :cond_4
    const/4 v8, 0x0

    .line 3923
    .local v8, msg:Landroid/os/Message;
    #getter for: Lcom/waze/NativeManager;->mPriorityEventQueue:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/waze/NativeManager;->access$21(Lcom/waze/NativeManager;)Ljava/util/ArrayList;

    move-result-object v14

    monitor-enter v14

    .line 3924
    :try_start_4
    #getter for: Lcom/waze/NativeManager;->mPriorityEventQueue:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/waze/NativeManager;->access$21(Lcom/waze/NativeManager;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 3925
    #getter for: Lcom/waze/NativeManager;->mPriorityEventQueue:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/waze/NativeManager;->access$21(Lcom/waze/NativeManager;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Landroid/os/Message;

    move-object v8, v0

    .line 3923
    :cond_5
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3929
    if-eqz v8, :cond_8

    .line 3930
    iget v13, v8, Landroid/os/Message;->what:I

    invoke-static {v13}, Lcom/waze/NativeManager$UIEvent;->FromInt(I)Lcom/waze/NativeManager$UIEvent;

    move-result-object v5

    .line 3931
    .local v5, lEvent:Lcom/waze/NativeManager$UIEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3933
    .local v11, startTime:J
    const-string v3, ""

    .line 3935
    .local v3, eventName:Ljava/lang/String;
    invoke-static {}, Lcom/waze/NativeManager$UIMsgDispatcher;->$SWITCH_TABLE$com$waze$NativeManager$UIEvent()[I

    move-result-object v13

    invoke-virtual {v5}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 3957
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unknown priority event - "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    .line 3960
    :cond_6
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v1, v13, v11

    .line 3962
    .local v1, delta:J
    const-wide/16 v13, 0x1f4

    cmp-long v13, v1, v13

    if-lez v13, :cond_0

    .line 3963
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "WAZE PROFILER EXCEPTIONAL TIME FOR "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3964
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " HANDLING TIME: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3963
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3923
    .end local v1           #delta:J
    .end local v3           #eventName:Ljava/lang/String;
    .end local v5           #lEvent:Lcom/waze/NativeManager$UIEvent;
    .end local v11           #startTime:J
    :catchall_2
    move-exception v13

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v13

    .line 3942
    .restart local v3       #eventName:Ljava/lang/String;
    .restart local v5       #lEvent:Lcom/waze/NativeManager$UIEvent;
    .restart local v11       #startTime:J
    :pswitch_0
    const/4 v4, 0x1

    .line 3943
    .local v4, isActive:Z
    iget-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/waze/IMessageParam;

    .line 3944
    .local v10, prm:Lcom/waze/IMessageParam;
    if-eqz v10, :cond_7

    .line 3945
    invoke-interface {v10}, Lcom/waze/IMessageParam;->IsActive()Z

    move-result v4

    .line 3946
    const-string v3, "Timer Event"

    .line 3950
    :goto_2
    if-eqz v4, :cond_6

    .line 3951
    iget v13, v8, Landroid/os/Message;->arg1:I

    iget v14, v8, Landroid/os/Message;->arg2:I

    #calls: Lcom/waze/NativeManager;->NativeMsgDispatcherNTV(II)V
    invoke-static {v9, v13, v14}, Lcom/waze/NativeManager;->access$18(Lcom/waze/NativeManager;II)V

    goto :goto_1

    .line 3948
    :cond_7
    const-string v3, "IO event"

    goto :goto_2

    .line 3973
    .end local v3           #eventName:Ljava/lang/String;
    .end local v4           #isActive:Z
    .end local v5           #lEvent:Lcom/waze/NativeManager$UIEvent;
    .end local v10           #prm:Lcom/waze/IMessageParam;
    .end local v11           #startTime:J
    :cond_8
    return-void

    .line 3935
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "aMsg"

    .prologue
    .line 3798
    invoke-static {}, Lcom/waze/NativeManager;->isShuttingDown()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3882
    :cond_0
    :goto_0
    return-void

    .line 3802
    :cond_1
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    .line 3805
    .local v6, nm:Lcom/waze/NativeManager;
    invoke-virtual {v6}, Lcom/waze/NativeManager;->getInitializedStatus()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3806
    invoke-direct {p0}, Lcom/waze/NativeManager$UIMsgDispatcher;->handlePriorityEvents()V

    .line 3808
    :cond_2
    iget v10, p1, Landroid/os/Message;->what:I

    invoke-static {v10}, Lcom/waze/NativeManager$UIEvent;->FromInt(I)Lcom/waze/NativeManager$UIEvent;

    move-result-object v4

    .line 3809
    .local v4, lEvent:Lcom/waze/NativeManager$UIEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3811
    .local v8, startTime:J
    const-string v2, ""

    .line 3813
    .local v2, eventName:Ljava/lang/String;
    invoke-static {}, Lcom/waze/NativeManager$UIMsgDispatcher;->$SWITCH_TABLE$com$waze$NativeManager$UIEvent()[I

    move-result-object v10

    invoke-virtual {v4}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 3876
    :cond_3
    :goto_1
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v8

    .line 3878
    .local v0, delta:J
    const-wide/16 v10, 0x1f4

    cmp-long v10, v0, v10

    if-lez v10, :cond_0

    invoke-virtual {v6}, Lcom/waze/NativeManager;->getInitializedStatus()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3879
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "WAZE PROFILER EXCEPTIONAL TIME FOR "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3880
    const-string v11, " HANDLING TIME: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3879
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 3819
    .end local v0           #delta:J
    :pswitch_1
    #calls: Lcom/waze/NativeManager;->appLayerShutDown()V
    invoke-static {v6}, Lcom/waze/NativeManager;->access$16(Lcom/waze/NativeManager;)V

    goto :goto_1

    .line 3823
    :pswitch_2
    invoke-static {}, Lcom/waze/NativeManager;->CheckSDCardAvailable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3824
    #calls: Lcom/waze/NativeManager;->startApp()Z
    invoke-static {}, Lcom/waze/NativeManager;->access$17()Z

    goto :goto_1

    .line 3839
    :pswitch_3
    new-instance v5, Ljava/lang/String;

    .line 3840
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Memory usage native heap. Used: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3841
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3842
    const-string v11, ". Free: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3843
    const-string v11, ". Total: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3840
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3839
    invoke-direct {v5, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3844
    .local v5, memory_usage:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/String;

    const-string v12, "Android system reported low memory !!! "

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3845
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3844
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3861
    .end local v5           #memory_usage:Ljava/lang/String;
    :pswitch_4
    const/4 v3, 0x1

    .line 3862
    .local v3, isActive:Z
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/waze/IMessageParam;

    .line 3863
    .local v7, prm:Lcom/waze/IMessageParam;
    if-eqz v7, :cond_4

    .line 3864
    invoke-interface {v7}, Lcom/waze/IMessageParam;->IsActive()Z

    move-result v3

    .line 3865
    const-string v2, "Timer Event"

    .line 3869
    :goto_2
    if-eqz v3, :cond_3

    .line 3870
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/waze/NativeManager;->NativeMsgDispatcherNTV(II)V
    invoke-static {v6, v10, v11}, Lcom/waze/NativeManager;->access$18(Lcom/waze/NativeManager;II)V

    goto/16 :goto_1

    .line 3867
    :cond_4
    const-string v2, "IO event"

    goto :goto_2

    .line 3813
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
