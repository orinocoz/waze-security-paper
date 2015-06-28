.class Lcom/waze/navigate/DriveToNativeManager$78;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$latitude:I

.field private final synthetic val$longitude:I

.field private final synthetic val$scale:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$78;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$78;->val$longitude:I

    iput p3, p0, Lcom/waze/navigate/DriveToNativeManager$78;->val$latitude:I

    iput p4, p0, Lcom/waze/navigate/DriveToNativeManager$78;->val$scale:I

    .line 1771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$78;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$78;->val$longitude:I

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$78;->val$latitude:I

    iget v3, p0, Lcom/waze/navigate/DriveToNativeManager$78;->val$scale:I

    #calls: Lcom/waze/navigate/DriveToNativeManager;->zoomOnMapNTV(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->access$72(Lcom/waze/navigate/DriveToNativeManager;III)V

    .line 1775
    return-void
.end method
