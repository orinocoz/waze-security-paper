.class Lcom/waze/rtalerts/RTAlertsComments$1;
.super Ljava/lang/Object;
.source "RTAlertsComments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsComments;->setAddCommentButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsComments;

.field private final synthetic val$alertId:I

.field private final synthetic val$mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsComments;Lcom/waze/rtalerts/RTAlertsNativeManager;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsComments$1;->this$0:Lcom/waze/rtalerts/RTAlertsComments;

    iput-object p2, p0, Lcom/waze/rtalerts/RTAlertsComments$1;->val$mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iput p3, p0, Lcom/waze/rtalerts/RTAlertsComments$1;->val$alertId:I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsComments$1;->val$mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;

    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsComments$1;->this$0:Lcom/waze/rtalerts/RTAlertsComments;

    iget v2, p0, Lcom/waze/rtalerts/RTAlertsComments$1;->val$alertId:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/rtalerts/RTAlertsNativeManager;->postCommentValidate(Landroid/app/Activity;I)V

    .line 106
    return-void
.end method
