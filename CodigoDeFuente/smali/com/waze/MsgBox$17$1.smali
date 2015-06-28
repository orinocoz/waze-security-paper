.class Lcom/waze/MsgBox$17$1;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/MsgBox$17;

.field private final synthetic val$callback:J

.field private final synthetic val$context:J

.field private final synthetic val$valueOne:I


# direct methods
.method constructor <init>(Lcom/waze/MsgBox$17;IJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$17$1;->this$1:Lcom/waze/MsgBox$17;

    iput p2, p0, Lcom/waze/MsgBox$17$1;->val$valueOne:I

    iput-wide p3, p0, Lcom/waze/MsgBox$17$1;->val$callback:J

    iput-wide p5, p0, Lcom/waze/MsgBox$17$1;->val$context:J

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 621
    iget-object v0, p0, Lcom/waze/MsgBox$17$1;->this$1:Lcom/waze/MsgBox$17;

    #getter for: Lcom/waze/MsgBox$17;->this$0:Lcom/waze/MsgBox;
    invoke-static {v0}, Lcom/waze/MsgBox$17;->access$0(Lcom/waze/MsgBox$17;)Lcom/waze/MsgBox;

    move-result-object v0

    iget v1, p0, Lcom/waze/MsgBox$17$1;->val$valueOne:I

    iget-wide v2, p0, Lcom/waze/MsgBox$17$1;->val$callback:J

    iget-wide v4, p0, Lcom/waze/MsgBox$17$1;->val$context:J

    #calls: Lcom/waze/MsgBox;->ConfirmDialogCallbackNTV(IJJ)V
    invoke-static/range {v0 .. v5}, Lcom/waze/MsgBox;->access$10(Lcom/waze/MsgBox;IJJ)V

    .line 622
    return-void
.end method
