.class Lcom/waze/reports/EditMapLocationFragment$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "EditMapLocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/EditMapLocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditMapLocationFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditMapLocationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    .line 44
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    const/4 v1, 0x1

    #setter for: Lcom/waze/reports/EditMapLocationFragment;->mShouldUnsetAddressOptionsView:Z
    invoke-static {v0, v1}, Lcom/waze/reports/EditMapLocationFragment;->access$0(Lcom/waze/reports/EditMapLocationFragment;Z)V

    .line 49
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditMapLocationFragment;->access$1(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mLon:I
    invoke-static {v1}, Lcom/waze/reports/EditMapLocationFragment;->access$2(Lcom/waze/reports/EditMapLocationFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mLat:I
    invoke-static {v2}, Lcom/waze/reports/EditMapLocationFragment;->access$3(Lcom/waze/reports/EditMapLocationFragment;)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->setAddressOptionsView(IIIZ)V

    .line 50
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditMapLocationFragment;->access$1(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mLon:I
    invoke-static {v1}, Lcom/waze/reports/EditMapLocationFragment;->access$2(Lcom/waze/reports/EditMapLocationFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mLat:I
    invoke-static {v2}, Lcom/waze/reports/EditMapLocationFragment;->access$3(Lcom/waze/reports/EditMapLocationFragment;)I

    move-result v2

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 51
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditMapLocationFragment;->access$4(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mLon:I
    invoke-static {v1}, Lcom/waze/reports/EditMapLocationFragment;->access$2(Lcom/waze/reports/EditMapLocationFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mLat:I
    invoke-static {v2}, Lcom/waze/reports/EditMapLocationFragment;->access$3(Lcom/waze/reports/EditMapLocationFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mNm:Lcom/waze/NativeManager;
    invoke-static {v3}, Lcom/waze/reports/EditMapLocationFragment;->access$4(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->getEditPlaceLocationRadius()I

    move-result v3

    iget-object v4, p0, Lcom/waze/reports/EditMapLocationFragment$1;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mAvoiderPin:Z
    invoke-static {v4}, Lcom/waze/reports/EditMapLocationFragment;->access$5(Lcom/waze/reports/EditMapLocationFragment;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->setLimitCenter(IIIZ)V

    .line 52
    return-void
.end method
