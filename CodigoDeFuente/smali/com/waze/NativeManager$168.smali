.class Lcom/waze/NativeManager$168;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->HideWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$activity:Lcom/waze/MainActivity;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/MainActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$168;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$168;->val$activity:Lcom/waze/MainActivity;

    .line 4250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4252
    iget-object v1, p0, Lcom/waze/NativeManager$168;->val$activity:Lcom/waze/MainActivity;

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 4253
    .local v0, mgr:Lcom/waze/LayoutManager;
    invoke-virtual {v0}, Lcom/waze/LayoutManager;->HideWebView()V

    .line 4254
    return-void
.end method
