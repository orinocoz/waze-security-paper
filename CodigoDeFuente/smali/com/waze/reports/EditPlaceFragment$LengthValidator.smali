.class public Lcom/waze/reports/EditPlaceFragment$LengthValidator;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Lcom/waze/reports/EditPlaceFragment$TextValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/EditPlaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthValidator"
.end annotation


# instance fields
.field final _emptyOk:Z

.field final _minLength:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .parameter "minLength"
    .parameter "emptyOk"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/waze/reports/EditPlaceFragment$LengthValidator;->_minLength:I

    .line 64
    iput-boolean p2, p0, Lcom/waze/reports/EditPlaceFragment$LengthValidator;->_emptyOk:Z

    .line 65
    return-void
.end method


# virtual methods
.method public isTextValid(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    .line 68
    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFragment$LengthValidator;->_emptyOk:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/waze/reports/EditPlaceFragment$LengthValidator;->_minLength:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
