.class Lcom/waze/reports/EditPlaceFlowActivity$8;
.super Ljava/lang/Object;
.source "EditPlaceFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$from:Ljava/lang/String;

.field private final synthetic val$id:Ljava/lang/String;

.field private final synthetic val$imageListener:Lcom/waze/utils/ImageRepository$ImageRepositoryListener;

.field private final synthetic val$imageThumbnailUrl:Ljava/lang/String;

.field private final synthetic val$imageUrl:Ljava/lang/String;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFlowActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    iput-object p2, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$from:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$imageUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$imageThumbnailUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$id:Ljava/lang/String;

    iput-object p7, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$imageListener:Lcom/waze/utils/ImageRepository$ImageRepositoryListener;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 652
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$1(Lcom/waze/reports/EditPlaceFlowActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #setter for: Lcom/waze/reports/EditPlaceFlowActivity;->mRetryImageLoad:Ljava/lang/Runnable;
    invoke-static {v0, v4}, Lcom/waze/reports/EditPlaceFlowActivity;->access$12(Lcom/waze/reports/EditPlaceFlowActivity;Ljava/lang/Runnable;)V

    .line 654
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mIsSending:Z
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$13(Lcom/waze/reports/EditPlaceFlowActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$0(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFlowActivity;->access$14(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$from:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->venueUpdate(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$1(Lcom/waze/reports/EditPlaceFlowActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mIsSending:Z
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$13(Lcom/waze/reports/EditPlaceFlowActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$1(Lcom/waze/reports/EditPlaceFlowActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$imageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$imageThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/reports/VenueData;->replaceImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/reports/VenueData;->addNewImageId(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #setter for: Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/waze/reports/EditPlaceFlowActivity;->access$11(Lcom/waze/reports/EditPlaceFlowActivity;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$0(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFlowActivity;->access$14(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$from:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->venueUpdate(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_2
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$imageThumbnailUrl:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->val$imageListener:Lcom/waze/utils/ImageRepository$ImageRepositoryListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 667
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mRetryImageLoad:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$15(Lcom/waze/reports/EditPlaceFlowActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$8;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mRetryImageLoad:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$15(Lcom/waze/reports/EditPlaceFlowActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/reports/EditPlaceFlowActivity;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
