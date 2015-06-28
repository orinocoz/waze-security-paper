.class Lcom/waze/PhoneList$PreviewTabsManager$1;
.super Ljava/lang/Object;
.source "PhoneList.java"

# interfaces
.implements Lcom/waze/view/tabs/TabBar$IOnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/PhoneList$PreviewTabsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/PhoneList$PreviewTabsManager;


# direct methods
.method constructor <init>(Lcom/waze/PhoneList$PreviewTabsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/PhoneList$PreviewTabsManager$1;->this$1:Lcom/waze/PhoneList$PreviewTabsManager;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3
    .parameter "tabId"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager$1;->this$1:Lcom/waze/PhoneList$PreviewTabsManager;

    #getter for: Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTab:I
    invoke-static {v1}, Lcom/waze/PhoneList$PreviewTabsManager;->access$0(Lcom/waze/PhoneList$PreviewTabsManager;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x0

    .line 429
    .local v0, tabView:Landroid/view/View;
    if-nez p1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager$1;->this$1:Lcom/waze/PhoneList$PreviewTabsManager;

    #getter for: Lcom/waze/PhoneList$PreviewTabsManager;->mHolder:Lcom/waze/PhoneList;
    invoke-static {v1}, Lcom/waze/PhoneList$PreviewTabsManager;->access$1(Lcom/waze/PhoneList$PreviewTabsManager;)Lcom/waze/PhoneList;

    move-result-object v1

    const v2, 0x7f0904eb

    invoke-virtual {v1, v2}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 433
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager$1;->this$1:Lcom/waze/PhoneList$PreviewTabsManager;

    #getter for: Lcom/waze/PhoneList$PreviewTabsManager;->mHolder:Lcom/waze/PhoneList;
    invoke-static {v1}, Lcom/waze/PhoneList$PreviewTabsManager;->access$1(Lcom/waze/PhoneList$PreviewTabsManager;)Lcom/waze/PhoneList;

    move-result-object v1

    const v2, 0x7f0904e7

    invoke-virtual {v1, v2}, Lcom/waze/PhoneList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 437
    :cond_2
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager$1;->this$1:Lcom/waze/PhoneList$PreviewTabsManager;

    #setter for: Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTab:I
    invoke-static {v1, p1}, Lcom/waze/PhoneList$PreviewTabsManager;->access$2(Lcom/waze/PhoneList$PreviewTabsManager;I)V

    .line 438
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager$1;->this$1:Lcom/waze/PhoneList$PreviewTabsManager;

    #getter for: Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/PhoneList$PreviewTabsManager;->access$3(Lcom/waze/PhoneList$PreviewTabsManager;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 439
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v1, p0, Lcom/waze/PhoneList$PreviewTabsManager$1;->this$1:Lcom/waze/PhoneList$PreviewTabsManager;

    #setter for: Lcom/waze/PhoneList$PreviewTabsManager;->mSelectedTabView:Landroid/view/View;
    invoke-static {v1, v0}, Lcom/waze/PhoneList$PreviewTabsManager;->access$4(Lcom/waze/PhoneList$PreviewTabsManager;Landroid/view/View;)V

    goto :goto_0
.end method
