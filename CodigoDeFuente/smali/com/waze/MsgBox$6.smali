.class Lcom/waze/MsgBox$6;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->OpenMessageBoxTimeoutCb(Ljava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$callback:J

.field private final synthetic val$seconds:I

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$6;->this$0:Lcom/waze/MsgBox;

    iput p2, p0, Lcom/waze/MsgBox$6;->val$seconds:I

    iput-object p3, p0, Lcom/waze/MsgBox$6;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/MsgBox$6;->val$text:Ljava/lang/String;

    iput-wide p5, p0, Lcom/waze/MsgBox$6;->val$callback:J

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/MsgBox$6;)Lcom/waze/MsgBox;
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/waze/MsgBox$6;->this$0:Lcom/waze/MsgBox;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v5, 0x7f09022c

    const v4, 0x7f09022f

    .line 316
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getRunningCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    if-nez v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 321
    .local v1, nativeManager:Lcom/waze/NativeManager;
    new-instance v0, Landroid/app/Dialog;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    const v3, 0x7f06000f

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 322
    .local v0, dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/waze/ifs/ui/ActivityBase;->setDialog(Landroid/app/Dialog;)V

    .line 323
    const v2, 0x7f030040

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 324
    iget v2, p0, Lcom/waze/MsgBox$6;->val$seconds:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 325
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 330
    :goto_1
    const v2, 0x7f090230

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const v2, 0x7f09022e

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_OK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const v2, 0x7f09022b

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/MsgBox$6;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/MsgBox$6;->val$text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {v1}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 337
    :cond_2
    const v2, 0x7f09022d

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/MsgBox$6$1;

    iget-wide v4, p0, Lcom/waze/MsgBox$6;->val$callback:J

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/waze/MsgBox$6$1;-><init>(Lcom/waze/MsgBox$6;Landroid/app/Dialog;J)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 327
    :cond_3
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    iget v3, p0, Lcom/waze/MsgBox$6;->val$seconds:I

    invoke-virtual {v2, v3}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 328
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2}, Lcom/waze/view/timer/TimerView;->start()V

    goto :goto_1
.end method
