.class Lcom/waze/navigate/AddressOptionsActivity$3$1;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressOptionsActivity$3;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$3$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$3;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$3$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$3;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity$3;->access$0(Lcom/waze/navigate/AddressOptionsActivity$3;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity;->access$10(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    .local v0, resultIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$3$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$3;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity$3;->access$0(Lcom/waze/navigate/AddressOptionsActivity$3;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v1

    const v2, 0x800f

    invoke-virtual {v1, v2, v0}, Lcom/waze/navigate/AddressOptionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 299
    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$3$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$3;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity$3;->access$0(Lcom/waze/navigate/AddressOptionsActivity$3;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/navigate/AddressOptionsActivity;->finish()V

    .line 300
    return-void
.end method
