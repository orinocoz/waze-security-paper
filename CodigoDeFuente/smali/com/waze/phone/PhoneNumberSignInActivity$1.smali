.class Lcom/waze/phone/PhoneNumberSignInActivity$1;
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
    iput-object p1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$1;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 214
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$1;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    #getter for: Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->access$0(Lcom/waze/phone/PhoneNumberSignInActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    const-string v2, "ALREADY_WAZER_CLICKED"

    .line 215
    const/4 v3, 0x1

    .line 214
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$1;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const-class v2, Lcom/waze/phone/PhoneLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$1;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/waze/phone/PhoneNumberSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 219
    return-void
.end method
