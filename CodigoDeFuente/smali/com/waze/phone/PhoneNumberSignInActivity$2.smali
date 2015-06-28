.class Lcom/waze/phone/PhoneNumberSignInActivity$2;
.super Ljava/lang/Object;
.source "PhoneNumberSignInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneNumberSignInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneNumberSignInActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$2;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 238
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$2;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    #getter for: Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->access$0(Lcom/waze/phone/PhoneNumberSignInActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    const-string v2, "SKIP"

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-nez v1, :cond_0

    .line 241
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$2;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const-class v2, Lcom/waze/phone/PhoneKeepInMindActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$2;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/phone/PhoneNumberSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 255
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->ShowUserScreenIfNeeded()V

    .line 245
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->signup_finished()V

    .line 246
    sput-boolean v3, Lcom/waze/MainActivity;->bSignupSkipped:Z

    .line 247
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$2;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/waze/phone/PhoneNumberSignInActivity;->setResult(I)V

    .line 248
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$2;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-virtual {v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->finish()V

    goto :goto_0
.end method
