.class Lcom/waze/NativeManager$24;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->PopupAction(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$index:I

.field private final synthetic val$type:I

.field private final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$24;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$24;->val$type:I

    iput p3, p0, Lcom/waze/NativeManager$24;->val$index:I

    iput p4, p0, Lcom/waze/NativeManager$24;->val$val:I

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 550
    iget-object v0, p0, Lcom/waze/NativeManager$24;->this$0:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeManager$24;->val$type:I

    iget v2, p0, Lcom/waze/NativeManager$24;->val$index:I

    iget v3, p0, Lcom/waze/NativeManager$24;->val$val:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/NativeManager;->PopupShownNTV(III)V

    .line 551
    return-void
.end method
