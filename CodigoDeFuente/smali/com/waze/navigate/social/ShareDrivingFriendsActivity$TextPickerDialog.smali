.class public Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;
.super Landroid/app/Dialog;
.source "ShareDrivingFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/social/ShareDrivingFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextPickerDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;


# direct methods
.method public constructor <init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 390
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    .line 391
    const v2, 0x7f060063

    invoke-direct {p0, p2, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 393
    invoke-virtual {p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 394
    .local v1, window:Landroid/view/Window;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 395
    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 397
    invoke-virtual {p0, v4}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->setCancelable(Z)V

    .line 398
    invoke-virtual {p0, v4}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 400
    const v2, 0x7f030101

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->setContentView(I)V

    .line 401
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 403
    .local v0, nm:Lcom/waze/NativeManager;
    const v2, 0x7f0906a8

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 404
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SELECT_A_MESSAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    const v2, 0x7f0906b0

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 407
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_BEEP_BEEP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const v2, 0x7f0906af

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 409
    new-instance v3, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$1;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;)V

    .line 408
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const v2, 0x7f0906ae

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 419
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_CUSTOM_MESSAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    const v2, 0x7f0906ad

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 421
    new-instance v3, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$2;

    invoke-direct {v3, p0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$2;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;)V

    .line 420
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    const v2, 0x7f0906aa

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SHARE_REPLY_1:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    const v2, 0x7f0906a9

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 433
    new-instance v3, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$3;

    invoke-direct {v3, p0, v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$3;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;Lcom/waze/NativeManager;)V

    .line 432
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    const v2, 0x7f0906ac

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SHARE_REPLY_2:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const v2, 0x7f0906ab

    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 445
    new-instance v3, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$4;

    invoke-direct {v3, p0, v0}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog$4;-><init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;Lcom/waze/NativeManager;)V

    .line 444
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;)Lcom/waze/navigate/social/ShareDrivingFriendsActivity;
    .locals 1
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$TextPickerDialog;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    return-object v0
.end method
