.class Lcom/waze/phone/PhoneNumberSignInActivity$9;
.super Ljava/lang/Object;
.source "PhoneNumberSignInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneNumberSignInActivity;->AuthenticateCallback(I)V
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
    iput-object p1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$9;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 489
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$9;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    #getter for: Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->access$0(Lcom/waze/phone/PhoneNumberSignInActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 491
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$9;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const-class v2, Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$9;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const/16 v2, 0xd05

    invoke-virtual {v1, v0, v2}, Lcom/waze/phone/PhoneNumberSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 494
    return-void
.end method
