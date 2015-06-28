.class Lcom/waze/phone/PhoneNumberSignInActivity$3;
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
    iput-object p1, p0, Lcom/waze/phone/PhoneNumberSignInActivity$3;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity$3;->this$0:Lcom/waze/phone/PhoneNumberSignInActivity;

    #getter for: Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->access$0(Lcom/waze/phone/PhoneNumberSignInActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    const-string v1, "LEARN_MORE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->getLearnMorePrivacyUrlNTV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/AppService;->OpenBrowser(Ljava/lang/String;)V

    .line 264
    return-void
.end method
