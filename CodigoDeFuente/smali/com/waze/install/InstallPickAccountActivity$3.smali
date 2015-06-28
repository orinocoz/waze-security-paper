.class Lcom/waze/install/InstallPickAccountActivity$3;
.super Ljava/lang/Object;
.source "InstallPickAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallPickAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/InstallPickAccountActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/InstallPickAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallPickAccountActivity$3;->this$0:Lcom/waze/install/InstallPickAccountActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/install/InstallPickAccountActivity$3;)Lcom/waze/install/InstallPickAccountActivity;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/waze/install/InstallPickAccountActivity$3;->this$0:Lcom/waze/install/InstallPickAccountActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "paramView"

    .prologue
    .line 58
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/install/InstallPickAccountActivity$3;->this$0:Lcom/waze/install/InstallPickAccountActivity;

    new-instance v2, Lcom/waze/install/InstallPickAccountActivity$3$1;

    invoke-direct {v2, p0}, Lcom/waze/install/InstallPickAccountActivity$3$1;-><init>(Lcom/waze/install/InstallPickAccountActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/waze/social/facebook/FacebookWrapper;->logout(Landroid/app/Activity;Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)V

    .line 74
    return-void
.end method
