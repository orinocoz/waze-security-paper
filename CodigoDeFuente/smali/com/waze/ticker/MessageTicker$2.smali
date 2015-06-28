.class Lcom/waze/ticker/MessageTicker$2;
.super Ljava/lang/Object;
.source "MessageTicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ticker/MessageTicker;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ticker/MessageTicker;


# direct methods
.method constructor <init>(Lcom/waze/ticker/MessageTicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ticker/MessageTicker$2;->this$0:Lcom/waze/ticker/MessageTicker;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/waze/ticker/MessageTicker$2;->this$0:Lcom/waze/ticker/MessageTicker;

    #calls: Lcom/waze/ticker/MessageTicker;->animateOut()V
    invoke-static {v0}, Lcom/waze/ticker/MessageTicker;->access$0(Lcom/waze/ticker/MessageTicker;)V

    .line 88
    return-void
.end method
