.class Lcom/waze/MsgBox$1;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->Show([B[B[B[BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$aCbContext:J

.field private final synthetic val$aLabelCancel:[B

.field private final synthetic val$aLabelOk:[B

.field private final synthetic val$aMessage:[B

.field private final synthetic val$aTitle:[B


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;[B[B[B[BJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$1;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$1;->val$aTitle:[B

    iput-object p3, p0, Lcom/waze/MsgBox$1;->val$aMessage:[B

    iput-object p4, p0, Lcom/waze/MsgBox$1;->val$aLabelOk:[B

    iput-object p5, p0, Lcom/waze/MsgBox$1;->val$aLabelCancel:[B

    iput-wide p6, p0, Lcom/waze/MsgBox$1;->val$aCbContext:J

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 116
    iget-object v0, p0, Lcom/waze/MsgBox$1;->this$0:Lcom/waze/MsgBox;

    iget-object v1, p0, Lcom/waze/MsgBox$1;->val$aTitle:[B

    iget-object v2, p0, Lcom/waze/MsgBox$1;->val$aMessage:[B

    iget-object v3, p0, Lcom/waze/MsgBox$1;->val$aLabelOk:[B

    iget-object v4, p0, Lcom/waze/MsgBox$1;->val$aLabelCancel:[B

    iget-wide v5, p0, Lcom/waze/MsgBox$1;->val$aCbContext:J

    #calls: Lcom/waze/MsgBox;->ShowRun([B[B[B[BJ)V
    invoke-static/range {v0 .. v6}, Lcom/waze/MsgBox;->access$3(Lcom/waze/MsgBox;[B[B[B[BJ)V

    .line 117
    return-void
.end method
