.class Lcom/waze/NativeManager$140;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->callCallbackInt(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$cb:J

.field private final synthetic val$intParam:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$140;->this$0:Lcom/waze/NativeManager;

    iput-wide p2, p0, Lcom/waze/NativeManager$140;->val$cb:J

    iput p4, p0, Lcom/waze/NativeManager$140;->val$intParam:I

    .line 2830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/waze/NativeManager$140;->this$0:Lcom/waze/NativeManager;

    iget-wide v1, p0, Lcom/waze/NativeManager$140;->val$cb:J

    iget v3, p0, Lcom/waze/NativeManager$140;->val$intParam:I

    #calls: Lcom/waze/NativeManager;->callCallbackIntNTV(JI)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/NativeManager;->access$89(Lcom/waze/NativeManager;JI)V

    .line 2833
    return-void
.end method
