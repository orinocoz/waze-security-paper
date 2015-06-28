.class Lcom/waze/NativeManager$10;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->RemoveContactFromDB(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$ID:J


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$10;->this$0:Lcom/waze/NativeManager;

    iput-wide p2, p0, Lcom/waze/NativeManager$10;->val$ID:J

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/waze/NativeManager$10;->this$0:Lcom/waze/NativeManager;

    iget-wide v1, p0, Lcom/waze/NativeManager$10;->val$ID:J

    #calls: Lcom/waze/NativeManager;->RemoveContactFromDBNTV(J)V
    invoke-static {v0, v1, v2}, Lcom/waze/NativeManager;->access$26(Lcom/waze/NativeManager;J)V

    .line 411
    return-void
.end method
