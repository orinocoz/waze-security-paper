.class Lcom/waze/NativeManager$147;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ShowBonusWebPopup(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$iID:I

.field private final synthetic val$lat:I

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$lon:I

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;ILjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$147;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$147;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput p3, p0, Lcom/waze/NativeManager$147;->val$iID:I

    iput-object p4, p0, Lcom/waze/NativeManager$147;->val$url:Ljava/lang/String;

    iput p5, p0, Lcom/waze/NativeManager$147;->val$lat:I

    iput p6, p0, Lcom/waze/NativeManager$147;->val$lon:I

    .line 3001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/waze/NativeManager$147;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget v1, p0, Lcom/waze/NativeManager$147;->val$iID:I

    iget-object v2, p0, Lcom/waze/NativeManager$147;->val$url:Ljava/lang/String;

    iget v3, p0, Lcom/waze/NativeManager$147;->val$lat:I

    iget v4, p0, Lcom/waze/NativeManager$147;->val$lon:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/LayoutManager;->ShowBonusWebPopup(ILjava/lang/String;II)V

    .line 3004
    return-void
.end method
