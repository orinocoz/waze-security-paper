.class Lcom/waze/NativeLocListener$GpsStatusListener$1;
.super Ljava/lang/Object;
.source "NativeLocListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeLocListener$GpsStatusListener;->onGpsStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/NativeLocListener$GpsStatusListener;

.field private final synthetic val$satelliteNumberFinal:I


# direct methods
.method constructor <init>(Lcom/waze/NativeLocListener$GpsStatusListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeLocListener$GpsStatusListener$1;->this$1:Lcom/waze/NativeLocListener$GpsStatusListener;

    iput p2, p0, Lcom/waze/NativeLocListener$GpsStatusListener$1;->val$satelliteNumberFinal:I

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/waze/NativeLocListener$GpsStatusListener$1;->this$1:Lcom/waze/NativeLocListener$GpsStatusListener;

    #getter for: Lcom/waze/NativeLocListener$GpsStatusListener;->this$0:Lcom/waze/NativeLocListener;
    invoke-static {v0}, Lcom/waze/NativeLocListener$GpsStatusListener;->access$0(Lcom/waze/NativeLocListener$GpsStatusListener;)Lcom/waze/NativeLocListener;

    move-result-object v0

    iget v1, p0, Lcom/waze/NativeLocListener$GpsStatusListener$1;->val$satelliteNumberFinal:I

    #calls: Lcom/waze/NativeLocListener;->SatteliteListenerCallbackNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/NativeLocListener;->access$5(Lcom/waze/NativeLocListener;I)V

    .line 672
    return-void
.end method
