.class public Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;
.super Ljava/lang/Object;
.source "SimpleChoiceFragment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/SimpleChoiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleChoice"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public display:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "display"
    .parameter "value"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;->display:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;->value:I

    .line 40
    return-void
.end method
