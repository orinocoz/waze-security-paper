.class public Lcom/waze/view/list/MyListMenu;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "MyListMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f03008c

    invoke-virtual {p0, v1}, Lcom/waze/view/list/MyListMenu;->setContentView(I)V

    .line 32
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v8, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/view/list/ListMenuAdapter$RowData;>;"
    new-instance v0, Lcom/waze/view/list/ListMenuAdapter$RowData;

    const-string v1, "General"

    const-string v3, "general_settings"

    const-string v5, "button_arrow"

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/waze/view/list/ListMenuAdapter$RowData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lcom/waze/view/list/ListMenuAdapter$RowData;

    const-string v1, "Map"

    const-string v3, "map_settings"

    const-string v5, "button_arrow"

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/waze/view/list/ListMenuAdapter$RowData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v0, rowData:Lcom/waze/view/list/ListMenuAdapter$RowData;
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/waze/view/list/ListMenuAdapter$RowData;->setLabelFontSize(I)V

    .line 38
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/waze/view/list/ListMenuAdapter$RowData;

    .end local v0           #rowData:Lcom/waze/view/list/ListMenuAdapter$RowData;
    const-string v1, "Navigation"

    const-string v3, "traffic"

    const-string v5, "button_arrow"

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/waze/view/list/ListMenuAdapter$RowData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .restart local v0       #rowData:Lcom/waze/view/list/ListMenuAdapter$RowData;
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/waze/view/list/ListMenuAdapter$RowData;->setLabelFontSize(I)V

    .line 42
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/waze/view/list/ListMenuAdapter$RowData;

    .end local v0           #rowData:Lcom/waze/view/list/ListMenuAdapter$RowData;
    const-string v1, "Groups"

    const-string v3, "groups"

    const-string v5, "button_arrow"

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/waze/view/list/ListMenuAdapter$RowData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .restart local v0       #rowData:Lcom/waze/view/list/ListMenuAdapter$RowData;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/waze/view/list/ListMenuAdapter$RowData;->setLabelFontSize(I)V

    .line 46
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/waze/view/list/ListMenuAdapter$RowData;

    .end local v0           #rowData:Lcom/waze/view/list/ListMenuAdapter$RowData;
    const-string v1, "Advanced settings"

    const-string v3, "advanced_settings"

    const-string v5, "button_arrow"

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/waze/view/list/ListMenuAdapter$RowData;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .restart local v0       #rowData:Lcom/waze/view/list/ListMenuAdapter$RowData;
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/waze/view/list/ListMenuAdapter$RowData;->setLabelFontSize(I)V

    .line 50
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v6, Lcom/waze/view/list/ListMenuAdapter;

    invoke-direct {v6, p0, v8}, Lcom/waze/view/list/ListMenuAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 54
    .local v6, adapter:Lcom/waze/view/list/ListMenuAdapter;
    const v1, 0x7f090410

    invoke-virtual {p0, v1}, Lcom/waze/view/list/MyListMenu;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/waze/view/list/ListMenu;

    .line 55
    .local v7, listMenu:Lcom/waze/view/list/ListMenu;
    invoke-virtual {v7, v6}, Lcom/waze/view/list/ListMenu;->setAdapter(Lcom/waze/view/list/ListMenuAdapter;)V

    .line 56
    return-void
.end method
