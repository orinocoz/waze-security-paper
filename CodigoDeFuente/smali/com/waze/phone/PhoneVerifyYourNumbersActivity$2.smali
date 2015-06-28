.class Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;
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
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 162
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 163
    const-string v1, "RESEND_CODE"

    .line 164
    const-string v2, "VAUE"

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v4}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 162
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 168
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CHOOSE_METHOD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mDisplayOptions:[Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$2(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;

    invoke-direct {v3, p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;-><init>(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)V

    .line 167
    invoke-static {v0, v1, v2, v3}, Lcom/waze/settings/SettingsUtils;->showSubmenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/waze/settings/SettingsDialogListener;)V

    .line 214
    return-void
.end method
