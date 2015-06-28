.class Lcom/waze/profile/AccountSignInDetails$4;
.super Ljava/lang/Object;
.source "AccountSignInDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/AccountSignInDetails;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/AccountSignInDetails;


# direct methods
.method constructor <init>(Lcom/waze/profile/AccountSignInDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/AccountSignInDetails$4;->this$0:Lcom/waze/profile/AccountSignInDetails;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    invoke-static {v3}, Lcom/waze/profile/AccountSignInDetails;->access$3(Z)V

    .line 151
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 152
    const-string v2, "IMPORT_FB"

    .line 151
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    new-instance v0, Lcom/waze/profile/AccountSignInDetails$4$1;

    invoke-direct {v0, p0}, Lcom/waze/profile/AccountSignInDetails$4$1;-><init>(Lcom/waze/profile/AccountSignInDetails$4;)V

    .line 176
    .local v0, fbConnectListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v1

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v1

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/waze/social/facebook/FacebookWrapper;->SignIn(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    goto :goto_0
.end method
