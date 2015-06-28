.class Lcom/waze/NativeManager$133;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->venueGet(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$allData:Z

.field private final synthetic val$id:Ljava/lang/String;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$133;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$133;->val$id:Ljava/lang/String;

    iput p3, p0, Lcom/waze/NativeManager$133;->val$type:I

    iput-boolean p4, p0, Lcom/waze/NativeManager$133;->val$allData:Z

    .line 2762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/waze/NativeManager$133;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$133;->val$id:Ljava/lang/String;

    iget v2, p0, Lcom/waze/NativeManager$133;->val$type:I

    iget-boolean v3, p0, Lcom/waze/NativeManager$133;->val$allData:Z

    #calls: Lcom/waze/NativeManager;->venueGetNTV(Ljava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/NativeManager;->access$82(Lcom/waze/NativeManager;Ljava/lang/String;IZ)V

    .line 2765
    return-void
.end method
