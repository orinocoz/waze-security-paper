.class Lcom/waze/navigate/DriveToNativeManager$68;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->setMapPreview(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$latitude:I

.field private final synthetic val$longitude:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$68;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$68;->val$longitude:I

    iput p3, p0, Lcom/waze/navigate/DriveToNativeManager$68;->val$latitude:I

    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$68;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$68;->val$longitude:I

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$68;->val$latitude:I

    #calls: Lcom/waze/navigate/DriveToNativeManager;->setMapPreviewNTV(II)V
    invoke-static {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->access$62(Lcom/waze/navigate/DriveToNativeManager;II)V

    .line 1667
    return-void
.end method
