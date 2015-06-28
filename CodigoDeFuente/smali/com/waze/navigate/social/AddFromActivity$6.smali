.class Lcom/waze/navigate/social/AddFromActivity$6;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFromActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFromActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$6;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 292
    iget-object v1, p0, Lcom/waze/navigate/social/AddFromActivity$6;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    invoke-virtual {v1}, Lcom/waze/navigate/social/AddFromActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 293
    .local v0, density:F
    iget-object v1, p0, Lcom/waze/navigate/social/AddFromActivity$6;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v1}, Lcom/waze/navigate/social/AddFromActivity;->access$2(Lcom/waze/navigate/social/AddFromActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v1

    const/high16 v2, 0x42f0

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/waze/autocomplete/ContactsCompletionView;->setMaxHeightLimit(I)V

    .line 294
    return-void
.end method
