.class public Lcom/waze/MainActivity$OnOkMsgSmsService;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnOkMsgSmsService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MainActivity;


# direct methods
.method protected constructor <init>(Lcom/waze/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/waze/MainActivity$OnOkMsgSmsService;->this$0:Lcom/waze/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 712
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 713
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/waze/MainActivity$OnOkMsgSmsService;->this$0:Lcom/waze/MainActivity;

    #getter for: Lcom/waze/MainActivity;->mAddressToDrive:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/MainActivity;->access$0(Lcom/waze/MainActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/MainActivity$OnOkMsgSmsService;->this$0:Lcom/waze/MainActivity;

    #getter for: Lcom/waze/MainActivity;->mAddressToDrive:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/MainActivity;->access$0(Lcom/waze/MainActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;)V

    .line 718
    iget-object v0, p0, Lcom/waze/MainActivity$OnOkMsgSmsService;->this$0:Lcom/waze/MainActivity;

    #setter for: Lcom/waze/MainActivity;->mAddressToDrive:Lcom/waze/navigate/AddressItem;
    invoke-static {v0, v2}, Lcom/waze/MainActivity;->access$1(Lcom/waze/MainActivity;Lcom/waze/navigate/AddressItem;)V

    .line 721
    :cond_0
    return-void
.end method
