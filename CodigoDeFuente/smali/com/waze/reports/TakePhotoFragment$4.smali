.class Lcom/waze/reports/TakePhotoFragment$4;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TakePhotoFragment;->setUpFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/TakePhotoFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$4;->this$0:Lcom/waze/reports/TakePhotoFragment;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$4;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #calls: Lcom/waze/reports/TakePhotoFragment;->nextFlashMode()V
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$5(Lcom/waze/reports/TakePhotoFragment;)V

    .line 183
    return-void
.end method
