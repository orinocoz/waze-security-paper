.class Lcom/waze/phone/PhoneVerifyYourNumbersActivity$1;
.super Ljava/lang/Object;
.source "PhoneVerifyYourNumbersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 148
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 150
    .local v0, nm:Lcom/waze/NativeManager;
    const-string v2, "PHONE_CODE_CONTINUE"

    .line 151
    const-string v3, "VAUE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v5}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 150
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 153
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$1;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    #calls: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->getVerificationCode()Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$1(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, verificationCode:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->AuthPin(Ljava/lang/String;)V

    .line 156
    return-void
.end method
