.class Lcom/waze/navbar/NavBar$13;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->showNearingDestination()V
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
    iput-object p1, p0, Lcom/waze/navbar/NavBar$13;->this$0:Lcom/waze/navbar/NavBar;

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/main/navigate/LocationData;)V
    .locals 3
    .parameter "locationData"

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/waze/navbar/NavBar$13;->this$0:Lcom/waze/navbar/NavBar;

    iput-object p1, v0, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    .line 1132
    iget-object v0, p0, Lcom/waze/navbar/NavBar$13;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$0(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navbar/NavBar$13;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v2, v2, Lcom/waze/navbar/NavBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 1133
    iget-object v0, p0, Lcom/waze/navbar/NavBar$13;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$10(Lcom/waze/navbar/NavBar;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$13;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$15(Lcom/waze/navbar/NavBar;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueGet(Ljava/lang/String;I)V

    .line 1134
    return-void
.end method
