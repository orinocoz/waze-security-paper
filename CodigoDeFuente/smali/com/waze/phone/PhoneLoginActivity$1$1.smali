.class Lcom/waze/phone/PhoneLoginActivity$1$1;
.super Ljava/lang/Object;
.source "PhoneLoginActivity.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneLoginActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/phone/PhoneLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneLoginActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneLoginActivity$1$1;->this$1:Lcom/waze/phone/PhoneLoginActivity$1;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 6
    .parameter "result"
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 145
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 146
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 147
    const-string v2, "LOGIN_FB_RESPONSE"

    .line 148
    const-string v3, "VAUE"

    .line 149
    const-string v4, "FAILURE"

    .line 146
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    :cond_0
    if-nez p2, :cond_1

    .line 152
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 153
    .local v0, nm:Lcom/waze/NativeManager;
    const-string v1, "LOGIN_FB_RESPONSE"

    .line 154
    const-string v2, "VAUE"

    .line 155
    const-string v3, "SUCCESS"

    .line 153
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->SetSocialIsFirstTime(Z)V

    .line 157
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 159
    .end local v0           #nm:Lcom/waze/NativeManager;
    :cond_1
    return-void
.end method
