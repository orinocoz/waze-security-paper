.class Lcom/waze/NativeManager$108;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ShowAlerterPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$can_send_thumbs_up:Z

.field private final synthetic val$desc:Ljava/lang/String;

.field private final synthetic val$distanceStr:Ljava/lang/String;

.field private final synthetic val$iconName:Ljava/lang/String;

.field private final synthetic val$is_cancelable:Z

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$titleStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$108;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$108;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput-object p3, p0, Lcom/waze/NativeManager$108;->val$titleStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$108;->val$desc:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$108;->val$iconName:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/NativeManager$108;->val$distanceStr:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/waze/NativeManager$108;->val$is_cancelable:Z

    iput-boolean p8, p0, Lcom/waze/NativeManager$108;->val$can_send_thumbs_up:Z

    .line 2378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/waze/NativeManager$108;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/NativeManager$108;->val$titleStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$108;->val$desc:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$108;->val$iconName:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/NativeManager$108;->val$distanceStr:Ljava/lang/String;

    .line 2381
    iget-boolean v5, p0, Lcom/waze/NativeManager$108;->val$is_cancelable:Z

    iget-boolean v6, p0, Lcom/waze/NativeManager$108;->val$can_send_thumbs_up:Z

    .line 2380
    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showAlerterPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2382
    return-void
.end method
