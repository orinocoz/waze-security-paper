.class Lcom/waze/view/popups/FriendsOnlinePopUp$6;
.super Ljava/lang/Object;
.source "FriendsOnlinePopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/FriendsOnlinePopUp;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/FriendsOnlinePopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/FriendsOnlinePopUp$6;->this$0:Lcom/waze/view/popups/FriendsOnlinePopUp;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 493
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/navigate/social/MyFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 494
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    invoke-static {v0}, Lcom/waze/AppService;->showActivity(Landroid/content/Intent;)V

    .line 497
    return-void
.end method
