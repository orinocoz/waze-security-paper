.class Lcom/waze/phone/PhoneLoginActivity$5;
.super Ljava/lang/Object;
.source "PhoneLoginActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/PhoneLoginActivity;->setKeyboardVisibilityListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/phone/PhoneLoginActivity;

.field private final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/phone/PhoneLoginActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/PhoneLoginActivity$5;->this$0:Lcom/waze/phone/PhoneLoginActivity;

    iput-object p2, p0, Lcom/waze/phone/PhoneLoginActivity$5;->val$root:Landroid/view/View;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/waze/phone/PhoneLoginActivity$5;->val$root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 255
    iget-object v2, p0, Lcom/waze/phone/PhoneLoginActivity$5;->val$root:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 254
    sub-int v0, v1, v2

    .line 273
    .local v0, heightDiff:I
    return-void
.end method
