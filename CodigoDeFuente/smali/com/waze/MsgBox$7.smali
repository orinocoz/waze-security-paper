.class Lcom/waze/MsgBox$7;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->OpenMessageBoxTimeoutJavaCb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$button:Ljava/lang/String;

.field private final synthetic val$onClick:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$seconds:I

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$7;->this$0:Lcom/waze/MsgBox;

    iput p2, p0, Lcom/waze/MsgBox$7;->val$seconds:I

    iput-object p3, p0, Lcom/waze/MsgBox$7;->val$button:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/MsgBox$7;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/MsgBox$7;->val$text:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/MsgBox$7;->val$onClick:Landroid/content/DialogInterface$OnClickListener;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f09022f

    .line 364
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getRunningCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    if-nez v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 369
    .local v1, nativeManager:Lcom/waze/NativeManager;
    new-instance v0, Landroid/app/Dialog;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    const v3, 0x7f06000f

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 370
    .local v0, dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/waze/ifs/ui/ActivityBase;->setDialog(Landroid/app/Dialog;)V

    .line 371
    const v2, 0x7f030040

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 372
    iget v2, p0, Lcom/waze/MsgBox$7;->val$seconds:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 373
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 378
    :goto_1
    const v2, 0x7f090230

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 379
    const v2, 0x7f09022e

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/MsgBox$7;->val$button:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const v2, 0x7f09022b

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/MsgBox$7;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const v2, 0x7f09022c

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/MsgBox$7;->val$text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    const v2, 0x7f09022d

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/MsgBox$7$1;

    iget-object v4, p0, Lcom/waze/MsgBox$7;->val$onClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v3, p0, v0, v4}, Lcom/waze/MsgBox$7$1;-><init>(Lcom/waze/MsgBox$7;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    iget v3, p0, Lcom/waze/MsgBox$7;->val$seconds:I

    invoke-virtual {v2, v3}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 376
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v2}, Lcom/waze/view/timer/TimerView;->start()V

    goto :goto_1
.end method
