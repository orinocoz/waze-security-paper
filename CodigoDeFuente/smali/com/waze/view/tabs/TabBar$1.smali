.class Lcom/waze/view/tabs/TabBar$1;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/tabs/TabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/tabs/TabBar;


# direct methods
.method constructor <init>(Lcom/waze/view/tabs/TabBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/tabs/TabBar$1;->this$0:Lcom/waze/view/tabs/TabBar;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 167
    .local v0, tabId:I
    iget-object v1, p0, Lcom/waze/view/tabs/TabBar$1;->this$0:Lcom/waze/view/tabs/TabBar;

    #calls: Lcom/waze/view/tabs/TabBar;->setSelected(Landroid/view/View;)V
    invoke-static {v1, p1}, Lcom/waze/view/tabs/TabBar;->access$0(Lcom/waze/view/tabs/TabBar;Landroid/view/View;)V

    .line 169
    iget-object v1, p0, Lcom/waze/view/tabs/TabBar$1;->this$0:Lcom/waze/view/tabs/TabBar;

    iget-object v1, v1, Lcom/waze/view/tabs/TabBar;->mOnTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    if-eqz v1, :cond_2

    .line 171
    const v1, 0x7f090712

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/waze/view/tabs/TabBar$1;->this$0:Lcom/waze/view/tabs/TabBar;

    iget-object v1, v1, Lcom/waze/view/tabs/TabBar;->mOnTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/waze/view/tabs/TabBar$IOnTabClickListener;->onClick(I)V

    .line 175
    :cond_0
    const v1, 0x7f090717

    if-ne v0, v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/waze/view/tabs/TabBar$1;->this$0:Lcom/waze/view/tabs/TabBar;

    iget-object v1, v1, Lcom/waze/view/tabs/TabBar;->mOnTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/waze/view/tabs/TabBar$IOnTabClickListener;->onClick(I)V

    .line 179
    :cond_1
    const v1, 0x7f090718

    if-ne v0, v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/waze/view/tabs/TabBar$1;->this$0:Lcom/waze/view/tabs/TabBar;

    iget-object v1, v1, Lcom/waze/view/tabs/TabBar;->mOnTabClickListener:Lcom/waze/view/tabs/TabBar$IOnTabClickListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/waze/view/tabs/TabBar$IOnTabClickListener;->onClick(I)V

    .line 184
    :cond_2
    return-void
.end method
