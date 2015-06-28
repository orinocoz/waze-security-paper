.class Lcom/waze/MsgBox$11;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->OpenTripDialog(Ljava/lang/String;ILjava/lang/String;JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$callback:J

.field private final synthetic val$context:J

.field private final synthetic val$seconds:I

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;Ljava/lang/String;ILjava/lang/String;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$11;->this$0:Lcom/waze/MsgBox;

    iput-object p2, p0, Lcom/waze/MsgBox$11;->val$title:Ljava/lang/String;

    iput p3, p0, Lcom/waze/MsgBox$11;->val$type:I

    iput-object p4, p0, Lcom/waze/MsgBox$11;->val$text:Ljava/lang/String;

    iput-wide p5, p0, Lcom/waze/MsgBox$11;->val$callback:J

    iput-wide p7, p0, Lcom/waze/MsgBox$11;->val$context:J

    iput p9, p0, Lcom/waze/MsgBox$11;->val$seconds:I

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 473
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/MainActivity;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/waze/MsgBox$11;->this$0:Lcom/waze/MsgBox;

    iget-object v1, p0, Lcom/waze/MsgBox$11;->val$title:Ljava/lang/String;

    iget v2, p0, Lcom/waze/MsgBox$11;->val$type:I

    iget-object v3, p0, Lcom/waze/MsgBox$11;->val$text:Ljava/lang/String;

    iget-wide v4, p0, Lcom/waze/MsgBox$11;->val$callback:J

    iget-wide v6, p0, Lcom/waze/MsgBox$11;->val$context:J

    iget v8, p0, Lcom/waze/MsgBox$11;->val$seconds:I

    #calls: Lcom/waze/MsgBox;->openTripConfirmDialog(Ljava/lang/String;ILjava/lang/String;JJI)V
    invoke-static/range {v0 .. v8}, Lcom/waze/MsgBox;->access$7(Lcom/waze/MsgBox;Ljava/lang/String;ILjava/lang/String;JJI)V

    .line 477
    :cond_0
    return-void
.end method
