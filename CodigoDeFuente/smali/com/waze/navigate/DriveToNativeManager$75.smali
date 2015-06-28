.class Lcom/waze/navigate/DriveToNativeManager$75;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->setStopPointPreview(IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$index:I

.field private final synthetic val$latitude:I

.field private final synthetic val$longitude:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$75;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$75;->val$index:I

    iput p3, p0, Lcom/waze/navigate/DriveToNativeManager$75;->val$longitude:I

    iput p4, p0, Lcom/waze/navigate/DriveToNativeManager$75;->val$latitude:I

    .line 1744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$75;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$75;->val$index:I

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$75;->val$longitude:I

    iget v3, p0, Lcom/waze/navigate/DriveToNativeManager$75;->val$latitude:I

    #calls: Lcom/waze/navigate/DriveToNativeManager;->setStopPointPreviewNTV(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->access$69(Lcom/waze/navigate/DriveToNativeManager;III)V

    .line 1748
    return-void
.end method
