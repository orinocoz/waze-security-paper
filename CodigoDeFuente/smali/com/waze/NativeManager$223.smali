.class Lcom/waze/NativeManager$223;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->setMenuButtonFollowing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$nWatchingNumber:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$223;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$223;->val$nWatchingNumber:I

    .line 6062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6065
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6067
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 6068
    const/4 v1, 0x2

    iget v2, p0, Lcom/waze/NativeManager$223;->val$nWatchingNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/LayoutManager;->setMenuButtonType(II)V

    .line 6070
    :cond_0
    return-void
.end method
