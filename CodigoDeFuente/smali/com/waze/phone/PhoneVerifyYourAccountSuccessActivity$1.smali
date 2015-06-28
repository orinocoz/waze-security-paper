.class Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity$1;
.super Ljava/lang/Object;
.source "PhoneVerifyYourAccountSuccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->setResult(I)V

    .line 33
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->finish()V

    .line 34
    return-void
.end method
