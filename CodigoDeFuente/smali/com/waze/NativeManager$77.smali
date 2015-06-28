.class Lcom/waze/NativeManager$77;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenUserPopup(Lcom/waze/user/UserData;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$data:Lcom/waze/user/UserData;

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Lcom/waze/user/UserData;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$77;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$77;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput-object p3, p0, Lcom/waze/NativeManager$77;->val$data:Lcom/waze/user/UserData;

    iput p4, p0, Lcom/waze/NativeManager$77;->val$x:I

    iput p5, p0, Lcom/waze/NativeManager$77;->val$y:I

    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/waze/NativeManager$77;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/NativeManager$77;->val$data:Lcom/waze/user/UserData;

    iget v2, p0, Lcom/waze/NativeManager$77;->val$x:I

    iget v3, p0, Lcom/waze/NativeManager$77;->val$y:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/LayoutManager;->openUserPopup(Lcom/waze/user/UserData;II)V

    .line 1560
    return-void
.end method
