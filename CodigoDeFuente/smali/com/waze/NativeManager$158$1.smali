.class Lcom/waze/NativeManager$158$1;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager$158;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/NativeManager$158;

.field private final synthetic val$listener:Lcom/waze/view/text/TypingLockListener;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager$158;Lcom/waze/view/text/TypingLockListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$158$1;->this$1:Lcom/waze/NativeManager$158;

    iput-object p2, p0, Lcom/waze/NativeManager$158$1;->val$listener:Lcom/waze/view/text/TypingLockListener;

    .line 3337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/waze/NativeManager$158$1;->val$listener:Lcom/waze/view/text/TypingLockListener;

    invoke-interface {v0}, Lcom/waze/view/text/TypingLockListener;->shouldLock()V

    .line 3341
    return-void
.end method
