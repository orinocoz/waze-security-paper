.class Lcom/waze/install/LocationFailedActivity$1;
.super Ljava/lang/Object;
.source "LocationFailedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/LocationFailedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/LocationFailedActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/LocationFailedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/LocationFailedActivity$1;->this$0:Lcom/waze/install/LocationFailedActivity;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/install/LocationFailedActivity$1;->this$0:Lcom/waze/install/LocationFailedActivity;

    const-class v2, Lcom/waze/install/SelectCountryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/install/LocationFailedActivity$1;->this$0:Lcom/waze/install/LocationFailedActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/waze/install/LocationFailedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 40
    return-void
.end method
