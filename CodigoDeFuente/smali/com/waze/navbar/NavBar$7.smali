.class Lcom/waze/navbar/NavBar$7;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$NumberOfFriendsDrivingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navbar/NavBar;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$7;->this$0:Lcom/waze/navbar/NavBar;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1
    .parameter "nFriends"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/waze/navbar/NavBar$7;->this$0:Lcom/waze/navbar/NavBar;

    #calls: Lcom/waze/navbar/NavBar;->setNearingFriendsNumber(I)V
    invoke-static {v0, p1}, Lcom/waze/navbar/NavBar;->access$19(Lcom/waze/navbar/NavBar;I)V

    .line 449
    return-void
.end method
