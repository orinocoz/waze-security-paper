.class Lcom/waze/profile/MyProfileActivity$8;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MyProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/MyProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$8;->this$0:Lcom/waze/profile/MyProfileActivity;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 252
    if-eqz p2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity$8;->this$0:Lcom/waze/profile/MyProfileActivity;

    const v3, 0x7f090412

    invoke-virtual {v2, v3}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 255
    .local v0, sv:Landroid/widget/ScrollView;
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity$8;->this$0:Lcom/waze/profile/MyProfileActivity;

    const v3, 0x7f09041c

    invoke-virtual {v2, v3}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 256
    .local v1, userNameView:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 258
    .end local v0           #sv:Landroid/widget/ScrollView;
    .end local v1           #userNameView:Landroid/view/View;
    :cond_0
    return-void
.end method
