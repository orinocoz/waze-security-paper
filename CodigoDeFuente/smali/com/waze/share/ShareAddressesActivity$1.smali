.class Lcom/waze/share/ShareAddressesActivity$1;
.super Ljava/lang/Object;
.source "ShareAddressesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareAddressesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareAddressesActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareAddressesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareAddressesActivity$1;->this$0:Lcom/waze/share/ShareAddressesActivity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/share/ShareAddressesActivity$1;->this$0:Lcom/waze/share/ShareAddressesActivity;

    const-class v2, Lcom/waze/PhoneList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SelectedTab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/waze/share/ShareAddressesActivity$1;->this$0:Lcom/waze/share/ShareAddressesActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/waze/share/ShareAddressesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 45
    return-void
.end method
