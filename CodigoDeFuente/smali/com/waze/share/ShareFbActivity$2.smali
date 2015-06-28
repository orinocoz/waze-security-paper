.class Lcom/waze/share/ShareFbActivity$2;
.super Ljava/lang/Object;
.source "ShareFbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareFbActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbActivity$2;->this$0:Lcom/waze/share/ShareFbActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/share/ShareFbActivity$2;->this$0:Lcom/waze/share/ShareFbActivity;

    const-class v2, Lcom/waze/share/ShareFbWithActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Friends list"

    iget-object v2, p0, Lcom/waze/share/ShareFbActivity$2;->this$0:Lcom/waze/share/ShareFbActivity;

    #calls: Lcom/waze/share/ShareFbActivity;->_friends()[Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/share/ShareFbActivity;->access$1(Lcom/waze/share/ShareFbActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/waze/share/ShareFbActivity$2;->this$0:Lcom/waze/share/ShareFbActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/waze/share/ShareFbActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    return-void
.end method
