.class Lcom/waze/navigate/AddressPreviewActivity$22;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Lcom/waze/DownloadResCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;

.field private final synthetic val$icon:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$22;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    iput-object p2, p0, Lcom/waze/navigate/AddressPreviewActivity$22;->val$icon:Ljava/lang/String;

    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadResCallback()V
    .locals 3

    .prologue
    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$22;->val$icon:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1349
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$22;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$30(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1351
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$22;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$30(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1353
    :cond_0
    return-void
.end method
