.class Lcom/waze/NativeManager$167;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->LoadUrl([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$activity:Lcom/waze/MainActivity;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/MainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$167;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$167;->val$activity:Lcom/waze/MainActivity;

    iput-object p3, p0, Lcom/waze/NativeManager$167;->val$url:Ljava/lang/String;

    .line 4230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4232
    iget-object v2, p0, Lcom/waze/NativeManager$167;->val$activity:Lcom/waze/MainActivity;

    invoke-virtual {v2}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 4233
    .local v0, mgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 4234
    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getWebView()Lcom/waze/WzWebView;

    move-result-object v1

    .line 4235
    .local v1, webView:Lcom/waze/WzWebView;
    if-eqz v1, :cond_0

    .line 4236
    iget-object v2, p0, Lcom/waze/NativeManager$167;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/waze/WzWebView;->loadUrl(Ljava/lang/String;)V

    .line 4239
    .end local v1           #webView:Lcom/waze/WzWebView;
    :cond_0
    return-void
.end method
