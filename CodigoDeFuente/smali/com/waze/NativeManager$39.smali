.class Lcom/waze/NativeManager$39;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->NativeManagerCallback(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$aCb:J

.field private final synthetic val$aRes:I

.field private final synthetic val$context:J


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;IJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$39;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$39;->val$aRes:I

    iput-wide p3, p0, Lcom/waze/NativeManager$39;->val$aCb:J

    iput-wide p5, p0, Lcom/waze/NativeManager$39;->val$context:J

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 704
    iget-object v0, p0, Lcom/waze/NativeManager$39;->this$0:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeManager$39;->val$aRes:I

    iget-wide v2, p0, Lcom/waze/NativeManager$39;->val$aCb:J

    iget-wide v4, p0, Lcom/waze/NativeManager$39;->val$context:J

    #calls: Lcom/waze/NativeManager;->CallbackNTV(IJJ)V
    invoke-static/range {v0 .. v5}, Lcom/waze/NativeManager;->access$56(Lcom/waze/NativeManager;IJJ)V

    .line 705
    return-void
.end method
