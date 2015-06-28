.class Lcom/waze/MsgBox$23$1;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox$23;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/MsgBox$23;

.field private final synthetic val$callback:J

.field private final synthetic val$context:J


# direct methods
.method constructor <init>(Lcom/waze/MsgBox$23;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$23$1;->this$1:Lcom/waze/MsgBox$23;

    iput-wide p2, p0, Lcom/waze/MsgBox$23$1;->val$callback:J

    iput-wide p4, p0, Lcom/waze/MsgBox$23$1;->val$context:J

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 799
    iget-object v0, p0, Lcom/waze/MsgBox$23$1;->this$1:Lcom/waze/MsgBox$23;

    #getter for: Lcom/waze/MsgBox$23;->this$0:Lcom/waze/MsgBox;
    invoke-static {v0}, Lcom/waze/MsgBox$23;->access$0(Lcom/waze/MsgBox$23;)Lcom/waze/MsgBox;

    move-result-object v0

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/waze/MsgBox$23$1;->val$callback:J

    iget-wide v4, p0, Lcom/waze/MsgBox$23$1;->val$context:J

    #calls: Lcom/waze/MsgBox;->ConfirmDialogCallbackNTV(IJJ)V
    invoke-static/range {v0 .. v5}, Lcom/waze/MsgBox;->access$10(Lcom/waze/MsgBox;IJJ)V

    .line 800
    return-void
.end method
