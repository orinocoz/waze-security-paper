.class Lcom/waze/profile/WelcomeSocialActivity$3;
.super Ljava/lang/Object;
.source "WelcomeSocialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/WelcomeSocialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/WelcomeSocialActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/WelcomeSocialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/WelcomeSocialActivity$3;->this$0:Lcom/waze/profile/WelcomeSocialActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/profile/WelcomeSocialActivity$3;->this$0:Lcom/waze/profile/WelcomeSocialActivity;

    const-class v2, Lcom/waze/profile/TwitterConnectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/profile/WelcomeSocialActivity$3;->this$0:Lcom/waze/profile/WelcomeSocialActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/profile/WelcomeSocialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    return-void
.end method
