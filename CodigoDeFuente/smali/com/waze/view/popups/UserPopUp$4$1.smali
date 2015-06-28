.class Lcom/waze/view/popups/UserPopUp$4$1;
.super Ljava/lang/Object;
.source "UserPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/UserPopUp$4;->onImageRetrieved(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/popups/UserPopUp$4;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$picture:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/UserPopUp$4;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/UserPopUp$4$1;->this$1:Lcom/waze/view/popups/UserPopUp$4;

    iput-object p2, p0, Lcom/waze/view/popups/UserPopUp$4$1;->val$picture:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/waze/view/popups/UserPopUp$4$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/waze/view/popups/UserPopUp$4$1;->val$picture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waze/view/popups/UserPopUp$4$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    return-void
.end method
