.class Lcom/waze/phone/PhoneNumberSignInActivity$7;
.super Ljava/lang/Object;
.source "PhoneNumberSignInActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$7;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 320
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 323
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "arg0"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$7;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    #calls: Lcom/waze/phone/PhoneNumberSignInActivity;->isValidPhoneFormat()Z
    invoke-static {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->access$1(Lcom/waze/phone/PhoneNumberSignInActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$7;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    #getter for: Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->access$2(Lcom/waze/phone/PhoneNumberSignInActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 330
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$7;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    #getter for: Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->access$2(Lcom/waze/phone/PhoneNumberSignInActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#00bcfe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$7;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    #getter for: Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->access$2(Lcom/waze/phone/PhoneNumberSignInActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 333
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$7;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    #getter for: Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->access$2(Lcom/waze/phone/PhoneNumberSignInActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#77000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
