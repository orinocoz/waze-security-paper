.class public Lcom/waze/ConfigItem;
.super Ljava/lang/Object;
.source "ConfigItem.java"


# instance fields
.field private category:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/waze/ConfigItem;->category:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/waze/ConfigItem;->name:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/waze/ConfigItem;->value:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "category"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/waze/ConfigItem;->category:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/waze/ConfigItem;->name:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/waze/ConfigItem;->value:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/waze/ConfigItem;->category:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/waze/ConfigItem;->name:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/waze/ConfigItem;->value:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/waze/ConfigItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/waze/ConfigItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/waze/ConfigItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/waze/ConfigItem;->category:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/waze/ConfigItem;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/waze/ConfigItem;->value:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Category: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/waze/ConfigItem;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ConfigItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/ConfigItem;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
