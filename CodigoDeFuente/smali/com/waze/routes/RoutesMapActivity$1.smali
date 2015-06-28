.class Lcom/waze/routes/RoutesMapActivity$1;
.super Ljava/lang/Object;
.source "RoutesMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/routes/RoutesMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/routes/RoutesMapActivity;


# direct methods
.method constructor <init>(Lcom/waze/routes/RoutesMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/routes/RoutesMapActivity$1;->this$0:Lcom/waze/routes/RoutesMapActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity$1;->this$0:Lcom/waze/routes/RoutesMapActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/waze/routes/RoutesMapActivity;->setResult(I)V

    .line 55
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity$1;->this$0:Lcom/waze/routes/RoutesMapActivity;

    invoke-virtual {v1}, Lcom/waze/routes/RoutesMapActivity;->finish()V

    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity$1;->this$0:Lcom/waze/routes/RoutesMapActivity;

    const-class v2, Lcom/waze/routes/RoutesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity$1;->this$0:Lcom/waze/routes/RoutesMapActivity;

    invoke-virtual {v1, v0}, Lcom/waze/routes/RoutesMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method
