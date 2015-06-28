.class Lcom/waze/phone/PhoneLoginActivity$1;
.super Ljava/lang/Object;
.source "PhoneLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneLoginActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneLoginActivity$1;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 133
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 134
    const-string v2, "FB_SIGN_IN"

    .line 133
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    invoke-static {}, Lcom/waze/phone/PhoneLoginActivity;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/waze/phone/PhoneLoginActivity$1;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v1, v2, v4, v3}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 164
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/waze/phone/PhoneLoginActivity$1$1;

    invoke-direct {v0, p0}, Lcom/waze/phone/PhoneLoginActivity$1$1;-><init>(Lcom/waze/phone/PhoneLoginActivity$1;)V

    .line 161
    .local v0, fbConnectListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/waze/phone/PhoneLoginActivity$1;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    .line 161
    invoke-virtual {v1, v2, v0, v3}, Lcom/waze/social/facebook/FacebookWrapper;->SignIn(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    goto :goto_0
.end method
