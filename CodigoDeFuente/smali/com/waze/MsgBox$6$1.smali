.class Lcom/waze/MsgBox$6$1;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/MsgBox$6;

.field private final synthetic val$callback:J

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/waze/MsgBox$6;Landroid/app/Dialog;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$6$1;->this$1:Lcom/waze/MsgBox$6;

    iput-object p2, p0, Lcom/waze/MsgBox$6$1;->val$dialog:Landroid/app/Dialog;

    iput-wide p3, p0, Lcom/waze/MsgBox$6$1;->val$callback:J

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/MsgBox$6$1;)Lcom/waze/MsgBox$6;
    .locals 1
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/waze/MsgBox$6$1;->this$1:Lcom/waze/MsgBox$6;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/waze/MsgBox$6$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 341
    iget-object v1, p0, Lcom/waze/MsgBox$6$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    iget-wide v1, p0, Lcom/waze/MsgBox$6$1;->val$callback:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 347
    new-instance v0, Lcom/waze/MsgBox$6$1$1;

    iget-wide v1, p0, Lcom/waze/MsgBox$6$1;->val$callback:J

    invoke-direct {v0, p0, v1, v2}, Lcom/waze/MsgBox$6$1$1;-><init>(Lcom/waze/MsgBox$6$1;J)V

    .line 352
    .local v0, doRun:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 354
    .end local v0           #doRun:Ljava/lang/Runnable;
    :cond_0
    return-void

    .line 343
    :catch_0
    move-exception v1

    goto :goto_0
.end method
