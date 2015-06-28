.class Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$2;
.super Ljava/lang/Object;
.source "PhoneVerifyYourAccountFailureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;

    const-class v2, Lcom/waze/phone/PhoneLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, i:Landroid/content/Intent;
    const-string v1, "verifyMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;

    const/16 v2, 0x10e1

    invoke-virtual {v1, v0, v2}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 71
    return-void
.end method
