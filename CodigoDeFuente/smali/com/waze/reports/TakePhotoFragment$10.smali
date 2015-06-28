.class Lcom/waze/reports/TakePhotoFragment$10;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TakePhotoFragment;->onError()V
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
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$10;->this$0:Lcom/waze/reports/TakePhotoFragment;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$10;->this$0:Lcom/waze/reports/TakePhotoFragment;

    invoke-virtual {v0}, Lcom/waze/reports/TakePhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 365
    return-void
.end method
