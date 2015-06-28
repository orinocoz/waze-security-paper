.class public Lcom/waze/navigate/GoneButton;
.super Lcom/waze/navigate/GenericView;
.source "GoneButton.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 8
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/waze/navigate/GenericView;-><init>(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 9
    return-void
.end method
