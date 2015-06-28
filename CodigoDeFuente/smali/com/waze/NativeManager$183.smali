.class Lcom/waze/NativeManager$183;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->editTextDialogCallback(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$callback:J

.field private final synthetic val$context:J

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$183;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$183;->val$text:Ljava/lang/String;

    iput-wide p3, p0, Lcom/waze/NativeManager$183;->val$callback:J

    iput-wide p5, p0, Lcom/waze/NativeManager$183;->val$context:J

    .line 5444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5447
    iget-object v0, p0, Lcom/waze/NativeManager$183;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$183;->val$text:Ljava/lang/String;

    iget-wide v2, p0, Lcom/waze/NativeManager$183;->val$callback:J

    iget-wide v4, p0, Lcom/waze/NativeManager$183;->val$context:J

    #calls: Lcom/waze/NativeManager;->editTextDialogCallbackNTV(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/waze/NativeManager;->access$105(Lcom/waze/NativeManager;Ljava/lang/String;JJ)V

    .line 5448
    return-void
.end method
