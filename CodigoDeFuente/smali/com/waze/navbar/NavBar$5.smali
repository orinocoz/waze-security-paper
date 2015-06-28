.class Lcom/waze/navbar/NavBar$5;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;-><init>(Landroid/view/View;Lcom/waze/view/navbar/BottomBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navbar/NavBar;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$5;->this$0:Lcom/waze/navbar/NavBar;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/waze/navbar/NavBar$5;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$18(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/waze/navbar/NavBar$5;->this$0:Lcom/waze/navbar/NavBar;

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->restoreNearingPanel()V

    .line 315
    :goto_0
    iget-object v0, p0, Lcom/waze/navbar/NavBar$5;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$18(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    move-result-object v1

    iget-object v0, p0, Lcom/waze/navbar/NavBar$5;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$18(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    .line 316
    iget-object v0, p0, Lcom/waze/navbar/NavBar$5;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$0(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$5;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$0(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/navigate/DriveToNativeManager;->getDestinationIdNTV()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navbar/NavBar$5;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    invoke-static {v2}, Lcom/waze/navbar/NavBar;->access$18(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->updateAddressItemAppData(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V

    .line 317
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/waze/navbar/NavBar$5;->this$0:Lcom/waze/navbar/NavBar;

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->minimizeNearingPanel()V

    goto :goto_0

    .line 315
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
