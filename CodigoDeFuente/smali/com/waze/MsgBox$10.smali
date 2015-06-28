.class Lcom/waze/MsgBox$10;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->OpenChoiceDialogCustomTimeoutCb(Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$callback:J

.field private final synthetic val$cancelValue:I

.field private final synthetic val$context:J

.field private final synthetic val$defaultOption:I

.field private final synthetic val$isCancellable:Z

.field private final synthetic val$seconds:I

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$textOne:Ljava/lang/String;

.field private final synthetic val$textTwo:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;

.field private final synthetic val$valueOne:I

.field private final synthetic val$valueTwo:I


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$10;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$10;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/MsgBox$10;->val$text:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/waze/MsgBox$10;->val$isCancellable:Z

    iput p5, p0, Lcom/waze/MsgBox$10;->val$defaultOption:I

    iput p6, p0, Lcom/waze/MsgBox$10;->val$cancelValue:I

    iput-wide p7, p0, Lcom/waze/MsgBox$10;->val$callback:J

    iput-wide p9, p0, Lcom/waze/MsgBox$10;->val$context:J

    iput-object p11, p0, Lcom/waze/MsgBox$10;->val$textOne:Ljava/lang/String;

    iput p12, p0, Lcom/waze/MsgBox$10;->val$valueOne:I

    iput-object p13, p0, Lcom/waze/MsgBox$10;->val$textTwo:Ljava/lang/String;

    iput p14, p0, Lcom/waze/MsgBox$10;->val$valueTwo:I

    iput p15, p0, Lcom/waze/MsgBox$10;->val$seconds:I

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 455
    iget-object v0, p0, Lcom/waze/MsgBox$10;->this$0:Lcom/waze/MsgBox;

    iget-object v1, p0, Lcom/waze/MsgBox$10;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/MsgBox$10;->val$text:Ljava/lang/String;

    .line 456
    iget-boolean v3, p0, Lcom/waze/MsgBox$10;->val$isCancellable:Z

    iget v4, p0, Lcom/waze/MsgBox$10;->val$defaultOption:I

    iget v5, p0, Lcom/waze/MsgBox$10;->val$cancelValue:I

    .line 457
    iget-wide v6, p0, Lcom/waze/MsgBox$10;->val$callback:J

    iget-wide v8, p0, Lcom/waze/MsgBox$10;->val$context:J

    .line 458
    iget-object v10, p0, Lcom/waze/MsgBox$10;->val$textOne:Ljava/lang/String;

    iget v11, p0, Lcom/waze/MsgBox$10;->val$valueOne:I

    iget-object v12, p0, Lcom/waze/MsgBox$10;->val$textTwo:Ljava/lang/String;

    iget v13, p0, Lcom/waze/MsgBox$10;->val$valueTwo:I

    .line 459
    iget v14, p0, Lcom/waze/MsgBox$10;->val$seconds:I

    .line 455
    #calls: Lcom/waze/MsgBox;->openChoiceDialog(Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V
    invoke-static/range {v0 .. v14}, Lcom/waze/MsgBox;->access$6(Lcom/waze/MsgBox;Ljava/lang/String;Ljava/lang/String;ZIIJJLjava/lang/String;ILjava/lang/String;II)V

    .line 460
    return-void
.end method
