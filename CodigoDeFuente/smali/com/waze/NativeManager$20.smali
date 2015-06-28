.class Lcom/waze/NativeManager$20;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenPopUpByIndex(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$nIndex:I

.field private final synthetic val$nType:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$20;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$20;->val$nType:I

    iput p3, p0, Lcom/waze/NativeManager$20;->val$nIndex:I

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/waze/NativeManager$20;->this$0:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeManager$20;->val$nType:I

    iget v2, p0, Lcom/waze/NativeManager$20;->val$nIndex:I

    #calls: Lcom/waze/NativeManager;->OpenPopUpByIndexNTV(II)V
    invoke-static {v0, v1, v2}, Lcom/waze/NativeManager;->access$38(Lcom/waze/NativeManager;II)V

    .line 515
    return-void
.end method
