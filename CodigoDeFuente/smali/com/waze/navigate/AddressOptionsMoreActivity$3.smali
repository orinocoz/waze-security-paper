.class Lcom/waze/navigate/AddressOptionsMoreActivity$3;
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
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$1(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v5}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/navigate/AddressItem;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->centerMapInAddressOptionsView(IIIZLjava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$1(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->showOnMap(II)V

    .line 107
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressOptionsMoreActivity;->setResult(I)V

    .line 108
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressOptionsMoreActivity;->finish()V

    .line 109
    return-void
.end method
