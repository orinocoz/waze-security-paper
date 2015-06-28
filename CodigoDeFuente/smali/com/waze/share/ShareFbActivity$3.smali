.class Lcom/waze/share/ShareFbActivity$3;
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
    iput-object p1, p0, Lcom/waze/share/ShareFbActivity$3;->this$0:Lcom/waze/share/ShareFbActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/share/ShareFbActivity$3;->this$0:Lcom/waze/share/ShareFbActivity;

    const-class v2, Lcom/waze/share/ShareFbLocationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/share/ShareFbActivity$3;->this$0:Lcom/waze/share/ShareFbActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/waze/share/ShareFbActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    return-void
.end method
