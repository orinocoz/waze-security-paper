.class Lcom/waze/profile/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/WelcomeActivity$1;->this$0:Lcom/waze/profile/WelcomeActivity;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 30
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 31
    const-string v2, "BABY_WAZER_NEXT"

    .line 30
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/profile/WelcomeActivity$1;->this$0:Lcom/waze/profile/WelcomeActivity;

    const-class v2, Lcom/waze/profile/WelcomeDoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/profile/WelcomeActivity$1;->this$0:Lcom/waze/profile/WelcomeActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/profile/WelcomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    iget-object v1, p0, Lcom/waze/profile/WelcomeActivity$1;->this$0:Lcom/waze/profile/WelcomeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/waze/profile/WelcomeActivity;->setResult(I)V

    .line 37
    iget-object v1, p0, Lcom/waze/profile/WelcomeActivity$1;->this$0:Lcom/waze/profile/WelcomeActivity;

    invoke-virtual {v1}, Lcom/waze/profile/WelcomeActivity;->finish()V

    .line 38
    return-void
.end method
