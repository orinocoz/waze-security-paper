.class public Lcom/waze/main/navigate/NavigationItem;
.super Ljava/lang/Object;
.source "NavigationItem.java"


# instance fields
.field public address:Ljava/lang/String;

.field public distance:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public instruction:I

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "label"
    .parameter "distance"
    .parameter "address"
    .parameter "icon"
    .parameter "instruction"

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationItem;->label:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/waze/main/navigate/NavigationItem;->distance:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/waze/main/navigate/NavigationItem;->address:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/waze/main/navigate/NavigationItem;->icon:Ljava/lang/String;

    .line 10
    iput p5, p0, Lcom/waze/main/navigate/NavigationItem;->instruction:I

    .line 11
    return-void
.end method
