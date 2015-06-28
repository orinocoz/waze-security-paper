.class Lcom/waze/reports/AddPlaceNewFragment$1;
.super Ljava/lang/Object;
.source "AddPlaceNewFragment.java"

# interfaces
.implements Lcom/waze/reports/AddPlaceNewFragment$TextValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/AddPlaceNewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/AddPlaceNewFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceNewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceNewFragment$1;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTextValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
