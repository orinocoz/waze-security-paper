.class Lcom/waze/view/popups/UpdateGasPopup$3;
.super Ljava/lang/Object;
.source "UpdateGasPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/UpdateGasPopup;->show(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/UpdateGasPopup;

.field private final synthetic val$cb:J

.field private final synthetic val$lcontext:J


# direct methods
.method constructor <init>(Lcom/waze/view/popups/UpdateGasPopup;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/UpdateGasPopup$3;->this$0:Lcom/waze/view/popups/UpdateGasPopup;

    iput-wide p2, p0, Lcom/waze/view/popups/UpdateGasPopup$3;->val$cb:J

    iput-wide p4, p0, Lcom/waze/view/popups/UpdateGasPopup$3;->val$lcontext:J

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/waze/view/popups/UpdateGasPopup$3;->this$0:Lcom/waze/view/popups/UpdateGasPopup;

    #calls: Lcom/waze/view/popups/UpdateGasPopup;->OnUpdatePrices()V
    invoke-static {v0}, Lcom/waze/view/popups/UpdateGasPopup;->access$0(Lcom/waze/view/popups/UpdateGasPopup;)V

    .line 137
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/waze/view/popups/UpdateGasPopup$3;->val$cb:J

    iget-wide v4, p0, Lcom/waze/view/popups/UpdateGasPopup$3;->val$lcontext:J

    invoke-virtual/range {v0 .. v5}, Lcom/waze/NativeManager;->NativeManagerCallback(IJJ)V

    .line 138
    return-void
.end method
