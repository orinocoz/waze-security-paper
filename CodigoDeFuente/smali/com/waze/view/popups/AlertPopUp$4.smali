.class Lcom/waze/view/popups/AlertPopUp$4;
.super Ljava/lang/Object;
.source "AlertPopUp.java"

# interfaces
.implements Lcom/waze/utils/ImageRepository$ImageRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/AlertPopUp;->fillPopUpData(Lcom/waze/rtalerts/RTAlertsAlertData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/AlertPopUp;

.field private final synthetic val$Userimg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/AlertPopUp;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/AlertPopUp$4;->this$0:Lcom/waze/view/popups/AlertPopUp;

    iput-object p2, p0, Lcom/waze/view/popups/AlertPopUp$4;->val$Userimg:Landroid/widget/ImageView;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageRetrieved(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/waze/view/popups/AlertPopUp$4;->this$0:Lcom/waze/view/popups/AlertPopUp;

    new-instance v1, Lcom/waze/view/popups/AlertPopUp$4$1;

    iget-object v2, p0, Lcom/waze/view/popups/AlertPopUp$4;->val$Userimg:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, p1}, Lcom/waze/view/popups/AlertPopUp$4$1;-><init>(Lcom/waze/view/popups/AlertPopUp$4;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/popups/AlertPopUp;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method
