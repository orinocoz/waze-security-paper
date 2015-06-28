.class Lcom/waze/NativeManager$145;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->PreparePoi(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$iID:I

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$promotionUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$145;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$145;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput p3, p0, Lcom/waze/NativeManager$145;->val$iID:I

    iput-object p4, p0, Lcom/waze/NativeManager$145;->val$promotionUrl:Ljava/lang/String;

    .line 2933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/waze/NativeManager$145;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget v1, p0, Lcom/waze/NativeManager$145;->val$iID:I

    iget-object v2, p0, Lcom/waze/NativeManager$145;->val$promotionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/waze/LayoutManager;->preparePoi(ILjava/lang/String;)V

    .line 2936
    return-void
.end method
