.class Lcom/waze/install/InstallPickAccountActivity$3$1;
.super Ljava/lang/Object;
.source "InstallPickAccountActivity.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallPickAccountActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/install/InstallPickAccountActivity$3;


# direct methods
.method constructor <init>(Lcom/waze/install/InstallPickAccountActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallPickAccountActivity$3$1;->this$1:Lcom/waze/install/InstallPickAccountActivity$3;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/install/InstallPickAccountActivity$3$1;)Lcom/waze/install/InstallPickAccountActivity$3;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/waze/install/InstallPickAccountActivity$3$1;->this$1:Lcom/waze/install/InstallPickAccountActivity$3;

    return-object v0
.end method


# virtual methods
.method public onLogoutCompleted()V
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/install/InstallPickAccountActivity$3$1;->this$1:Lcom/waze/install/InstallPickAccountActivity$3;

    #getter for: Lcom/waze/install/InstallPickAccountActivity$3;->this$0:Lcom/waze/install/InstallPickAccountActivity;
    invoke-static {v1}, Lcom/waze/install/InstallPickAccountActivity$3;->access$0(Lcom/waze/install/InstallPickAccountActivity$3;)Lcom/waze/install/InstallPickAccountActivity;

    move-result-object v1

    new-instance v2, Lcom/waze/install/InstallPickAccountActivity$3$1$1;

    invoke-direct {v2, p0}, Lcom/waze/install/InstallPickAccountActivity$3$1$1;-><init>(Lcom/waze/install/InstallPickAccountActivity$3$1;)V

    .line 71
    const/4 v3, 0x0

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/social/facebook/FacebookWrapper;->SignIn(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 72
    return-void
.end method
