.class Lcom/waze/phone/PhoneNumberSignInActivity$5;
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
    iput-object p1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$5;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$5;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$5;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$5;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$5;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-virtual {v0, p1}, Lcom/waze/phone/PhoneNumberSignInActivity;->SendPhone(Landroid/view/View;)V

    .line 289
    :cond_0
    return-void
.end method
