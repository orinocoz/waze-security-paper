.class Lcom/waze/navigate/social/MyFriendsActivity$9;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity;->setupPromoBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyFriendsActivity;

.field private final synthetic val$promoLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$9;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    iput-object p2, p0, Lcom/waze/navigate/social/MyFriendsActivity$9;->val$promoLayout:Landroid/view/View;

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/MyFriendsActivity$9;)Lcom/waze/navigate/social/MyFriendsActivity;
    .locals 1
    .parameter

    .prologue
    .line 803
    iget-object v0, p0, Lcom/waze/navigate/social/MyFriendsActivity$9;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v6, 0x7f090409

    .line 807
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$9;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v4}, Lcom/waze/navigate/social/MyFriendsActivity;->access$2(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/NativeManager;->setFriendsListBannerDismissed()V

    .line 809
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 810
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 811
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 812
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$9;->val$promoLayout:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 815
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$9;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v4}, Lcom/waze/navigate/social/MyFriendsActivity;->access$6(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/autocomplete/ContactsCompletionView;->getTop()I

    move-result v1

    .line 818
    .local v1, oldTop:I
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$9;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    const v5, 0x7f09040b

    invoke-virtual {v4, v5}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 820
    .local v3, searchBox:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 821
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x3

    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 822
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 825
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$9;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    invoke-virtual {v4, v6}, Lcom/waze/navigate/social/MyFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 828
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/waze/navigate/social/MyFriendsActivity$9$1;

    invoke-direct {v5, p0, v1}, Lcom/waze/navigate/social/MyFriendsActivity$9$1;-><init>(Lcom/waze/navigate/social/MyFriendsActivity$9;I)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 849
    return-void
.end method
