.class Lcom/waze/view/bottom/BottomNotification$11;
.super Ljava/lang/Object;
.source "BottomNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/bottom/BottomNotification;->open(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/bottom/BottomNotification;


# direct methods
.method constructor <init>(Lcom/waze/view/bottom/BottomNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/bottom/BottomNotification$11;->this$0:Lcom/waze/view/bottom/BottomNotification;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$11;->this$0:Lcom/waze/view/bottom/BottomNotification;

    invoke-virtual {v0}, Lcom/waze/view/bottom/BottomNotification;->closeBottom()V

    .line 341
    return-void
.end method
