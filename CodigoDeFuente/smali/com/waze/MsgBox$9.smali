.class Lcom/waze/MsgBox$9;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCb(Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$callback:J

.field private final synthetic val$context:J

.field private final synthetic val$defaultYes:Z

.field private final synthetic val$seconds:I

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$textNo:Ljava/lang/String;

.field private final synthetic val$textYes:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$9;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$9;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/MsgBox$9;->val$text:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/waze/MsgBox$9;->val$defaultYes:Z

    iput-wide p5, p0, Lcom/waze/MsgBox$9;->val$callback:J

    iput-wide p7, p0, Lcom/waze/MsgBox$9;->val$context:J

    iput-object p9, p0, Lcom/waze/MsgBox$9;->val$textYes:Ljava/lang/String;

    iput-object p10, p0, Lcom/waze/MsgBox$9;->val$textNo:Ljava/lang/String;

    iput p11, p0, Lcom/waze/MsgBox$9;->val$seconds:I

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 439
    iget-object v0, p0, Lcom/waze/MsgBox$9;->this$0:Lcom/waze/MsgBox;

    iget-object v1, p0, Lcom/waze/MsgBox$9;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/MsgBox$9;->val$text:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/waze/MsgBox$9;->val$defaultYes:Z

    iget-wide v4, p0, Lcom/waze/MsgBox$9;->val$callback:J

    iget-wide v6, p0, Lcom/waze/MsgBox$9;->val$context:J

    iget-object v8, p0, Lcom/waze/MsgBox$9;->val$textYes:Ljava/lang/String;

    iget-object v9, p0, Lcom/waze/MsgBox$9;->val$textNo:Ljava/lang/String;

    iget v10, p0, Lcom/waze/MsgBox$9;->val$seconds:I

    #calls: Lcom/waze/MsgBox;->openConfirmDialog(Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v10}, Lcom/waze/MsgBox;->access$5(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;I)V

    .line 440
    return-void
.end method
