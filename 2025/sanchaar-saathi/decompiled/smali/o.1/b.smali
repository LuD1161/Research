.class public abstract Lo/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lv/g;

.field public c:Lv/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, LL/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LL/b;

    iget-object v1, p0, Lo/b;->b:Lv/g;

    if-nez v1, :cond_0

    new-instance v1, Lv/g;

    invoke-direct {v1}, Lv/g;-><init>()V

    iput-object v1, p0, Lo/b;->b:Lv/g;

    :cond_0
    iget-object v1, p0, Lo/b;->b:Lv/g;

    invoke-virtual {v1, p1}, Lv/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    new-instance p1, Lo/c;

    iget-object v1, p0, Lo/b;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lo/c;-><init>(Landroid/content/Context;LL/b;)V

    iget-object v1, p0, Lo/b;->b:Lv/g;

    invoke-virtual {v1, v0, p1}, Lv/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public final d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 0

    return-object p1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lo/b;->b:Lv/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv/g;->clear()V

    :cond_0
    iget-object v0, p0, Lo/b;->c:Lv/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lv/g;->clear()V

    :cond_1
    return-void
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Lo/b;->b:Lv/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/b;->b:Lv/g;

    invoke-virtual {v1}, Lv/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lo/b;->b:Lv/g;

    invoke-virtual {v1, v0}, Lv/g;->i(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL/b;

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lo/b;->b:Lv/g;

    invoke-virtual {v1, v0}, Lv/g;->k(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g(I)V
    .locals 2

    iget-object v0, p0, Lo/b;->b:Lv/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/b;->b:Lv/g;

    invoke-virtual {v1}, Lv/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lo/b;->b:Lv/g;

    invoke-virtual {v1, v0}, Lv/g;->i(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL/b;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lo/b;->b:Lv/g;

    invoke-virtual {p1, v0}, Lv/g;->k(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
