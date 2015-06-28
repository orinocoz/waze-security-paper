.class Lcom/waze/NativeManager$109;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ShowFriendsOnlinePopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$nTimer:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$109;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$109;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput p3, p0, Lcom/waze/NativeManager$109;->val$nTimer:I

    .line 2397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/waze/NativeManager$109;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget v1, p0, Lcom/waze/NativeManager$109;->val$nTimer:I

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->OpenFriendsOnlinePopUp(I)V

    .line 2400
    return-void
.end method
