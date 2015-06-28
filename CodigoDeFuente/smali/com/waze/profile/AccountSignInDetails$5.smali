.class Lcom/waze/profile/AccountSignInDetails$5;
.super Ljava/lang/Object;
.source "AccountSignInDetails.java"

# interfaces
.implements Lcom/waze/utils/ImageRepository$ImageRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/AccountSignInDetails;->SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/AccountSignInDetails;

.field private final synthetic val$picture:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/waze/profile/AccountSignInDetails;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/AccountSignInDetails$5;->this$0:Lcom/waze/profile/AccountSignInDetails;

    iput-object p2, p0, Lcom/waze/profile/AccountSignInDetails$5;->val$picture:Landroid/widget/ImageView;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageRetrieved(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails$5;->this$0:Lcom/waze/profile/AccountSignInDetails;

    #getter for: Lcom/waze/profile/AccountSignInDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/waze/profile/AccountSignInDetails;->access$4(Lcom/waze/profile/AccountSignInDetails;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/waze/profile/AccountSignInDetails$5$1;

    iget-object v2, p0, Lcom/waze/profile/AccountSignInDetails$5;->val$picture:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, p1}, Lcom/waze/profile/AccountSignInDetails$5$1;-><init>(Lcom/waze/profile/AccountSignInDetails$5;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method
