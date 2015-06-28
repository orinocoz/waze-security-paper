.class Lcom/waze/navbar/NavBar$12;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$ObjectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->showNearingDestination()V
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
    iput-object p1, p0, Lcom/waze/navbar/NavBar$12;->this$0:Lcom/waze/navbar/NavBar;

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 1119
    if-eqz p1, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/waze/navbar/NavBar$12;->this$0:Lcom/waze/navbar/NavBar;

    check-cast p1, Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    .end local p1
    #setter for: Lcom/waze/navbar/NavBar;->mAddressItemAppData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    invoke-static {v0, p1}, Lcom/waze/navbar/NavBar;->access$24(Lcom/waze/navbar/NavBar;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V

    .line 1122
    :cond_0
    return-void
.end method
