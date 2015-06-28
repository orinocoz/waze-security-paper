.class Lcom/waze/navigate/AddFavoriteActivity$2$1;
.super Ljava/lang/Object;
.source "AddFavoriteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddFavoriteActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddFavoriteActivity$2;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddFavoriteActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddFavoriteActivity$2$1;->this$1:Lcom/waze/navigate/AddFavoriteActivity$2;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteActivity$2$1;->this$1:Lcom/waze/navigate/AddFavoriteActivity$2;

    #getter for: Lcom/waze/navigate/AddFavoriteActivity$2;->this$0:Lcom/waze/navigate/AddFavoriteActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddFavoriteActivity$2;->access$0(Lcom/waze/navigate/AddFavoriteActivity$2;)Lcom/waze/navigate/AddFavoriteActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/AddFavoriteActivity;->access$0(Lcom/waze/navigate/AddFavoriteActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, resultIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteActivity$2$1;->this$1:Lcom/waze/navigate/AddFavoriteActivity$2;

    #getter for: Lcom/waze/navigate/AddFavoriteActivity$2;->this$0:Lcom/waze/navigate/AddFavoriteActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddFavoriteActivity$2;->access$0(Lcom/waze/navigate/AddFavoriteActivity$2;)Lcom/waze/navigate/AddFavoriteActivity;

    move-result-object v1

    const v2, 0x800f

    invoke-virtual {v1, v2, v0}, Lcom/waze/navigate/AddFavoriteActivity;->setResult(ILandroid/content/Intent;)V

    .line 174
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteActivity$2$1;->this$1:Lcom/waze/navigate/AddFavoriteActivity$2;

    #getter for: Lcom/waze/navigate/AddFavoriteActivity$2;->this$0:Lcom/waze/navigate/AddFavoriteActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddFavoriteActivity$2;->access$0(Lcom/waze/navigate/AddFavoriteActivity$2;)Lcom/waze/navigate/AddFavoriteActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/navigate/AddFavoriteActivity;->finish()V

    .line 175
    return-void
.end method
