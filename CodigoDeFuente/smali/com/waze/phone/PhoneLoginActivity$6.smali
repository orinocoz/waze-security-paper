.class Lcom/waze/phone/PhoneLoginActivity$6;
.super Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
.source "PhoneLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneLoginActivity;->onSignClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneLoginActivity$6;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    .line 310
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Z)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 313
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 314
    const-string v3, "LOGIN_WAZER_RESPONSE"

    .line 315
    const-string v4, "VAUE"

    .line 316
    if-eqz p1, :cond_0

    .line 317
    const-string v1, "SUCCESS"

    .line 313
    :goto_0
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 321
    if-eqz p1, :cond_2

    .line 322
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/waze/NativeManager;->SetSocialIsFirstTime(Z)V

    .line 323
    iget-object v1, p0, Lcom/waze/phone/PhoneLoginActivity$6;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    #getter for: Lcom/waze/phone/PhoneLoginActivity;->bIsVerifyMode:Z
    invoke-static {v1}, Lcom/waze/phone/PhoneLoginActivity;->access$3(Lcom/waze/phone/PhoneLoginActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/phone/PhoneLoginActivity$6;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    const-class v2, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v1, "report_start"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    const-string v1, "fon_shon_rea_son"

    .line 329
    const-string v2, "UPGRADE"

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/waze/phone/PhoneLoginActivity$6;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    const/16 v2, 0x1388

    invoke-virtual {v1, v0, v2}, Lcom/waze/phone/PhoneLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 336
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    iget-object v1, p0, Lcom/waze/phone/PhoneLoginActivity$6;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/waze/phone/PhoneLoginActivity;->setResult(I)V

    .line 337
    iget-object v1, p0, Lcom/waze/phone/PhoneLoginActivity$6;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    invoke-virtual {v1}, Lcom/waze/phone/PhoneLoginActivity;->finish()V

    .line 341
    :goto_2
    return-void

    .line 318
    :cond_0
    const-string v1, "FAILURE"

    goto :goto_0

    .line 334
    :cond_1
    sput-boolean v5, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    goto :goto_1

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/waze/phone/PhoneLoginActivity$6;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    #getter for: Lcom/waze/phone/PhoneLoginActivity;->mLoginButton:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/waze/phone/PhoneLoginActivity;->access$4(Lcom/waze/phone/PhoneLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_2
.end method
