.class Lcom/waze/navigate/DriveToNativeManager$13;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getProduct(ILcom/waze/navigate/DriveToNativeManager$ProductListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private product:Lcom/waze/navigate/Product;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$index:I

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$ProductListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;ILcom/waze/navigate/DriveToNativeManager$ProductListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$13;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$13;->val$index:I

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$13;->val$listener:Lcom/waze/navigate/DriveToNativeManager$ProductListener;

    .line 575
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$13;->val$listener:Lcom/waze/navigate/DriveToNativeManager$ProductListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$13;->product:Lcom/waze/navigate/Product;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$ProductListener;->onComplete(Lcom/waze/navigate/Product;)V

    .line 590
    return-void
.end method

.method public event()V
    .locals 3

    .prologue
    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$13;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$13;->val$index:I

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getProductNTV(I)Lcom/waze/navigate/Product;
    invoke-static {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->access$12(Lcom/waze/navigate/DriveToNativeManager;I)Lcom/waze/navigate/Product;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$13;->product:Lcom/waze/navigate/Product;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$13;->product:Lcom/waze/navigate/Product;

    goto :goto_0
.end method
