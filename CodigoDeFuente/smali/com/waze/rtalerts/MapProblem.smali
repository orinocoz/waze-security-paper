.class public Lcom/waze/rtalerts/MapProblem;
.super Ljava/lang/Object;
.source "MapProblem.java"


# instance fields
.field public description:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "description"

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/waze/rtalerts/MapProblem;->type:I

    .line 6
    iput-object p2, p0, Lcom/waze/rtalerts/MapProblem;->description:Ljava/lang/String;

    .line 7
    return-void
.end method
