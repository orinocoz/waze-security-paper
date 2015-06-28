.class Lcom/waze/profile/PasswordRecoveryPopup$1;
.super Ljava/lang/Object;
.source "PasswordRecoveryPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/profile/PasswordRecoveryPopup$1;->this$0:Lcom/waze/profile/PasswordRecoveryPopup;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup$1;->this$0:Lcom/waze/profile/PasswordRecoveryPopup;

    #calls: Lcom/waze/profile/PasswordRecoveryPopup;->onContinueClicked()V
    invoke-static {v0}, Lcom/waze/profile/PasswordRecoveryPopup;->access$0(Lcom/waze/profile/PasswordRecoveryPopup;)V

    .line 83
    return-void
.end method
