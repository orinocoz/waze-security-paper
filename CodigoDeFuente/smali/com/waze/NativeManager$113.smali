.class Lcom/waze/NativeManager$113;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->HideAlerterPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$113;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$113;->val$layoutMgr:Lcom/waze/LayoutManager;

    .line 2465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/waze/NativeManager$113;->val$layoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->hideAlerterPopup()V

    .line 2468
    return-void
.end method
