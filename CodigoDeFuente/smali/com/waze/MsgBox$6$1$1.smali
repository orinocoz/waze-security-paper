.class Lcom/waze/MsgBox$6$1$1;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox$6$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/MsgBox$6$1;

.field private final synthetic val$callback:J


# direct methods
.method constructor <init>(Lcom/waze/MsgBox$6$1;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$6$1$1;->this$2:Lcom/waze/MsgBox$6$1;

    iput-wide p2, p0, Lcom/waze/MsgBox$6$1$1;->val$callback:J

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/waze/MsgBox$6$1$1;->this$2:Lcom/waze/MsgBox$6$1;

    #getter for: Lcom/waze/MsgBox$6$1;->this$1:Lcom/waze/MsgBox$6;
    invoke-static {v0}, Lcom/waze/MsgBox$6$1;->access$0(Lcom/waze/MsgBox$6$1;)Lcom/waze/MsgBox$6;

    move-result-object v0

    #getter for: Lcom/waze/MsgBox$6;->this$0:Lcom/waze/MsgBox;
    invoke-static {v0}, Lcom/waze/MsgBox$6;->access$0(Lcom/waze/MsgBox$6;)Lcom/waze/MsgBox;

    move-result-object v0

    iget-wide v1, p0, Lcom/waze/MsgBox$6$1$1;->val$callback:J

    #calls: Lcom/waze/MsgBox;->MsgBoxCallbackNTV(J)V
    invoke-static {v0, v1, v2}, Lcom/waze/MsgBox;->access$4(Lcom/waze/MsgBox;J)V

    .line 350
    return-void
.end method
