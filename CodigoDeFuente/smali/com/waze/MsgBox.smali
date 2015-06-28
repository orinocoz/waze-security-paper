.class public final Lcom/waze/MsgBox;
.super Ljava/lang/Object;
.source "MsgBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/MsgBox$MsgBoxOnClick;
    }
.end annotation


# static fields
.field private static final CONFIRM_DIALOG_ABORT:I = 0x6

.field private static final CONFIRM_DIALOG_CANCEL:I = 0x2

.field private static final CONFIRM_DIALOG_CLOSE:I = 0x0

.field private static final CONFIRM_DIALOG_COMMIT:I = 0x5

.field private static final CONFIRM_DIALOG_IGNORE:I = 0x8

.field private static final CONFIRM_DIALOG_NO:I = 0x4

.field private static final CONFIRM_DIALOG_OK:I = 0x1

.field private static final CONFIRM_DIALOG_RETRY:I = 0x7

.field private static final CONFIRM_DIALOG_YES:I = 0x3

.field public static final WAZE_MSG_BOX_RES_CANCEL:I = 0x0

.field public static final WAZE_MSG_BOX_RES_OK:I = 0x1

.field private static mInstance:Lcom/waze/MsgBox;


# instance fields
.field private volatile mIsBlocking:Z

.field private mTripSuggestButtonPressed:Z

.field private mTripTypeStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    .line 997
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput-boolean v0, p0, Lcom/waze/MsgBox;->mIsBlocking:Z

    .line 1000
    iput-boolean v0, p0, Lcom/waze/MsgBox;->mTripSuggestButtonPressed:Z

    .line 948
    return-void
.end method

.method private native ConfirmDialogCallbackNTV(IJJ)V
.end method

.method private native InitMsgBoxNTV()V
.end method

.method static InitNativeLayer()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 70
    .local v0, instance:Lcom/waze/MsgBox;
    invoke-direct {v0}, Lcom/waze/MsgBox;->InitMsgBoxNTV()V

    .line 71
    return-void
.end method

.method private native MsgBoxCallbackNTV(J)V
.end method

