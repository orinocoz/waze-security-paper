.class public Lcom/waze/main/navigate/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field public displayString:Ljava/lang/String;

.field public iconName:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "displayString"
    .parameter "iconName"
    .parameter "value"

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/waze/main/navigate/Category;->displayString:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/waze/main/navigate/Category;->iconName:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/waze/main/navigate/Category;->value:Ljava/lang/String;

    .line 8
    return-void
.end method
