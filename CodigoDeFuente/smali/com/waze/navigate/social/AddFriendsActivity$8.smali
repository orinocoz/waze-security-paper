.class Lcom/waze/navigate/social/AddFriendsActivity$8;
.super Ljava/lang/Object;
.source "AddFriendsActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFriendsActivity;->facebookPrivacyClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsActivity$8;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;)V
    .locals 3
    .parameter "settings"

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$8;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    const-class v2, Lcom/waze/mywaze/social/FacebookActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.waze.mywaze.facebooksettings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 347
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity$8;->this$0:Lcom/waze/navigate/social/AddFriendsActivity;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/social/AddFriendsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    return-void
.end method
