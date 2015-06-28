.class Lcom/waze/navigate/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/SearchActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity$2;->this$0:Lcom/waze/navigate/SearchActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity$2;->this$0:Lcom/waze/navigate/SearchActivity;

    #getter for: Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;
    invoke-static {v1}, Lcom/waze/navigate/SearchActivity;->access$4(Lcom/waze/navigate/SearchActivity;)Lcom/waze/navigate/SearchEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity$2;->this$0:Lcom/waze/navigate/SearchActivity;

    #getter for: Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v1}, Lcom/waze/navigate/SearchActivity;->access$2(Lcom/waze/navigate/SearchActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/navigate/DriveToNativeManager;->cancelStopPointAndRemoveDeparturePoi()V

    .line 176
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity$2;->this$0:Lcom/waze/navigate/SearchActivity;

    #getter for: Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/SearchActivity;->access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/waze/navigate/SearchActivity$2;->this$0:Lcom/waze/navigate/SearchActivity;

    #getter for: Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;
    invoke-static {v3}, Lcom/waze/navigate/SearchActivity;->access$4(Lcom/waze/navigate/SearchActivity;)Lcom/waze/navigate/SearchEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->setSearchResults(Ljava/util/ArrayList;)V

    .line 177
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/SearchActivity$2;->this$0:Lcom/waze/navigate/SearchActivity;

    const-class v2, Lcom/waze/navigate/SearchMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "category"

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity$2;->this$0:Lcom/waze/navigate/SearchActivity;

    #getter for: Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/navigate/SearchActivity;->access$5(Lcom/waze/navigate/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "provider"

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity$2;->this$0:Lcom/waze/navigate/SearchActivity;

    #getter for: Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;
    invoke-static {v2}, Lcom/waze/navigate/SearchActivity;->access$4(Lcom/waze/navigate/SearchActivity;)Lcom/waze/navigate/SearchEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity$2;->this$0:Lcom/waze/navigate/SearchActivity;

    const v2, 0x800b

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 182
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
