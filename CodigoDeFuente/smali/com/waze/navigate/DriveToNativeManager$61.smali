.class Lcom/waze/navigate/DriveToNativeManager$61;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->setProductPrices(I[F[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$index:I

.field private final synthetic val$size:I

.field private final synthetic val$updated:[I

.field private final synthetic val$updatedPrices:[F


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;I[F[II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$61;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$61;->val$index:I

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$61;->val$updatedPrices:[F

    iput-object p4, p0, Lcom/waze/navigate/DriveToNativeManager$61;->val$updated:[I

    iput p5, p0, Lcom/waze/navigate/DriveToNativeManager$61;->val$size:I

    .line 1594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$61;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$61;->val$index:I

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$61;->val$updatedPrices:[F

    iget-object v3, p0, Lcom/waze/navigate/DriveToNativeManager$61;->val$updated:[I

    iget v4, p0, Lcom/waze/navigate/DriveToNativeManager$61;->val$size:I

    #calls: Lcom/waze/navigate/DriveToNativeManager;->setProductPricesNTV(I[F[II)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->access$54(Lcom/waze/navigate/DriveToNativeManager;I[F[II)V

    .line 1598
    return-void
.end method
