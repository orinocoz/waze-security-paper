.class Lcom/waze/profile/MinimalSignInActivity$3$1;
.super Ljava/lang/Object;
.source "MinimalSignInActivity.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MinimalSignInActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/profile/MinimalSignInActivity$3;


# direct methods
.method constructor <init>(Lcom/waze/profile/MinimalSignInActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MinimalSignInActivity$3$1;->this$1:Lcom/waze/profile/MinimalSignInActivity$3;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 7
    .parameter "result"
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 104
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 106
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 107
    const-string v2, "LOGIN_FB_RESPONSE"

    .line 108
    const-string v3, "VAUE"

    .line 109
    const-string v4, "FAILURE"

    .line 106
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 111
    const-string v2, "FACEBOOK_DECLINE"

    .line 110
    invoke-virtual {v1, v2, v6, v6, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    :cond_0
    if-nez p2, :cond_1

    .line 115
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 116
    .local v0, nm:Lcom/waze/NativeManager;
    const-string v1, "LOGIN_FB_RESPONSE"

    .line 117
    const-string v2, "VAUE"

    .line 118
    const-string v3, "SUCCESS"

    .line 116
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 122
    .end local v0           #nm:Lcom/waze/NativeManager;
    :cond_1
    return-void
.end method
