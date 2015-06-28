.class public Lcom/waze/navigate/MoreButton;
.super Lcom/waze/navigate/GenericView;
.source "MoreButton.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, 0x7f0201cb

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f07004e

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/waze/navigate/GenericView;-><init>(Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 13
    return-void
.end method


# virtual methods
.method onClick(Lcom/waze/navigate/AddressOptionsActivity;Landroid/view/View;)V
    .locals 3
    .parameter "activity"
    .parameter "v"

    .prologue
    .line 15
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":onClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method
