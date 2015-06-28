.class Lcom/waze/profile/AccountSignInDetails$4$1;
.super Ljava/lang/Object;
.source "AccountSignInDetails.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/AccountSignInDetails$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/profile/AccountSignInDetails$4;


# direct methods
.method constructor <init>(Lcom/waze/profile/AccountSignInDetails$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/AccountSignInDetails$4$1;->this$1:Lcom/waze/profile/AccountSignInDetails$4;

    .line 154
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

    .line 157
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 159
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/waze/profile/AccountSignInDetails;->access$3(Z)V

    .line 160
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 161
    const-string v2, "IMPORT_FB_STATUS"

    .line 162
    const-string v3, "VAUE"

    .line 163
    const-string v4, "FAILURE"

    .line 160
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    :cond_0
    if-nez p2, :cond_1

    .line 167
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 168
    const-string v2, "IMPORT_FB_STATUS"

    .line 169
    const-string v3, "VAUE"

    .line 170
    const-string v4, "SUCCESS"

    .line 167
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 172
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 174
    .end local v0           #nm:Lcom/waze/NativeManager;
    :cond_1
    return-void
.end method
