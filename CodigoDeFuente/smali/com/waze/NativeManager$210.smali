.class Lcom/waze/NativeManager$210;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->openAddFav()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$210;->this$0:Lcom/waze/NativeManager;

    .line 5842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5845
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 5846
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_0

    .line 5847
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/waze/navigate/AddFavoriteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5848
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "AddressType"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5849
    invoke-virtual {v1, v0}, Lcom/waze/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 5851
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
