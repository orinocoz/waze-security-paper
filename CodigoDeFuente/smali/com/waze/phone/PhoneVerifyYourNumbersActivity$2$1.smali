.class Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;
.super Ljava/lang/Object;
.source "PhoneVerifyYourNumbersActivity.java"

# interfaces
.implements Lcom/waze/settings/SettingsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, nType:I
    if-nez p1, :cond_1

    .line 174
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 175
    const-string v3, "RESEND_VIA_TEXT"

    .line 176
    const-string v4, "VAUE"

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v6}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v6

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v6}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v2}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v2

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v2}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 191
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 192
    const-string v3, "VERIFICATION_GIVE_UP"

    .line 193
    const-string v4, "VAUE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v6}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v6

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v6}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v2}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v2

    const-class v3, Lcom/waze/phone/PhoneVerifyNumberFailure;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v0, i:Landroid/content/Intent;
    const-string v2, "AuthNumberOfRetries"

    iget-object v3, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v3}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v3

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v3}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v2}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v2

    const/4 v3, 0x0

    #setter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v2, v3}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$3(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;I)V

    .line 197
    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v2}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v2

    const/16 v3, 0xd06

    invoke-virtual {v2, v0, v3}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 212
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 178
    :cond_1
    if-ne p1, v7, :cond_0

    .line 180
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 181
    const-string v3, "RESEND_VIA_VOICE"

    .line 182
    const-string v4, "VAUE"

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v6}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v6

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v6}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    const/4 v1, 0x1

    .line 185
    goto/16 :goto_0

    .line 201
    :cond_2
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 202
    const-string v3, "ENTER_VERIFICATION_SHOWN"

    .line 203
    const-string v4, "VAUE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v6}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v6

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v6}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v3}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v3

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mHash:Ljava/lang/String;
    invoke-static {v3}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$4(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3, v1, v8}, Lcom/waze/NativeManager;->AuthPhoneNumber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v2}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v2

    #setter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->bIsResend:Z
    invoke-static {v2, v7}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$5(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;Z)V

    .line 207
    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2$1;->this$1:Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->this$0:Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
    invoke-static {v2}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;)Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    move-result-object v2

    #getter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v2}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    #setter for: Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I
    invoke-static {v2, v3}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->access$3(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;I)V

    goto :goto_1
.end method
