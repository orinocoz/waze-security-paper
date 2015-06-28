.class Lcom/waze/NativeManager$58;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->StartClosureObject(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$bIsServerRequest:Z

.field private final synthetic val$bisReopen:Z

.field private final synthetic val$selected:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;ZIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$58;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$58;->val$bisReopen:Z

    iput p3, p0, Lcom/waze/NativeManager$58;->val$selected:I

    iput-boolean p4, p0, Lcom/waze/NativeManager$58;->val$bIsServerRequest:Z

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 960
    iget-object v0, p0, Lcom/waze/NativeManager$58;->this$0:Lcom/waze/NativeManager;

    iget-boolean v1, p0, Lcom/waze/NativeManager$58;->val$bisReopen:Z

    iget v2, p0, Lcom/waze/NativeManager$58;->val$selected:I

    iget-boolean v3, p0, Lcom/waze/NativeManager$58;->val$bIsServerRequest:Z

    #calls: Lcom/waze/NativeManager;->StartClosureObjectNTV(ZIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/NativeManager;->access$67(Lcom/waze/NativeManager;ZIZ)V

    .line 961
    return-void
.end method
