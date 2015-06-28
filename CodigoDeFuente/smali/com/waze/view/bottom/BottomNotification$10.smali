.class Lcom/waze/view/bottom/BottomNotification$10;
.super Ljava/lang/Object;
.source "BottomNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/bottom/BottomNotification;->postLongMessagePoints(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/bottom/BottomNotification;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$points:I

.field private final synthetic val$timeout:I

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/view/bottom/BottomNotification;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/bottom/BottomNotification$10;->this$0:Lcom/waze/view/bottom/BottomNotification;

    iput-object p2, p0, Lcom/waze/view/bottom/BottomNotification$10;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/view/bottom/BottomNotification$10;->val$message:Ljava/lang/String;

    iput p4, p0, Lcom/waze/view/bottom/BottomNotification$10;->val$points:I

    iput p5, p0, Lcom/waze/view/bottom/BottomNotification$10;->val$timeout:I

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 310
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$10;->this$0:Lcom/waze/view/bottom/BottomNotification;

    iget-object v1, p0, Lcom/waze/view/bottom/BottomNotification$10;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/view/bottom/BottomNotification$10;->val$message:Ljava/lang/String;

    iget v3, p0, Lcom/waze/view/bottom/BottomNotification$10;->val$points:I

    iget v4, p0, Lcom/waze/view/bottom/BottomNotification$10;->val$timeout:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/view/bottom/BottomNotification;->setLongMessagePoints(Ljava/lang/String;Ljava/lang/String;II)V

    .line 311
    return-void
.end method
