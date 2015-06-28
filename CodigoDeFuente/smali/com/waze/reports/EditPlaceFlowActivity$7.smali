.class Lcom/waze/reports/EditPlaceFlowActivity$7;
.super Ljava/lang/Object;
.source "EditPlaceFlowActivity.java"

# interfaces
.implements Lcom/waze/utils/ImageRepository$ImageRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFlowActivity;->myHandleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFlowActivity;

.field private final synthetic val$id:Ljava/lang/String;

.field private final synthetic val$imageThumbnailUrl:Ljava/lang/String;

.field private final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFlowActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    iput-object p2, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->val$imageThumbnailUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->val$id:Ljava/lang/String;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/EditPlaceFlowActivity$7;)Lcom/waze/reports/EditPlaceFlowActivity;
    .locals 1
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    return-object v0
.end method


# virtual methods
.method public onImageRetrieved(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$1(Lcom/waze/reports/EditPlaceFlowActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->val$imageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->val$imageThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/reports/VenueData;->replaceImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/reports/VenueData;->addNewImageId(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    const/4 v1, 0x0

    #setter for: Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$11(Lcom/waze/reports/EditPlaceFlowActivity;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$7;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    new-instance v1, Lcom/waze/reports/EditPlaceFlowActivity$7$1;

    invoke-direct {v1, p0}, Lcom/waze/reports/EditPlaceFlowActivity$7$1;-><init>(Lcom/waze/reports/EditPlaceFlowActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFlowActivity;->post(Ljava/lang/Runnable;)V

    .line 645
    return-void
.end method
