.class Lcom/waze/navigate/NavigateActivity$2;
.super Ljava/lang/Object;
.source "NavigateActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/NavigateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/NavigateActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/NavigateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity$2;->this$0:Lcom/waze/navigate/NavigateActivity;

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 4
    .parameter "ai"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$2;->this$0:Lcom/waze/navigate/NavigateActivity;

    const v1, 0x7f09046c

    invoke-virtual {v0, v1}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/waze/navigate/NavigateActivity$NavListAdapter;

    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$2;->this$0:Lcom/waze/navigate/NavigateActivity;

    .line 911
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity$2;->this$0:Lcom/waze/navigate/NavigateActivity;

    invoke-direct {v1, v2, v3, p1}, Lcom/waze/navigate/NavigateActivity$NavListAdapter;-><init>(Lcom/waze/navigate/NavigateActivity;Landroid/content/Context;[Lcom/waze/navigate/AddressItem;)V

    .line 910
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 912
    return-void
.end method
