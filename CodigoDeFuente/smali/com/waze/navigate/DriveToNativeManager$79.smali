.class Lcom/waze/navigate/DriveToNativeManager$79;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->centerMapInAddressOptionsView(IIIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$icon:Ljava/lang/String;

.field private final synthetic val$index:I

.field private final synthetic val$latitude:I

.field private final synthetic val$longitude:I

.field private final synthetic val$setScreen:Z


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;ZIIILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$79;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-boolean p2, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$setScreen:Z

    iput p3, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$index:I

    iput p4, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$longitude:I

    iput p5, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$latitude:I

    iput-object p6, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$icon:Ljava/lang/String;

    .line 1781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$79;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->isStopPointSearchNTV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$setScreen:Z

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$79;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$index:I

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$longitude:I

    iget v3, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$latitude:I

    #calls: Lcom/waze/navigate/DriveToNativeManager;->setStopPointPreviewNTV(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->access$69(Lcom/waze/navigate/DriveToNativeManager;III)V

    .line 1789
    :goto_0
    return-void

    .line 1787
    :cond_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$79;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$longitude:I

    iget v3, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$latitude:I

    .line 1788
    iget-boolean v4, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$setScreen:Z

    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$79;->val$icon:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1787
    :goto_1
    #calls: Lcom/waze/navigate/DriveToNativeManager;->centerMapInAddressOptionsViewNTV(IIZZ)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/waze/navigate/DriveToNativeManager;->access$60(Lcom/waze/navigate/DriveToNativeManager;IIZZ)V

    goto :goto_0

    .line 1788
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
