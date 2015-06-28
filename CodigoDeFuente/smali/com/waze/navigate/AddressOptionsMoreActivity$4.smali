.class Lcom/waze/navigate/AddressOptionsMoreActivity$4;
.super Ljava/lang/Object;
.source "AddressOptionsMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsMoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsMoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 114
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->isAdditionalAddToFavorites:Z
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$2(Lcom/waze/navigate/AddressOptionsMoreActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    const-class v3, Lcom/waze/navigate/AddFavoriteNameActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "AddressItem"

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/waze/navigate/AddressOptionsMoreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 127
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    .line 123
    .local v1, nm:Lcom/waze/navigate/DriveToNativeManager;
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->eraseAddressItem(Lcom/waze/navigate/AddressItem;)V

    .line 124
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/waze/navigate/AddressOptionsMoreActivity;->setResult(I)V

    .line 125
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressOptionsMoreActivity;->finish()V

    goto :goto_0
.end method
