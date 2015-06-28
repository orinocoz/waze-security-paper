.class Lcom/waze/view/popups/AlertTicker$2;
.super Ljava/lang/Object;
.source "AlertTicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/AlertTicker;->show(ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/AlertTicker;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/AlertTicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/AlertTicker$2;->this$0:Lcom/waze/view/popups/AlertTicker;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 262
    iget-object v4, p0, Lcom/waze/view/popups/AlertTicker$2;->this$0:Lcom/waze/view/popups/AlertTicker;

    #getter for: Lcom/waze/view/popups/AlertTicker;->nCount:I
    invoke-static {v4}, Lcom/waze/view/popups/AlertTicker;->access$0(Lcom/waze/view/popups/AlertTicker;)I

    move-result v4

    new-array v3, v4, [I

    .line 263
    .local v3, nTypes:[I
    iget-object v4, p0, Lcom/waze/view/popups/AlertTicker$2;->this$0:Lcom/waze/view/popups/AlertTicker;

    #getter for: Lcom/waze/view/popups/AlertTicker;->nCount:I
    invoke-static {v4}, Lcom/waze/view/popups/AlertTicker;->access$0(Lcom/waze/view/popups/AlertTicker;)I

    move-result v4

    new-array v2, v4, [I

    .line 265
    .local v2, nIndexes:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/waze/view/popups/AlertTicker$2;->this$0:Lcom/waze/view/popups/AlertTicker;

    #getter for: Lcom/waze/view/popups/AlertTicker;->nCount:I
    invoke-static {v4}, Lcom/waze/view/popups/AlertTicker;->access$0(Lcom/waze/view/popups/AlertTicker;)I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 272
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/waze/NativeManager;->OpenTickersPopups([I[I)V

    .line 274
    const/4 v3, 0x0

    .line 275
    const/4 v2, 0x0

    .line 289
    return-void

    .line 267
    :cond_0
    iget-object v4, p0, Lcom/waze/view/popups/AlertTicker$2;->this$0:Lcom/waze/view/popups/AlertTicker;

    #getter for: Lcom/waze/view/popups/AlertTicker;->mData:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/waze/view/popups/AlertTicker;->access$1(Lcom/waze/view/popups/AlertTicker;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/user/AlertTickerData;

    .line 268
    .local v0, adata:Lcom/waze/user/AlertTickerData;
    iget v4, v0, Lcom/waze/user/AlertTickerData;->mType:I

    aput v4, v3, v1

    .line 269
    iget v4, v0, Lcom/waze/user/AlertTickerData;->mIndex:I

    aput v4, v2, v1

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
