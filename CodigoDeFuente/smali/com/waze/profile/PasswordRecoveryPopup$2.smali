.class Lcom/waze/profile/PasswordRecoveryPopup$2;
.super Ljava/lang/Object;
.source "PasswordRecoveryPopup.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/PasswordRecoveryPopup;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/PasswordRecoveryPopup;


# direct methods
.method constructor <init>(Lcom/waze/profile/PasswordRecoveryPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/PasswordRecoveryPopup$2;->this$0:Lcom/waze/profile/PasswordRecoveryPopup;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 88
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup$2;->this$0:Lcom/waze/profile/PasswordRecoveryPopup;

    #calls: Lcom/waze/profile/PasswordRecoveryPopup;->onContinueClicked()V
    invoke-static {v0}, Lcom/waze/profile/PasswordRecoveryPopup;->access$0(Lcom/waze/profile/PasswordRecoveryPopup;)V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
