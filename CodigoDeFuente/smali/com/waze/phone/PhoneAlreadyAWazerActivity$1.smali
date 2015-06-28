.class Lcom/waze/phone/PhoneAlreadyAWazerActivity$1;
.super Ljava/lang/Object;
.source "PhoneAlreadyAWazerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneAlreadyAWazerActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneAlreadyAWazerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$1;->this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 108
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 109
    const-string v1, "VERIFY_MY_ACCOUNT"

    .line 108
    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$1;->this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    #getter for: Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->access$0(Lcom/waze/phone/PhoneAlreadyAWazerActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$1;->this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    #getter for: Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->access$0(Lcom/waze/phone/PhoneAlreadyAWazerActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    .line 112
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$1;->this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    #getter for: Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->access$0(Lcom/waze/phone/PhoneAlreadyAWazerActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->AuthContacts()V

    .line 114
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$1;->this$0:Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    #setter for: Lcom/waze/phone/PhoneAlreadyAWazerActivity;->bIsVerifyClicked:Z
    invoke-static {v0, v3}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->access$1(Lcom/waze/phone/PhoneAlreadyAWazerActivity;Z)V

    .line 115
    return-void
.end method
