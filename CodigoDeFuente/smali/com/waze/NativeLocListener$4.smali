.class Lcom/waze/NativeLocListener$4;
.super Ljava/lang/Object;
.source "NativeLocListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeLocListener;->setCompass(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeLocListener;

.field private final synthetic val$nCompass:I


# direct methods
.method constructor <init>(Lcom/waze/NativeLocListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeLocListener$4;->this$0:Lcom/waze/NativeLocListener;

    iput p2, p0, Lcom/waze/NativeLocListener$4;->val$nCompass:I

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/waze/NativeLocListener$4;->this$0:Lcom/waze/NativeLocListener;

    iget v1, p0, Lcom/waze/NativeLocListener$4;->val$nCompass:I

    #calls: Lcom/waze/NativeLocListener;->SetCompassNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/NativeLocListener;->access$13(Lcom/waze/NativeLocListener;I)V

    .line 634
    return-void
.end method
