.class Lcom/waze/navigate/social/ShareHelpActivity$1;
.super Ljava/lang/Object;
.source "ShareHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareHelpActivity;->setOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareHelpActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareHelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareHelpActivity$1;->this$0:Lcom/waze/navigate/social/ShareHelpActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 69
    const-string v1, "SHARE_HELP_SCREEN_DRIVE_CLICK"

    invoke-static {v1, v2, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/social/ShareHelpActivity$1;->this$0:Lcom/waze/navigate/social/ShareHelpActivity;

    const-class v2, Lcom/waze/navigate/NavigateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/navigate/social/ShareHelpActivity$1;->this$0:Lcom/waze/navigate/social/ShareHelpActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/social/ShareHelpActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    return-void
.end method
