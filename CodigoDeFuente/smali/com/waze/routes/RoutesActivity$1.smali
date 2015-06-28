.class Lcom/waze/routes/RoutesActivity$1;
.super Ljava/lang/Object;
.source "RoutesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/routes/RoutesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/routes/RoutesActivity;


# direct methods
.method constructor <init>(Lcom/waze/routes/RoutesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/routes/RoutesActivity$1;->this$0:Lcom/waze/routes/RoutesActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/routes/RoutesActivity$1;->this$0:Lcom/waze/routes/RoutesActivity;

    const-class v2, Lcom/waze/routes/RoutesMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/routes/RoutesActivity$1;->this$0:Lcom/waze/routes/RoutesActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/waze/routes/RoutesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    return-void
.end method
