.class Lcom/waze/MsgBox$14;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->confirnDialogNoHandler(Landroid/app/Dialog;JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$callback:J

.field private final synthetic val$context:J

.field private final synthetic val$retValue:I


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;IJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$14;->this$0:Lcom/waze/MsgBox;

    iput p2, p0, Lcom/waze/MsgBox$14;->val$retValue:I

    iput-wide p3, p0, Lcom/waze/MsgBox$14;->val$callback:J

    iput-wide p5, p0, Lcom/waze/MsgBox$14;->val$context:J

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 528
    iget-object v0, p0, Lcom/waze/MsgBox$14;->this$0:Lcom/waze/MsgBox;

    iget v1, p0, Lcom/waze/MsgBox$14;->val$retValue:I

    iget-wide v2, p0, Lcom/waze/MsgBox$14;->val$callback:J

    iget-wide v4, p0, Lcom/waze/MsgBox$14;->val$context:J

    #calls: Lcom/waze/MsgBox;->ConfirmDialogCallbackNTV(IJJ)V
    invoke-static/range {v0 .. v5}, Lcom/waze/MsgBox;->access$10(Lcom/waze/MsgBox;IJJ)V

    .line 529
    return-void
.end method
