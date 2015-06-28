.class Lcom/waze/install/GuidedTourActivity$1$2;
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
    iput-object p1, p0, Lcom/waze/install/GuidedTourActivity$1$2;->this$1:Lcom/waze/install/GuidedTourActivity$1;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 4
    .parameter "result"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 128
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 131
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 133
    const-string v1, "SOCIAL_UPGRADE_FACEBOOK_DECLINE"

    .line 134
    const/4 v2, 0x1

    .line 132
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    :cond_0
    return-void
.end method
