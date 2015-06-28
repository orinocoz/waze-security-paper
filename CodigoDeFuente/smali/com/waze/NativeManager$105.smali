.class Lcom/waze/NativeManager$105;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->updateUserPopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$105;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$105;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput p3, p0, Lcom/waze/NativeManager$105;->val$x:I

    iput p4, p0, Lcom/waze/NativeManager$105;->val$y:I

    .line 2201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/waze/NativeManager$105;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget v1, p0, Lcom/waze/NativeManager$105;->val$x:I

    iget v2, p0, Lcom/waze/NativeManager$105;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/LayoutManager;->UpdateUserPopup(II)V

    .line 2204
    return-void
.end method
