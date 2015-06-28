.class Lcom/waze/share/ShareUtility$OnShareClick$2;
.super Ljava/lang/Object;
.source "ShareUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareUtility$OnShareClick;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/share/ShareUtility$OnShareClick;

.field private final synthetic val$tip:Lcom/waze/ifs/ui/TinyTooltip;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareUtility$OnShareClick;Lcom/waze/ifs/ui/TinyTooltip;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareUtility$OnShareClick$2;->this$1:Lcom/waze/share/ShareUtility$OnShareClick;

    iput-object p2, p0, Lcom/waze/share/ShareUtility$OnShareClick$2;->val$tip:Lcom/waze/ifs/ui/TinyTooltip;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/waze/share/ShareUtility$OnShareClick$2;->val$tip:Lcom/waze/ifs/ui/TinyTooltip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/share/ShareUtility$OnShareClick$2;->val$tip:Lcom/waze/ifs/ui/TinyTooltip;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/TinyTooltip;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/waze/share/ShareUtility$OnShareClick$2;->val$tip:Lcom/waze/ifs/ui/TinyTooltip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/TinyTooltip;->dismiss(Z)V

    .line 183
    :cond_0
    return-void
.end method
