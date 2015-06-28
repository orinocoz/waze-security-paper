.class Lcom/waze/reports/EditMapLocationFragment$3;
.super Ljava/lang/Object;
.source "EditMapLocationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditMapLocationFragment;->setUpFragment()V
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
    iput-object p1, p0, Lcom/waze/reports/EditMapLocationFragment$3;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment$3;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mDoneEnabled:Z
    invoke-static {v0}, Lcom/waze/reports/EditMapLocationFragment;->access$6(Lcom/waze/reports/EditMapLocationFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment$3;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditMapLocationFragment;->access$1(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_MAP_CENTER:I

    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$3;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    iget-object v2, v2, Lcom/waze/reports/EditMapLocationFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 131
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment$3;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditMapLocationFragment;->access$1(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->getMapCenter()V

    .line 133
    :cond_0
    return-void
.end method