.method public static Notify()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    sget-object v2, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :try_start_1
    sget-object v1, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 200
    monitor-exit v2

    .line 207
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 200
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .restart local v0       #ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error notifying the message box: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static OpenMutePopup(I)V
    .locals 1
    .parameter "nType"

    .prologue
    .line 401
    new-instance v0, Lcom/waze/MsgBox$8;

    invoke-direct {v0, p0}, Lcom/waze/MsgBox$8;-><init>(I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method

.method public static ShowOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .parameter "aTitle"
    .parameter "aMessage"
    .parameter "aLabelOk"
    .parameter "aOkCb"

    .prologue
    const/4 v4, 0x0

    .line 215
    sget-object v0, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/waze/MsgBox;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 216
    return-void
.end method

.method private ShowRun([B[B[B[BJ)V
    .locals 6
    .parameter "aTitle"
    .parameter "aMessage"
    .parameter "aLabelOk"
    .parameter "aLabelCancel"
    .parameter "aCbContext"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 257
    invoke-direct {p0}, Lcom/waze/MsgBox;->builder()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 258
    .local v0, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 260
    if-eqz p3, :cond_0

    .line 262
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lcom/waze/MsgBox$MsgBoxOnClick;

    invoke-direct {v3, p0, v5, p5, p6}, Lcom/waze/MsgBox$MsgBoxOnClick;-><init>(Lcom/waze/MsgBox;IJ)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 264
    :cond_0
    if-eqz p4, :cond_1

    .line 266
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p4}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lcom/waze/MsgBox$MsgBoxOnClick;

    invoke-direct {v3, p0, v4, p5, p6}, Lcom/waze/MsgBox$MsgBoxOnClick;-><init>(Lcom/waze/MsgBox;IJ)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 268
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 274
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 275
    .local v1, msgView:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 277
    invoke-static {v1, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 279
    :cond_2
    return-void
.end method

.method private native SpecialMsgBoxCallbackNTV(IJ)V
.end method

.method static synthetic access$0(Lcom/waze/MsgBox;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 934
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/MsgBox;->SpecialMsgBoxCallbackNTV(IJ)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/MsgBox;)Z
    .locals 1
    .parameter

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/waze/MsgBox;->mIsBlocking:Z

    return v0
.end method

.method static synthetic access$10(Lcom/waze/MsgBox;IJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 935
    invoke-direct/range {p0 .. p5}, Lcom/waze/MsgBox;->ConfirmDialogCallbackNTV(IJJ)V

    return-void
.end method

.method static synthetic access$11(Lcom/waze/MsgBox;Landroid/app/Dialog;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    invoke-direct/range {p0 .. p6}, Lcom/waze/MsgBox;->confirnDialogNoHandler(Landroid/app/Dialog;JJI)V

    return-void
.end method

.method static synthetic access$12(Lcom/waze/MsgBox;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1000
    iput-boolean p1, p0, Lcom/waze/MsgBox;->mTripSuggestButtonPressed:Z

    return-void
.end method

.method static synthetic access$13(Lcom/waze/MsgBox;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 999
    iget-object v0, p0, Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/waze/MsgBox;)Z
    .locals 1
    .parameter

    .prologue
    .line 1000
    iget-boolean v0, p0, Lcom/waze/MsgBox;->mTripSuggestButtonPressed:Z

    return v0
.end method

.method static synthetic access$2()Lcom/waze/MsgBox;
    .locals 1

    .prologue
    .line 990
    sget-object v0, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/MsgBox;[B[B[B[BJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct/range {p0 .. p6}, Lcom/waze/MsgBox;->ShowRun([B[B[B[BJ)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/MsgBox;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 936
    invoke-direct {p0, p1, p2}, Lcom/waze/MsgBox;->MsgBoxCallbackNTV(J)V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    invoke-direct/range {p0 .. p10}, Lcom/waze/MsgBox;->openConfirmDialog(Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    invoke-direct/range {p0 .. p14}, Lcom/waze/MsgBox;->openChoiceDialog(Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/MsgBox;Ljava/lang/String;ILjava/lang/String;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    invoke-direct/range {p0 .. p8}, Lcom/waze/MsgBox;->openTripConfirmDialog(Ljava/lang/String;ILjava/lang/String;JJI)V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/MsgBox;->openChooseNumberDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$9(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 820
    invoke-direct/range {p0 .. p7}, Lcom/waze/MsgBox;->openConfirmDialogJavaCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private builder()Landroid/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 925
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 926
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method private confirnDialogNoHandler(Landroid/app/Dialog;JJI)V
    .locals 7
    .parameter "dialog"
    .parameter "callback"
    .parameter "context"
    .parameter "retValue"

    .prologue
    const v4, 0x7f090232

    const v3, 0x7f09022f

    .line 506
    const-string v1, "MsgBox"

    const-string v2, "Dialog No Handler"

    invoke-static {v1, v2}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    if-nez p1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    if-eqz v1, :cond_2

    .line 513
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 515
    :cond_2
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    if-eqz v1, :cond_3

    .line 517
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 520
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 521
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_1
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 526
    new-instance v0, Lcom/waze/MsgBox$14;

    move-object v1, p0

    move v2, p6

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/waze/MsgBox$14;-><init>(Lcom/waze/MsgBox;IJJ)V

    .line 531
    .local v0, doRun:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 522
    .end local v0           #doRun:Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getInstance()Lcom/waze/MsgBox;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/waze/MsgBox;

    invoke-direct {v0}, Lcom/waze/MsgBox;-><init>()V

    sput-object v0, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    .line 83
    :cond_0
    sget-object v0, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    return-object v0
.end method

.method private openChoiceDialog(Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V
    .locals 14
    .parameter "title"
    .parameter "text"
    .parameter "isCancellable"
    .parameter "defaultOption"
    .parameter "cancelValue"
    .parameter "callback"
    .parameter "context"
    .parameter "textOne"
    .parameter "valueOne"
    .parameter "textTwo"
    .parameter "valueTwo"
    .parameter "seconds"

    .prologue
    .line 554
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getRunningCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    if-nez v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v13

    .line 559
    .local v13, nativeManager:Lcom/waze/NativeManager;
    new-instance v12, Landroid/app/Dialog;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const v2, 0x7f06000f

    invoke-direct {v12, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 560
    .local v12, dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/waze/ifs/ui/ActivityBase;->setDialog(Landroid/app/Dialog;)V

    .line 561
    const v1, 0x7f030040

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 562
    const v1, 0x7f09022e

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    const/4 v1, -0x1

    move/from16 v0, p14

    if-ne v0, v1, :cond_3

    .line 564
    const v1, 0x7f090232

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 565
    const v1, 0x7f09022f

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 577
    :goto_1
    const v1, 0x7f090231

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    const v1, 0x7f09022b

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    const v1, 0x7f09022c

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-virtual {v13}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    const v1, 0x7f09022c

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 586
    :cond_2
    new-instance v1, Lcom/waze/MsgBox$15;

    move-object v2, p0

    move/from16 v3, p3

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move/from16 v8, p5

    move/from16 v9, p4

    move/from16 v10, p11

    move/from16 v11, p13

    invoke-direct/range {v1 .. v11}, Lcom/waze/MsgBox$15;-><init>(Lcom/waze/MsgBox;ZJJIIII)V

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 600
    const v1, 0x7f09022d

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v1, Lcom/waze/MsgBox$16;

    move-object v2, p0

    move-object v3, v12

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move/from16 v8, p13

    invoke-direct/range {v1 .. v8}, Lcom/waze/MsgBox$16;-><init>(Lcom/waze/MsgBox;Landroid/app/Dialog;JJI)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    const v1, 0x7f090230

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v1, Lcom/waze/MsgBox$17;

    move-object v2, p0

    move-object v3, v12

    move-wide/from16 v4, p6

    move/from16 v6, p11

    move-wide/from16 v7, p8

    invoke-direct/range {v1 .. v8}, Lcom/waze/MsgBox$17;-><init>(Lcom/waze/MsgBox;Landroid/app/Dialog;JIJ)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 567
    :cond_3
    if-nez p4, :cond_4

    .line 568
    const v1, 0x7f090232

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    move/from16 v0, p14

    invoke-virtual {v1, v0}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 569
    const v1, 0x7f090232

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->start()V

    .line 570
    const v1, 0x7f09022f

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    goto/16 :goto_1

    .line 572
    :cond_4
    const v1, 0x7f09022f

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    move/from16 v0, p14

    invoke-virtual {v1, v0}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 573
    const v1, 0x7f09022f

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->start()V

    .line 574
    const v1, 0x7f090232

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    goto/16 :goto_1
.end method

.method private openChooseNumberDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter "title"
    .parameter "FirstNumber"
    .parameter "SecondNumber"
    .parameter "callback"

    .prologue
    const v4, 0x7f090602

    const v3, 0x7f090601

    .line 634
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getRunningCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    if-nez v1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const v2, 0x7f06000f

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 639
    .local v0, dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase;->setDialog(Landroid/app/Dialog;)V

    .line 640
    const v1, 0x7f0300e2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 641
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    const v1, 0x7f090600

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    const v1, 0x7f090603

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/MsgBox$18;

    invoke-direct {v2, p0, v0, p4}, Lcom/waze/MsgBox$18;-><init>(Lcom/waze/MsgBox;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/MsgBox$19;

    invoke-direct {v2, p0, v0, p4}, Lcom/waze/MsgBox$19;-><init>(Lcom/waze/MsgBox;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/MsgBox$20;

    invoke-direct {v2, p0, v0, p4}, Lcom/waze/MsgBox$20;-><init>(Lcom/waze/MsgBox;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private openConfirmDialog(Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 15
    .parameter "title"
    .parameter "text"
    .parameter "defaultYes"
    .parameter "callback"
    .parameter "context"
    .parameter "textYes"
    .parameter "textNo"
    .parameter "seconds"

    .prologue
    .line 539
    .line 540
    const/4 v3, 0x0

    if-eqz p3, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v5, 0x3

    .line 542
    :goto_1
    const/4 v11, 0x3

    .line 543
    const/4 v13, 0x4

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v12, p9

    move/from16 v14, p10

    .line 539
    invoke-direct/range {v0 .. v14}, Lcom/waze/MsgBox;->openChoiceDialog(Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V

    .line 545
    return-void

    .line 540
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    goto :goto_1
.end method

.method private openConfirmDialogJavaCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "title"
    .parameter "text"
    .parameter "defaultYes"
    .parameter "callback"
    .parameter "textYes"
    .parameter "textNo"
    .parameter "seconds"

    .prologue
    const v6, 0x7f09022c

    const v5, 0x7f090232

    const v4, 0x7f09022f

    .line 824
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getRunningCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    if-nez v2, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 829
    .local v1, nativeManager:Lcom/waze/NativeManager;
    new-instance v0, Landroid/app/Dialog;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    const v3, 0x7f06000f

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 830
    .local v0, dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/waze/ifs/ui/ActivityBase;->setDialog(Landroid/app/Dialog;)V

    .line 831
    const v2, 0x7f030040

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 832
    const v2, 0x7f09022e

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    const/4 v2, -0x1

    if-ne p7, v2, :cond_3

    .line 834
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 835
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 847
    :goto_1
    const v2, 0x7f090231

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    const v2, 0x7f09022b

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    invoke-virtual {v1}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 851
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 853
    :cond_2
    const v2, 0x7f09022d

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/MsgBox$25;

    invoke-direct {v3, p0, v0, p4}, Lcom/waze/MsgBox$25;-><init>(Lcom/waze/MsgBox;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    const v2, 0x7f090230

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/MsgBox$26;

    invoke-direct {v3, p0, v0, p4}, Lcom/waze/MsgBox$26;-><init>(Lcom/waze/MsgBox;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 837
    :cond_3
    if-eqz p3, :cond_4

    .line 838
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2, p7}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 839
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2}, Lcom/waze/view/timer/TimerView;->start()V

    .line 840
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2}, Lcom/waze/view/timer/TimerView;->stop()V

    goto :goto_1

    .line 842
    :cond_4
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2, p7}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 843
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2}, Lcom/waze/view/timer/TimerView;->start()V

    .line 844
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2}, Lcom/waze/view/timer/TimerView;->stop()V

    goto/16 :goto_1
.end method

.method public static openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "title"
    .parameter "text"
    .parameter "doTranslate"

    .prologue
    .line 887
    if-eqz p2, :cond_0

    .line 888
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v6

    .line 889
    .local v6, nativeManager:Lcom/waze/NativeManager;
    invoke-virtual {v6, p0}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 890
    invoke-virtual {v6, p1}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 892
    .end local v6           #nativeManager:Lcom/waze/NativeManager;
    :cond_0
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/waze/MsgBox;->OpenMessageBoxTimeoutCb(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 893
    return-void
.end method

.method public static openMessageBoxFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .parameter "title"
    .parameter "text"
    .parameter "button"
    .parameter "seconds"
    .parameter "onClick"

    .prologue
    .line 906
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/waze/MsgBox;->OpenMessageBoxTimeoutJavaCb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 907
    return-void
.end method

.method public static openMessageBoxTimeout(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .parameter "title"
    .parameter "text"
    .parameter "seconds"
    .parameter "onClick"

    .prologue
    .line 899
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_OK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/waze/MsgBox;->OpenMessageBoxTimeoutJavaCb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 900
    return-void
.end method

.method public static openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .parameter "title"
    .parameter "text"
    .parameter "doTranslate"
    .parameter "OnClick"

    .prologue
    .line 910
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v6

    .line 911
    .local v6, nativeManager:Lcom/waze/NativeManager;
    if-eqz p2, :cond_0

    .line 912
    invoke-virtual {v6, p0}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 913
    invoke-virtual {v6, p1}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 915
    :cond_0
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_OK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/waze/MsgBox;->OpenMessageBoxTimeoutJavaCb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 916
    return-void
.end method

.method private openTripConfirmDialog(Ljava/lang/String;ILjava/lang/String;JJI)V
    .locals 14
    .parameter "title"
    .parameter "Type"
    .parameter "text"
    .parameter "callback"
    .parameter "context"
    .parameter "seconds"

    .prologue
    .line 691
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getRunningCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    if-nez v1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v12

    .line 696
    .local v12, nativeManager:Lcom/waze/NativeManager;
    new-instance v3, Landroid/app/Dialog;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const v2, 0x7f06000f

    invoke-direct {v3, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 697
    .local v3, dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/waze/ifs/ui/ActivityBase;->setDialog(Landroid/app/Dialog;)V

    .line 698
    const v1, 0x7f03012a

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 699
    const v1, 0x7f09022e

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    const/4 v1, -0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_2

    .line 701
    const v1, 0x7f090232

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 702
    const v1, 0x7f09022f

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 708
    :goto_1
    const v1, 0x7f090231

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    const v1, 0x7f090764

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    const v1, 0x7f090769

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_ON_YOUR_WAY_TO_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    const v1, 0x7f09076a

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    const-string v1, "UNKNOWN"

    iput-object v1, p0, Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;

    .line 714
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/MsgBox;->mTripSuggestButtonPressed:Z

    .line 716
    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 717
    const-string v1, "FB"

    iput-object v1, p0, Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;

    .line 718
    const v1, 0x7f090768

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 719
    const v2, 0x7f020150

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 720
    const v1, 0x7f090765

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 745
    :goto_2
    const-string v1, "TRIP_SUGGEST_SHOWN"

    const-string v2, "TYPE"

    iget-object v4, p0, Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 748
    .local v11, hourOfDay:I
    const/4 v1, 0x4

    if-le v11, v1, :cond_8

    const/16 v1, 0x10

    if-ge v11, v1, :cond_8

    .line 749
    const v1, 0x7f090765

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 767
    :goto_3
    const v1, 0x7f090032

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v1, Lcom/waze/MsgBox$21;

    move-object v2, p0

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/waze/MsgBox$21;-><init>(Lcom/waze/MsgBox;Landroid/app/Dialog;JJ)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    const v1, 0x7f09022d

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v1, Lcom/waze/MsgBox$22;

    move-object v2, p0

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/waze/MsgBox$22;-><init>(Lcom/waze/MsgBox;Landroid/app/Dialog;JJ)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    const v1, 0x7f090230

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v1, Lcom/waze/MsgBox$23;

    move-object v2, p0

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/waze/MsgBox$23;-><init>(Lcom/waze/MsgBox;Landroid/app/Dialog;JJ)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    new-instance v4, Lcom/waze/MsgBox$24;

    move-object v5, p0

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v4 .. v9}, Lcom/waze/MsgBox$24;-><init>(Lcom/waze/MsgBox;JJ)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 817
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 704
    .end local v11           #hourOfDay:I
    :cond_2
    const v1, 0x7f090232

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 705
    const v1, 0x7f090232

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->start()V

    .line 706
    const v1, 0x7f09022f

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    goto/16 :goto_1

    .line 721
    :cond_3
    const/4 v1, 0x4

    move/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 722
    const-string v1, "PICKUP"

    iput-object v1, p0, Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;

    .line 723
    const v1, 0x7f090768

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 724
    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 725
    :cond_4
    const/16 v1, 0xa

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 726
    const-string v1, "CAL"

    iput-object v1, p0, Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;

    .line 727
    const v1, 0x7f090768

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 728
    const v2, 0x7f0200a1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 730
    :cond_5
    const-string v1, "Home"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 731
    const-string v1, "HOME"

    iput-object v1, p0, Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;

    .line 732
    const v1, 0x7f090768

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 733
    const v2, 0x7f020196

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 734
    :cond_6
    const-string v1, "Work"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 735
    const-string v1, "WORK"

    iput-object v1, p0, Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;

    .line 736
    const v1, 0x7f090768

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 737
    const v2, 0x7f02046b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 739
    :cond_7
    const-string v1, "FAV"

    iput-object v1, p0, Lcom/waze/MsgBox;->mTripTypeStr:Ljava/lang/String;

    .line 740
    const v1, 0x7f090768

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 741
    const v2, 0x7f02014f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 751
    .restart local v11       #hourOfDay:I
    :cond_8
    const v1, 0x7f090769

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 753
    .local v13, titleTrip:Landroid/widget/TextView;
    const v1, 0x7f09076a

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 754
    .local v10, TripBody:Landroid/widget/TextView;
    const/4 v1, -0x1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 755
    const/4 v1, -0x1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 756
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 757
    const v1, 0x7f090765

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public CloseAsrPopup()V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/waze/MsgBox$4;

    invoke-direct {v0, p0}, Lcom/waze/MsgBox$4;-><init>(Lcom/waze/MsgBox;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public OpenAsrPopup()V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/waze/MsgBox$3;

    invoke-direct {v0, p0}, Lcom/waze/MsgBox$3;-><init>(Lcom/waze/MsgBox;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public OpenChoiceDialogCustomTimeoutCb(Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V
    .locals 16
    .parameter "title"
    .parameter "text"
    .parameter "isCancellable"
    .parameter "defaultOption"
    .parameter "cancelValue"
    .parameter "callback"
    .parameter "context"
    .parameter "textOne"
    .parameter "valueOne"
    .parameter "textTwo"
    .parameter "valueTwo"
    .parameter "seconds"

    .prologue
    .line 452
    new-instance v0, Lcom/waze/MsgBox$10;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/waze/MsgBox$10;-><init>(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public OpenChooseNumberDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .parameter "title"
    .parameter "FirstNumber"
    .parameter "SecondNumber"
    .parameter "callback"

    .prologue
    .line 488
    new-instance v0, Lcom/waze/MsgBox$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/MsgBox$12;-><init>(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 493
    return-void
.end method

.method public OpenConfirmDialogCustomTimeoutCb(Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .parameter "title"
    .parameter "text"
    .parameter "defaultYes"
    .parameter "callback"
    .parameter "context"
    .parameter "textYes"
    .parameter "textNo"
    .parameter "seconds"

    .prologue
    .line 437
    new-instance v0, Lcom/waze/MsgBox$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/waze/MsgBox$9;-><init>(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method public OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "title"
    .parameter "text"
    .parameter "defaultYes"
    .parameter "onClick"
    .parameter "textYes"
    .parameter "textNo"
    .parameter "seconds"

    .prologue
    .line 497
    new-instance v0, Lcom/waze/MsgBox$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/waze/MsgBox$13;-><init>(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 502
    return-void
.end method

.method public OpenMessageBoxTimeoutCb(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 7
    .parameter "title"
    .parameter "text"
    .parameter "seconds"
    .parameter "callback"

    .prologue
    .line 314
    new-instance v0, Lcom/waze/MsgBox$6;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/waze/MsgBox$6;-><init>(Lcom/waze/MsgBox;ILjava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method public OpenMessageBoxTimeoutJavaCb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .parameter "title"
    .parameter "text"
    .parameter "button"
    .parameter "seconds"
    .parameter "onClick"

    .prologue
    .line 362
    new-instance v0, Lcom/waze/MsgBox$7;

    move-object v1, p0

    move v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/waze/MsgBox$7;-><init>(Lcom/waze/MsgBox;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method public OpenTripDialog(Ljava/lang/String;ILjava/lang/String;JJI)V
    .locals 11
    .parameter "title"
    .parameter "type"
    .parameter "text"
    .parameter "callback"
    .parameter "context"
    .parameter "seconds"

    .prologue
    .line 467
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v10

    .line 469
    .local v10, nativeMgr:Lcom/waze/NativeManager;
    invoke-virtual {v10}, Lcom/waze/NativeManager;->getIsAllowTripDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    new-instance v0, Lcom/waze/MsgBox$11;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/waze/MsgBox$11;-><init>(Lcom/waze/MsgBox;Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/waze/NativeManager;->setIsAllowTripDialog(Z)V

    goto :goto_0
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 11
    .parameter "aTitle"
    .parameter "aMessage"
    .parameter "aLabelOk"
    .parameter "aLabelCancel"
    .parameter "aOkCb"
    .parameter "aCancelCb"

    .prologue
    .line 155
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v10

    .line 156
    .local v10, mgr:Lcom/waze/NativeManager;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v8

    .line 158
    .local v8, activity:Lcom/waze/MainActivity;
    if-nez v8, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    new-instance v0, Lcom/waze/MsgBox$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/waze/MsgBox$2;-><init>(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    .local v0, runMsgBox:Ljava/lang/Runnable;
    invoke-virtual {v8, v0}, Lcom/waze/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    iget-boolean v1, p0, Lcom/waze/MsgBox;->mIsBlocking:Z

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    sget-object v2, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    sget-object v1, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/MsgBox;->mIsBlocking:Z

    .line 174
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    const-string v1, "WAZE"

    const-string v2, "Continue running the native thread"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v9

    .line 181
    .local v9, ex:Ljava/lang/Exception;
    const-string v1, "Error waiting for the message to finish"

    invoke-static {v1}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 188
    .end local v0           #runMsgBox:Ljava/lang/Runnable;
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/waze/MsgBox;->ShowRun(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public Show([B[B[B[BJ)V
    .locals 11
    .parameter "aTitle"
    .parameter "aMessage"
    .parameter "aLabelOk"
    .parameter "aLabelCancel"
    .parameter "aCbContext"

    .prologue
    .line 106
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v10

    .line 107
    .local v10, mgr:Lcom/waze/NativeManager;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v8

    .line 109
    .local v8, activity:Lcom/waze/MainActivity;
    if-eqz v8, :cond_0

    if-nez v10, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {v10}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    new-instance v0, Lcom/waze/MsgBox$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/waze/MsgBox$1;-><init>(Lcom/waze/MsgBox;[B[B[B[BJ)V

    .line 119
    .local v0, runMsgBox:Ljava/lang/Runnable;
    invoke-virtual {v8, v0}, Lcom/waze/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    iget-boolean v1, p0, Lcom/waze/MsgBox;->mIsBlocking:Z

    if-eqz v1, :cond_0

    .line 125
    :try_start_0
    sget-object v2, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    sget-object v1, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/MsgBox;->mIsBlocking:Z

    .line 125
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    const-string v1, "WAZE"

    const-string v2, "Continue running the native thread"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v9

    .line 132
    .local v9, ex:Ljava/lang/Exception;
    const-string v1, "Error waiting for the message to finish"

    invoke-static {v1}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 139
    .end local v0           #runMsgBox:Ljava/lang/Runnable;
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/waze/MsgBox;->ShowRun([B[B[B[BJ)V

    goto :goto_0
.end method

.method public ShowAsrLabel(I)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 303
    new-instance v0, Lcom/waze/MsgBox$5;

    invoke-direct {v0, p0, p1}, Lcom/waze/MsgBox$5;-><init>(Lcom/waze/MsgBox;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method public ShowRun(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "aTitle"
    .parameter "aMessage"
    .parameter "aLabelOk"
    .parameter "aLabelCancel"
    .parameter "aOkCb"
    .parameter "aCancelCb"

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/waze/MsgBox;->builder()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 226
    .local v0, dlg:Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 228
    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 230
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, p5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 232
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p6, :cond_1

    .line 234
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, p6}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 237
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 243
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 244
    .local v1, msgView:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 246
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 248
    :cond_2
    return-void
.end method

.method setBlocking(Z)V
    .locals 1
    .parameter "aValue"

    .prologue
    .line 92
    sget-object v0, Lcom/waze/MsgBox;->mInstance:Lcom/waze/MsgBox;

    iput-boolean p1, v0, Lcom/waze/MsgBox;->mIsBlocking:Z

    .line 93
    return-void
.end method
