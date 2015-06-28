.class public Lcom/waze/navigate/SortPreferences;
.super Ljava/lang/Object;
.source "SortPreferences.java"


# instance fields
.field public brand:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "brand"

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/waze/navigate/SortPreferences;->type:I

    .line 8
    iput-object p2, p0, Lcom/waze/navigate/SortPreferences;->brand:Ljava/lang/String;

    .line 9
    return-void
.end method
