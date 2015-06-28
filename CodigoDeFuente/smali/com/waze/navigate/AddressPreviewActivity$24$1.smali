.class Lcom/waze/navigate/AddressPreviewActivity$24$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$24;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$24;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$24;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$24$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$24;

    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1430
    if-ne p2, v2, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$24$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$24;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$24;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$24;->access$0(Lcom/waze/navigate/AddressPreviewActivity$24;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$24$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$24;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$24;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$24;->access$0(Lcom/waze/navigate/AddressPreviewActivity$24;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->eraseAddressItem(Lcom/waze/navigate/AddressItem;)V

    .line 1432
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$24$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$24;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$24;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$24;->access$0(Lcom/waze/navigate/AddressPreviewActivity$24;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(I)V

    .line 1433
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$24$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$24;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$24;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$24;->access$0(Lcom/waze/navigate/AddressPreviewActivity$24;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z
    invoke-static {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$22(Lcom/waze/navigate/AddressPreviewActivity;Z)V

    .line 1434
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$24$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$24;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$24;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$24;->access$0(Lcom/waze/navigate/AddressPreviewActivity$24;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/AddressPreviewActivity;->finish()V

    .line 1436
    :cond_0
    return-void
.end method
