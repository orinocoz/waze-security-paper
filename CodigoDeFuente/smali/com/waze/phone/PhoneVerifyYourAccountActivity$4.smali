.class Lcom/waze/phone/PhoneVerifyYourAccountActivity$4;
.super Ljava/lang/Object;
.source "PhoneVerifyYourAccountActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setKeyboardVisibilityListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneVerifyYourAccountActivity;

.field private final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneVerifyYourAccountActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity$4;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountActivity;

    iput-object p2, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity$4;->val$root:Landroid/view/View;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity$4;->val$root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 143
    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity$4;->val$root:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 142
    sub-int v0, v1, v2

    .line 144
    .local v0, heightDiff:I
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity$4;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountActivity;

    #getter for: Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->access$1(Lcom/waze/phone/PhoneVerifyYourAccountActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity$4;->this$0:Lcom/waze/phone/PhoneVerifyYourAccountActivity;

    #getter for: Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v3}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->access$1(Lcom/waze/phone/PhoneVerifyYourAccountActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 152
    :cond_0
    return-void
.end method
