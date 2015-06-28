.class Lcom/waze/phone/PhoneNumberSignInActivity$4;
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
    iput-object p1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$4;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$4;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const-class v2, Lcom/waze/phone/ChooseCountryPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$4;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/waze/phone/PhoneNumberSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 276
    return-void
.end method
