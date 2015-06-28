.class Lcom/waze/navigate/DriveToNativeManager$16;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getPriceFormat(Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private priceFormat:Ljava/lang/String;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;

.field private final synthetic val$prodId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$16;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$16;->val$prodId:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$16;->val$listener:Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;

    .line 635
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$16;->val$listener:Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$16;->priceFormat:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;->onComplete(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$16;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$16;->val$prodId:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->GetPriceFormatNTV(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$15(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$16;->priceFormat:Ljava/lang/String;

    .line 641
    return-void
.end method
