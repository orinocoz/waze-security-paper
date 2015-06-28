.class Lcom/waze/navigate/social/MyFriendsActivity$9$1;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/MyFriendsActivity$9;

.field private final synthetic val$oldTop:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity$9;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$9$1;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$9;

    iput p2, p0, Lcom/waze/navigate/social/MyFriendsActivity$9$1;->val$oldTop:I

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 832
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$9$1;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$9;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity$9;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;
    invoke-static {v5}, Lcom/waze/navigate/social/MyFriendsActivity$9;->access$0(Lcom/waze/navigate/social/MyFriendsActivity$9;)Lcom/waze/navigate/social/MyFriendsActivity;

    move-result-object v5

    const v6, 0x7f09040b

    invoke-virtual {v5, v6}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 833
    .local v3, searchBox:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 835
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 837
    .local v1, newTop:I
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$9$1;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$9;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity$9;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;
    invoke-static {v5}, Lcom/waze/navigate/social/MyFriendsActivity$9;->access$0(Lcom/waze/navigate/social/MyFriendsActivity$9;)Lcom/waze/navigate/social/MyFriendsActivity;

    move-result-object v5

    const v6, 0x7f09040c

    invoke-virtual {v5, v6}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 838
    .local v0, listView:Landroid/view/View;
    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$9$1;->this$1:Lcom/waze/navigate/social/MyFriendsActivity$9;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity$9;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;
    invoke-static {v5}, Lcom/waze/navigate/social/MyFriendsActivity$9;->access$0(Lcom/waze/navigate/social/MyFriendsActivity$9;)Lcom/waze/navigate/social/MyFriendsActivity;

    move-result-object v5

    const v6, 0x7f09040d

    invoke-virtual {v5, v6}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 840
    .local v2, noFriends:Landroid/view/View;
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$9$1;->val$oldTop:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    invoke-direct {v4, v7, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 841
    .local v4, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 842
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 844
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 845
    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 846
    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 847
    return-void
.end method
