.class Lcom/waze/install/InstallPickAccountActivity$3$1$1;
.super Ljava/lang/Object;
.source "InstallPickAccountActivity.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallPickAccountActivity$3$1;->onLogoutCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/install/InstallPickAccountActivity$3$1;


# direct methods
.method constructor <init>(Lcom/waze/install/InstallPickAccountActivity$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallPickAccountActivity$3$1$1;->this$2:Lcom/waze/install/InstallPickAccountActivity$3$1;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 3
    .parameter "result"
    .parameter "state"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/waze/install/InstallPickAccountActivity$3$1$1;->this$2:Lcom/waze/install/InstallPickAccountActivity$3$1;

    #getter for: Lcom/waze/install/InstallPickAccountActivity$3$1;->this$1:Lcom/waze/install/InstallPickAccountActivity$3;
    invoke-static {v0}, Lcom/waze/install/InstallPickAccountActivity$3$1;->access$0(Lcom/waze/install/InstallPickAccountActivity$3$1;)Lcom/waze/install/InstallPickAccountActivity$3;

    move-result-object v0

    #getter for: Lcom/waze/install/InstallPickAccountActivity$3;->this$0:Lcom/waze/install/InstallPickAccountActivity;
    invoke-static {v0}, Lcom/waze/install/InstallPickAccountActivity$3;->access$0(Lcom/waze/install/InstallPickAccountActivity$3;)Lcom/waze/install/InstallPickAccountActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/install/InstallPickAccountActivity;->setResult(I)V

    .line 66
    iget-object v0, p0, Lcom/waze/install/InstallPickAccountActivity$3$1$1;->this$2:Lcom/waze/install/InstallPickAccountActivity$3$1;

    #getter for: Lcom/waze/install/InstallPickAccountActivity$3$1;->this$1:Lcom/waze/install/InstallPickAccountActivity$3;
    invoke-static {v0}, Lcom/waze/install/InstallPickAccountActivity$3$1;->access$0(Lcom/waze/install/InstallPickAccountActivity$3$1;)Lcom/waze/install/InstallPickAccountActivity$3;

    move-result-object v0

    #getter for: Lcom/waze/install/InstallPickAccountActivity$3;->this$0:Lcom/waze/install/InstallPickAccountActivity;
    invoke-static {v0}, Lcom/waze/install/InstallPickAccountActivity$3;->access$0(Lcom/waze/install/InstallPickAccountActivity$3;)Lcom/waze/install/InstallPickAccountActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/install/InstallPickAccountActivity;->finish()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ERROR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CANNOT_CONFIGURE_SERVICE__PLEASE_TRY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
