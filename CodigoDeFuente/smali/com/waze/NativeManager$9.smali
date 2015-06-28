.class Lcom/waze/NativeManager$9;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->AddContactToDB(Ljava/lang/String;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Hash:Ljava/lang/String;

.field private final synthetic val$ID:J

.field private final synthetic val$nVersion:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$9;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$9;->val$Hash:Ljava/lang/String;

    iput-wide p3, p0, Lcom/waze/NativeManager$9;->val$ID:J

    iput p5, p0, Lcom/waze/NativeManager$9;->val$nVersion:I

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 384
    iget-object v0, p0, Lcom/waze/NativeManager$9;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$9;->val$Hash:Ljava/lang/String;

    iget-wide v2, p0, Lcom/waze/NativeManager$9;->val$ID:J

    iget v4, p0, Lcom/waze/NativeManager$9;->val$nVersion:I

    #calls: Lcom/waze/NativeManager;->AddContactToDBNTV(Ljava/lang/String;JI)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->access$25(Lcom/waze/NativeManager;Ljava/lang/String;JI)V

    .line 385
    return-void
.end method
