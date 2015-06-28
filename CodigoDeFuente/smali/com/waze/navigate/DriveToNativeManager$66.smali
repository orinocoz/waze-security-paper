.class Lcom/waze/navigate/DriveToNativeManager$66;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->setAddressOptionsView(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$icon:Z

.field private final synthetic val$latitude:I

.field private final synthetic val$longitude:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$66;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$66;->val$longitude:I

    iput p3, p0, Lcom/waze/navigate/DriveToNativeManager$66;->val$latitude:I

    iput-boolean p4, p0, Lcom/waze/navigate/DriveToNativeManager$66;->val$icon:Z

    .line 1640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$66;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->setAddressOptionsViewNTV()V
    invoke-static {v0}, Lcom/waze/navigate/DriveToNativeManager;->access$59(Lcom/waze/navigate/DriveToNativeManager;)V

    .line 1647
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$66;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$66;->val$longitude:I

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$66;->val$latitude:I

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/waze/navigate/DriveToNativeManager$66;->val$icon:Z

    #calls: Lcom/waze/navigate/DriveToNativeManager;->centerMapInAddressOptionsViewNTV(IIZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->access$60(Lcom/waze/navigate/DriveToNativeManager;IIZZ)V

    .line 1649
    return-void
.end method
