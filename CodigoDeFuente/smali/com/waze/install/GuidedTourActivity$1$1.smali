.class Lcom/waze/install/GuidedTourActivity$1$1;
.super Ljava/lang/Object;
.source "GuidedTourActivity.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/GuidedTourActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/install/GuidedTourActivity$1;


# direct methods
.method constructor <init>(Lcom/waze/install/GuidedTourActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/GuidedTourActivity$1$1;->this$1:Lcom/waze/install/GuidedTourActivity$1;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 5
    .parameter "result"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 110
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 112
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 113
    const-string v2, "FACEBOOK_DECLINE"

    .line 114
    const/4 v3, 0x1

    .line 112
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    :cond_0
    if-nez p2, :cond_1

    .line 118
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 119
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 121
    .end local v0           #nm:Lcom/waze/NativeManager;
    :cond_1
    return-void
.end method
