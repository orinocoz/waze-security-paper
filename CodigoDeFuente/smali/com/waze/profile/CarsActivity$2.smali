.class Lcom/waze/profile/CarsActivity$2;
.super Ljava/lang/Object;
.source "CarsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/CarsActivity;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/CarsActivity;

.field private final synthetic val$adapter:Lcom/waze/profile/CarListAdapter;

.field private final synthetic val$carList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/profile/CarsActivity;[Ljava/lang/String;Lcom/waze/profile/CarListAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/CarsActivity$2;->this$0:Lcom/waze/profile/CarsActivity;

    iput-object p2, p0, Lcom/waze/profile/CarsActivity$2;->val$carList:[Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/profile/CarsActivity$2;->val$adapter:Lcom/waze/profile/CarListAdapter;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/waze/profile/CarsActivity$2;->val$carList:[Ljava/lang/String;

    aget-object v0, v1, p3

    .line 51
    .local v0, car:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/profile/CarsActivity$2;->val$adapter:Lcom/waze/profile/CarListAdapter;

    invoke-virtual {v1, v0}, Lcom/waze/profile/CarListAdapter;->setSelection(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/waze/profile/CarsActivity$2;->this$0:Lcom/waze/profile/CarsActivity;

    #getter for: Lcom/waze/profile/CarsActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;
    invoke-static {v1}, Lcom/waze/profile/CarsActivity;->access$1(Lcom/waze/profile/CarsActivity;)Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/mywaze/MyWazeNativeManager;->setUserCar(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/waze/profile/CarsActivity$2;->this$0:Lcom/waze/profile/CarsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/waze/profile/CarsActivity;->setResult(I)V

    .line 54
    iget-object v1, p0, Lcom/waze/profile/CarsActivity$2;->this$0:Lcom/waze/profile/CarsActivity;

    invoke-virtual {v1}, Lcom/waze/profile/CarsActivity;->finish()V

    .line 55
    return-void
.end method
