.class Lcom/waze/MsgBox$8;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->OpenMutePopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$nType:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/waze/MsgBox$8;->val$nType:I

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x7f090408

    const v5, 0x7f09022b

    .line 403
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getRunningCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v3

    if-nez v3, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    .line 408
    .local v2, nativeManager:Lcom/waze/NativeManager;
    new-instance v0, Landroid/app/Dialog;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v3

    const v4, 0x7f060057

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 409
    .local v0, dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/waze/ifs/ui/ActivityBase;->setDialog(Landroid/app/Dialog;)V

    .line 410
    const v3, 0x7f03008a

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 411
    iget v3, p0, Lcom/waze/MsgBox$8;->val$nType:I

    if-nez v3, :cond_2

    .line 412
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SOUNDS_ON:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020063

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 424
    .local v1, hn:Landroid/os/Handler;
    new-instance v3, Lcom/waze/MsgBox$8$1;

    invoke-direct {v3, p0, v0}, Lcom/waze/MsgBox$8$1;-><init>(Lcom/waze/MsgBox$8;Landroid/app/Dialog;)V

    .line 428
    const-wide/16 v4, 0x3e8

    .line 424
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 414
    .end local v1           #hn:Landroid/os/Handler;
    :cond_2
    iget v3, p0, Lcom/waze/MsgBox$8;->val$nType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 415
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SOUNDS_OFF:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020062

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 420
    :cond_3
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ALERTS_ONLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f02004d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
