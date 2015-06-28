.class Lcom/waze/view/popups/UpdateGasPopup$2;
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
    iput-object p1, p0, Lcom/waze/view/popups/UpdateGasPopup$2;->this$0:Lcom/waze/view/popups/UpdateGasPopup;

    iput-wide p2, p0, Lcom/waze/view/popups/UpdateGasPopup$2;->val$cb:J

    iput-wide p4, p0, Lcom/waze/view/popups/UpdateGasPopup$2;->val$lcontext:J

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/waze/view/popups/UpdateGasPopup$2;->this$0:Lcom/waze/view/popups/UpdateGasPopup;

    invoke-virtual {v0}, Lcom/waze/view/popups/UpdateGasPopup;->hide()V

    .line 127
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/waze/view/popups/UpdateGasPopup$2;->val$cb:J

    iget-wide v4, p0, Lcom/waze/view/popups/UpdateGasPopup$2;->val$lcontext:J

    invoke-virtual/range {v0 .. v5}, Lcom/waze/NativeManager;->NativeManagerCallback(IJJ)V

    .line 128
    return-void
.end method
