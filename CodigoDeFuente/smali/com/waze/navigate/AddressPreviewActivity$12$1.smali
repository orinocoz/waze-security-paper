.class Lcom/waze/navigate/AddressPreviewActivity$12$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$12;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$12$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$12;

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$12$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$12;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$12;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$12;->access$0(Lcom/waze/navigate/AddressPreviewActivity$12;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 751
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 752
    .local v0, resultIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$12$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$12;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$12;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$12;->access$0(Lcom/waze/navigate/AddressPreviewActivity$12;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    const v2, 0x800f

    invoke-virtual {v1, v2, v0}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 753
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$12$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$12;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$12;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$12;->access$0(Lcom/waze/navigate/AddressPreviewActivity$12;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    const/4 v2, 0x1

    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z
    invoke-static {v1, v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$22(Lcom/waze/navigate/AddressPreviewActivity;Z)V

    .line 754
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$12$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$12;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$12;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$12;->access$0(Lcom/waze/navigate/AddressPreviewActivity$12;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/navigate/AddressPreviewActivity;->finish()V

    .line 755
    return-void
.end method
