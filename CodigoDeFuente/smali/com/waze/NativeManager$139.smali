.class Lcom/waze/NativeManager$139;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->venueSearch(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$139;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$139;->val$x:I

    iput p3, p0, Lcom/waze/NativeManager$139;->val$y:I

    .line 2821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/waze/NativeManager$139;->this$0:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeManager$139;->val$x:I

    iget v2, p0, Lcom/waze/NativeManager$139;->val$y:I

    #calls: Lcom/waze/NativeManager;->venueSearchNTV(II)V
    invoke-static {v0, v1, v2}, Lcom/waze/NativeManager;->access$88(Lcom/waze/NativeManager;II)V

    .line 2824
    return-void
.end method
