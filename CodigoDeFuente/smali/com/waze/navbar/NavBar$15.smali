.class Lcom/waze/navbar/NavBar$15;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->openNearingDest(Lcom/waze/main/navigate/LocationData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field startY:F

.field final synthetic this$0:Lcom/waze/navbar/NavBar;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$15;->this$0:Lcom/waze/navbar/NavBar;

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/navbar/NavBar$15;->startY:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const v4, 0x7f090465

    const/4 v0, 0x1

    const/high16 v3, 0x4220

    .line 1177
    iget-object v1, p0, Lcom/waze/navbar/NavBar$15;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->nearingDisplayed:Z
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$12(Lcom/waze/navbar/NavBar;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1190
    :cond_0
    :goto_0
    return v0

    .line 1179
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 1180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/waze/navbar/NavBar$15;->startY:F

    goto :goto_0

    .line 1181
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1182
    iget-object v1, p0, Lcom/waze/navbar/NavBar$15;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$18(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/waze/navbar/NavBar$15;->startY:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    .line 1183
    iget-object v1, p0, Lcom/waze/navbar/NavBar$15;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    .line 1184
    :cond_3
    iget-object v1, p0, Lcom/waze/navbar/NavBar$15;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$18(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;->bNearingMinimized:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/waze/navbar/NavBar$15;->startY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/waze/navbar/NavBar$15;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    .line 1187
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1188
    const/4 v1, 0x0

    iput v1, p0, Lcom/waze/navbar/NavBar$15;->startY:F

    goto :goto_0
.end method
