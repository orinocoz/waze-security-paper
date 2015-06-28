.class Lcom/waze/reports/TakePhotoFragment$7;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TakePhotoFragment;->onCapture(Z)V
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
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$7;->this$0:Lcom/waze/reports/TakePhotoFragment;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$7;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #calls: Lcom/waze/reports/TakePhotoFragment;->animateBlackFlashStart()V
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$8(Lcom/waze/reports/TakePhotoFragment;)V

    .line 274
    return-void
.end method
